import 'package:amatrider/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:search_page/search_page.dart';

class MaterialFullSearch<T> extends SearchPage<T> {
  final List<T> recentSearches;
  final Widget hint;

  MaterialFullSearch({
    this.hint = const SizedBox.shrink(),
    this.recentSearches = const [],
    Widget failure = const SizedBox.shrink(),
    required Widget Function(T) builder,
    required List<String?> Function(T) filter,
    required List<T> items,
    void Function(String)? onQueryUpdate,
    bool showItemsOnEmpty = false,
    String? searchLabel,
    ThemeData? theme,
    TextStyle? style,
    bool itemStartsWith = false,
    bool itemEndsWith = false,
  }) : super(
          suggestion: hint,
          failure: failure,
          builder: builder,
          filter: filter,
          items: items,
          onQueryUpdate: onQueryUpdate,
          showItemsOnEmpty: showItemsOnEmpty,
          barTheme: theme,
          searchStyle: TextStyle(
            fontSize: 16.sp,
            color: App.resolveColor(Palette.text100, dark: Palette.text100Dark),
          ).merge(style),
          searchLabel: searchLabel,
          itemStartsWith: itemStartsWith,
          itemEndsWith: itemEndsWith,
        );

  @override
  Widget buildSuggestions(BuildContext context) {
    // Deletes possible blank spaces & converts the string to lower case
    final cleanQuery = query.toLowerCase().trim();

    // Using the [filter] method, filters through the [items] list
    // in order to select matching items
    final result = items
        .where(
          // First we collect all [String] representation of each [item]
          (item) => filter(item)
              // Then, transforms all results to lower case letters
              .map((value) => value?.toLowerCase().trim())
              // Finally, checks whether any coincide with the cleaned query
              // Checks whether the [startsWith] or [endsWith] are 'true'
              .any(
            (value) {
              if (itemStartsWith == true && itemEndsWith == true) {
                return value == cleanQuery;
              } else if (itemStartsWith == true) {
                return value?.startsWith(cleanQuery) == true;
              } else if (itemEndsWith == true) {
                return value?.endsWith(cleanQuery) == true;
              } else {
                return value?.contains(cleanQuery) == true;
              }
            },
          ),
        )
        .toList();

    // Builds a list with all filtered items
    // if query and result list are not empty
    return cleanQuery.isEmpty && !showItemsOnEmpty
        ? recentSearches.isEmpty
            ? hint
            : ListView(children: recentSearches.map(builder).toList())
        : result.isEmpty
            ? failure
            : ListView(children: result.map(builder).toList());
  }
}
