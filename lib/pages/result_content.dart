import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ResultContent extends StatefulWidget {
  const ResultContent({Key? key}) : super(key: key);

  @override
  State<ResultContent> createState() => _ResultContentState();
}

class _ResultContentState extends State<ResultContent> {
  String cep = '';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    int _selectedOption = 0;

    return Scaffold(
      backgroundColor: const Color(0xFF6D51FF),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Flexible(
                flex: 40,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
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
                        padding: EdgeInsets.fromLTRB(32, 0, 32, 20),
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50)),
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: TextField(
                              onChanged: ((value) => setState(() {
                                    cep = value;
                                  })),
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.search_outlined),
                                hintText: "Procurar CEP",
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
            Flexible(
              flex: 75,
              child: Container(
                width: double.infinity,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.fromLTRB(32, 0, 32, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Endereço",
                              style: TextStyle(
                                fontSize: 19,
                                color: Color(0xFF6D51FF),
                                fontWeight: FontWeight.w500,
                              )),
                          SvgPicture.asset("assets/icons/copy.svg")
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Text(
                          "Rua Indaial - até 583 - Itajaí SC - CEP 88303-301",
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                        child: Container(
                          child: ElevatedButton(
                            onPressed: (() {}),
                            child: Wrap(
                              children: [
                                SvgPicture.asset("assets/icons/star_icon.svg"),
                                SizedBox(
                                  width: 10,
                                ),
                                Text("Adicionar aos favoritos",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600)),
                              ],
                            ),
                            style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                primary: Color(0xFF2E179D),
                                minimumSize: Size(296, 48)),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
