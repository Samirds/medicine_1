import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HELLO"),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                final result =
                    showSearch(context: context, delegate: CitySearch());
                print(result);
              },
              icon: Icon(Icons.search)),
        ],
        backgroundColor: Colors.purple,
      ),
      body: Container(
        child: Center(
          child: Text("data"),
        ),
      ),
    );
  }
}

class CitySearch extends SearchDelegate<String> {
  final cities = [
    // all storage
    "Kolkata",
    "Delhi",
    "Mumbai",
    "Chennai",
    "Bengaliru",
  ];

  final citiesSuggestion = [
    // all storage
    "Kolkata",
    "Delhi",
    "Mumbai",
  ];

  @override
  List<Widget>? buildActions(BuildContext context) => [
        IconButton(
            onPressed: () {
              if (query.isEmpty) {
                close(context, null.toString());
              } else {
                query = '';
                showSuggestions(context);
              }
            },
            icon: Icon(Icons.clear))
      ];

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      onPressed: () {
        close(context, null.toString());
      },
      icon: Icon(Icons.arrow_back));

  @override
  Widget buildResults(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_city,
              size: 120,
            ),
            const SizedBox(
              height: 48,
            ),
            Text(
              query,
            ),
            Text(
              query,
            ), //  its the text that worte in search bar
          ],
        ),
      );

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? citiesSuggestion
        : cities.where((city) {
            final cityLower = city.toLowerCase();
            final queryLower = query.toLowerCase();

            return cityLower.startsWith(queryLower);
          }).toList(); //.//toList(); // its for initial suggestions
    return buildSuggestionsSuccess(
        suggestions); // custome fuction used for suggestion
  }

  Widget buildSuggestionsSuccess(List<String> suggestions) => ListView.builder(
      itemCount: suggestions.length,
      itemBuilder: ((context, index) {
        final sugesstions = suggestions[index];
        return ListTile(
          onTap: () {
            query = sugesstions;
            showResults(context);
            //close(context, sugesstions);
          },
          leading: Icon(Icons.location_city),
          title: Text(sugesstions),
        );
      }));
}
