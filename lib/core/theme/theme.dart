/// The `app_theme` library provides theme configurations and common theme components for the application.
library app_theme;

import 'package:flutter/material.dart';
import 'package:stylish_ecommerce/core/utils/values.dart';


/// This part of the library includes the light theme configuration.
/// It defines the color scheme, typography, and other visual elements for the light theme.
/// See [LightTheme] for more details.
part 'light_theme.dart';

/// This part of the library includes common theme components used across different themes.
/// These components include buttons, text styles, page transitions, etc.
/// See [CommonComponentsTheme] for more details.
part 'common_theme_components/common_theme.dart';

/// This part of the library includes different divider themes used in the application.
/// See [DividerThemes] for more details.
part 'common_theme_components/divider_themes.dart';

/// This part of the library includes custom page transition animations.
/// See [PageTransitionsThemes] for more details.
part 'common_theme_components/page_transitions.dart';

/// This part of the library includes the theme configuration for radio buttons.
/// See [RadioTheme] for more details.
part 'common_theme_components/radio_theme.dart';

/// This part of the library includes common text theme configurations.
/// See [TextThemes] for more details.
part 'common_theme_components/text_common_theme.dart';

/// This part of the library includes the theme configuration for elevated buttons.
/// See [ElevatedButtonTheme] for more details.
part 'common_theme_components/elevated_button_theme.dart';

/// This part of the library includes the theme configuration for outlined buttons.
/// See [OutlinedButtonTheme] for more details.
part 'common_theme_components/outlined_button_theme.dart';

/// This part of the library includes the theme configuration for floating action buttons.
/// See [FloatingActionButtonTheme] for more details.
part 'common_theme_components/floating_action_button_theme.dart';
