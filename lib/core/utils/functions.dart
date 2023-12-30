part of values;

/// A mixin containing global application functions.
mixin GlobalAppFunctions {
  
  /// Sets up an error state and shows an error dialog with the provided [error] message.
  ///
  /// The [error] message is displayed in an AlertDialog with an error icon.
  /// Users can dismiss the dialog by tapping the "Got it" button.
  static void setupErrorState(String error) {
    Navigator.of(NavigatorHelper.navigatorKey.currentContext!).pop();
    showDialog(
      context: NavigatorHelper.navigatorKey.currentContext!,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error.toString(),
          style: Get.textTheme.bodySmall,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(
              'lbl_got_it'.tr,
              style: Get.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
