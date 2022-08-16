import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:teste_mepoupe_flutter/pages/result_content.dart';
import 'package:teste_mepoupe_flutter/pages/search-content.dart';

class SearchPrincipal extends StatefulWidget {
  const SearchPrincipal({Key? key}) : super(key: key);

  @override
  State<SearchPrincipal> createState() => _SearchPrincipalState();
}

class _SearchPrincipalState extends State<SearchPrincipal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Navigator(
        onGenerateRoute: (settings) {
          Widget page = SearchContent();
          if (settings.name == 'result') page = ResultContent();
          return MaterialPageRoute(builder: (_) => page);
        },
      ),
    );
  }
}
