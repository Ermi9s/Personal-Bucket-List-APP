import 'package:flutter/material.dart';

class Customsearchbar extends SearchDelegate {

    @override
    List<Widget>? buildActions(BuildContext context) {
      return [
        IconButton(
          onPressed: () {
            query = '';
          } , 
          icon: Icon(Icons.clear)
        )
      ];
    }

    @override
    Widget? buildLeading(BuildContext context) {
      return IconButton(
        onPressed: () {
          close(context , null);
        }, 
        icon: Icon(Icons.arrow_back_ios), 
      );
    }

    @override
    Widget buildResults(BuildContext context) {
      return ListView();
    }

    @override
    Widget buildSuggestions(BuildContext context) {
      return ListView();
    }

}