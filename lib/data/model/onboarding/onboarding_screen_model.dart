/// Model representing the content of an onboarding screen.
class OnboardingScreenModel {
  /// Path to the image asset for the onboarding screen.
  final String image;

  /// Title of the onboarding screen.
  final String title;

  /// Description of the onboarding screen.
  final String description;

  /// Page number text for the onboarding screen.
  final String pageNumber;

  /// Constructor for the [OnboardingScreenModel] class.
  ///
  /// Takes [image], [title], [description], and [pageNumber] as required parameters.
  OnboardingScreenModel({
    required this.image,
    required this.title,
    required this.description,
    required this.pageNumber,
  });
}
