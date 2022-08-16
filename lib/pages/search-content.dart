import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste_mepoupe_flutter/pages/result_content.dart';

class SearchContent extends StatefulWidget {
  const SearchContent({Key? key}) : super(key: key);

  @override
  State<SearchContent> createState() => _SearchContentState();
}

class _SearchContentState extends State<SearchContent> {
  String cep = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF6D51FF),
      body: SafeArea(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const <Widget>[
                          Padding(
                            padding: EdgeInsets.only(left: 40, right: 40),
                            child: Text(
                              "Procurar CEP",
                              style: TextStyle(
                                  fontSize: 27,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image.asset(
                    'assets/images/search.png',
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30),
                  child: Text(
                    "Digite o CEP que você deseja procurar",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 27,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFFFFFFFF)),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 32, right: 32),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        onTap: (() => Navigator.pushNamed(context, 'result')),
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search_outlined),
                          hintText: "Procurar CEP",
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
