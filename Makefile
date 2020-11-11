extract_to_arb:
	flutter pub pub run intl_translation:extract_to_arb --locale=messages --output-dir=lib/l10n lib/localizations.dart

generate_from_arb:
	flutter pub pub run intl_translation:generate_from_arb --output-dir=lib/l10n --no-use-deferred-loading lib/localizations.dart lib/l10n/intl_*.arb
