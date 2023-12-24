// 🎯 Dart imports:
import 'dart:io';

// 🐦 Flutter imports:
import 'package:flutter/material.dart';

// 📦 Package imports:
import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

/// Enumerates various network-related exceptions that may occur during API requests.
///
/// This class is annotated with the `freezed` package to generate
/// boilerplate code for handling different exception types in a concise manner.
@freezed
abstract class NetworkExceptions with _$NetworkExceptions {
  /// Signals that the request has been cancelled.
  const factory NetworkExceptions.requestCancelled() = RequestCancelled;

  /// Signals an unauthorized request with an associated [reason].
  const factory NetworkExceptions.unauthorizedRequest(String reason) =
      UnauthorizedRequest;

  /// Signals a bad request.
  const factory NetworkExceptions.badRequest() = BadRequest;

  /// Signals that a resource was not found, with an associated [reason].
  const factory NetworkExceptions.notFound(String reason) = NotFound;

  /// Signals that the HTTP method used is not allowed.
  const factory NetworkExceptions.methodNotAllowed() = MethodNotAllowed;

  /// Signals that the request is not acceptable.
  const factory NetworkExceptions.notAcceptable() = NotAcceptable;

  /// Signals a request timeout.
  const factory NetworkExceptions.requestTimeout() = RequestTimeout;

  /// Signals a send timeout.
  const factory NetworkExceptions.sendTimeout() = SendTimeout;

  /// Signals an unprocessable entity with an associated [reason].
  const factory NetworkExceptions.unprocessableEntity(String reason) =
      UnprocessableEntity;

  /// Signals a conflict error.
  const factory NetworkExceptions.conflict() = Conflict;

  /// Signals an internal server error.
  const factory NetworkExceptions.internalServerError() = InternalServerError;

  /// Signals that the requested functionality is not implemented.
  const factory NetworkExceptions.notImplemented() = NotImplemented;

  /// Signals that the service is unavailable.
  const factory NetworkExceptions.serviceUnavailable() = ServiceUnavailable;

  /// Signals that there is no internet connection.
  const factory NetworkExceptions.noInternetConnection() = NoInternetConnection;

  /// Signals a format exception.
  const factory NetworkExceptions.formatException() = FormatException;

  /// Signals an inability to process the data.
  const factory NetworkExceptions.unableToProcess() = UnableToProcess;

  /// Signals a default error with an associated [error] message.
  const factory NetworkExceptions.defaultError(String error) = DefaultError;

  /// Signals an unexpected error.
  const factory NetworkExceptions.unexpectedError() = UnexpectedError;

  /// Handles the HTTP response and returns an appropriate [NetworkExceptions] instance.
  ///
  /// Parameters:
  /// - [response]: The HTTP response.
  static NetworkExceptions handleResponse(Response? response) {
    // List<ErrorModel> listOfErrors =
    //     List.from(response?.data).map((e) => ErrorModel.fromJson(e)).toList();
    // String allErrors = listOfErrors
    //     .map((e) => "${e.field} : ${e.message}  ")
    //     .toString()
    //     .replaceAll("(", "")
    //     .replaceAll(")", "");
    int statusCode = response?.statusCode ?? 0;
    switch (statusCode) {
      // Handle specific status codes and return corresponding exceptions.
      case 400:
      case 401:
      case 403:
        return NetworkExceptions.unauthorizedRequest(
            response!.statusMessage.toString());
      case 404:
        return NetworkExceptions.notFound(response!.statusMessage.toString());
      case 409:
        return const NetworkExceptions.conflict();
      case 408:
        return const NetworkExceptions.requestTimeout();
      case 422:
        return NetworkExceptions.unprocessableEntity(
            response!.statusMessage.toString());
      case 429:
        return const NetworkExceptions.sendTimeout();
      case 500:
        return const NetworkExceptions.internalServerError();
      case 503:
        return const NetworkExceptions.serviceUnavailable();
      default:
        var responseCode = statusCode;
        return NetworkExceptions.defaultError(
          "Received invalid status code: $responseCode",
        );
    }
  }

  /// Converts a Dio exception [error] into an appropriate [NetworkExceptions] instance.
  static NetworkExceptions getDioException(error) {
    // Handle different types of Dio exceptions and return corresponding exceptions.
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioException) {
          switch (error.type) {
            case DioExceptionType.cancel:
              networkExceptions = const NetworkExceptions.requestCancelled();
              break;
            case DioExceptionType.connectionTimeout:
              networkExceptions = const NetworkExceptions.requestTimeout();
              break;
            case DioExceptionType.unknown:
              networkExceptions =
                  const NetworkExceptions.noInternetConnection();
              break;
            case DioExceptionType.receiveTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            case DioExceptionType.badResponse:
              networkExceptions =
                  NetworkExceptions.handleResponse(error.response);
              break;
            case DioExceptionType.sendTimeout:
              networkExceptions = const NetworkExceptions.sendTimeout();
              break;
            default:
              networkExceptions = const NetworkExceptions.sendTimeout();
          }
        } else if (error is SocketException) {
          networkExceptions = const NetworkExceptions.noInternetConnection();
        } else {
          networkExceptions = const NetworkExceptions.unexpectedError();
        }
        return networkExceptions;
      } on FormatException catch (error) {
        debugPrint(error.toString());
        return const NetworkExceptions.formatException();
      } catch (_) {
        return const NetworkExceptions.unexpectedError();
      }
    } else {
      if (error.toString().contains("is not a subtype of")) {
        return const NetworkExceptions.unableToProcess();
      } else {
        return const NetworkExceptions.unexpectedError();
      }
    }
  }

  /// Gets a human-readable error message associated with a [NetworkExceptions] instance.
  static String getErrorMessage(NetworkExceptions networkExceptions) {
    var errorMessage = "";
    // Map each exception type to its corresponding error message.
    networkExceptions.when(notImplemented: () {
      errorMessage = "Not Implemented";
    }, requestCancelled: () {
      errorMessage = "Request Cancelled";
    }, internalServerError: () {
      errorMessage = "Internal Server Error";
    }, notFound: (String reason) {
      errorMessage = reason;
    }, serviceUnavailable: () {
      errorMessage = "Service unavailable";
    }, methodNotAllowed: () {
      errorMessage = "Method not Allowed";
    }, badRequest: () {
      errorMessage = "Bad request";
    }, unauthorizedRequest: (String error) {
      errorMessage = error;
    }, unprocessableEntity: (String error) {
      errorMessage = error;
    }, unexpectedError: () {
      errorMessage = "Unexpected error occurred";
    }, requestTimeout: () {
      errorMessage = "Connection request timeout";
    }, noInternetConnection: () {
      errorMessage = "No internet connection";
    }, conflict: () {
      errorMessage = "Error due to a conflict";
    }, sendTimeout: () {
      errorMessage = "Send timeout in connection with API server";
    }, unableToProcess: () {
      errorMessage = "Unable to process the data";
    }, defaultError: (String error) {
      errorMessage = error;
    }, formatException: () {
      errorMessage = "Unexpected error occurred";
    }, notAcceptable: () {
      errorMessage = "Not acceptable";
    });
    return errorMessage;
  }
}
