import 'package:slang/builder/model/enums.dart';
import 'package:slang/builder/model/context_type.dart';
import 'package:slang/builder/model/i18n_locale.dart';
import 'package:slang/builder/model/interface.dart';

/// Config for the generation step (generate dart-content from model)
/// Applies to all locales
class GenerateConfig {
  final String baseName; // name of all i18n files, like strings or messages
  final I18nLocale baseLocale; // defaults to 'en'
  final FallbackStrategy fallbackStrategy;
  final OutputFormat outputFormat;
  final bool localeHandling;
  final bool flutterIntegration;
  final String translateVariable;
  final String enumName;
  final TranslationClassVisibility translationClassVisibility;
  final bool renderFlatMap;
  final bool renderTimestamp;
  final List<ContextType> contexts;
  final List<Interface> interface; // may include more than in build config
  final List<String> imports;

  GenerateConfig({
    required this.baseName,
    required this.baseLocale,
    required this.fallbackStrategy,
    required this.outputFormat,
    required this.localeHandling,
    required this.flutterIntegration,
    required this.translateVariable,
    required this.enumName,
    required this.translationClassVisibility,
    required this.renderFlatMap,
    required this.renderTimestamp,
    required this.contexts,
    required this.interface,
    required this.imports,
  });
}