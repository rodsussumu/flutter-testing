import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:teste_mepoupe_flutter/components/custom_input.dart';
import 'package:teste_mepoupe_flutter/components/custom_select.dart';
import 'package:teste_mepoupe_flutter/utils/cidades_array.dart';
import 'package:teste_mepoupe_flutter/utils/estados_array.dart';

class RegisterUser extends StatefulWidget {
  const RegisterUser({Key? key}) : super(key: key);

  @override
  State<RegisterUser> createState() => _RegisterUserState();
}

class _RegisterUserState extends State<RegisterUser> {
  String stateChoose = 'SP';
  String cityChoose = 'TESTE';
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0xFFB4A6FF), Color(0xFFFFFFFF)])),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        body: SafeArea(
            child: Container(
                child: SingleChildScrollView(
                    child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.only(left: 32, right: 40),
                        child: Container(
                          height: 37,
                          width: 37,
                          child: SvgPicture.asset(
                              'assets/icons/user_fill_icon.svg'),
                        )),
                  ],
                ),
              ],
            ),
            Padding(
                padding: EdgeInsets.only(left: 32, top: 20),
                child: Text("Cadastro de usuário",
                    style: TextStyle(
                        fontSize: 27,
                        color: Color(0xFF7B61FF),
                        fontWeight: FontWeight.w600))),
            Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                        child: buildInput("Nome", null),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                        child: buildInput("CEP", null),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                        child: buildInput("Logradouro", null),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                        child: buildInput("Número", null),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15, right: 15, top: 30),
                        child: buildInput("Complemento", null),
                      ),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, top: 30),
                          child: CustomSelect(
                            selectName: "Estado",
                            selectController: stateChoose,
                            listOptions: estadosList,
                          )),
                      Padding(
                          padding:
                              EdgeInsets.only(left: 15, right: 15, top: 30),
                          child: CustomSelect(
                            selectName: "Cidade",
                            selectController: cityChoose,
                            listOptions: cidadesList,
                          )),
                      Padding(
                          padding: EdgeInsets.only(
                              left: 15, right: 15, top: 30, bottom: 30),
                          child: Container(
                              child: ElevatedButton(
                            onPressed: (() {}),
                            child: Text("Cadastrar Usuário",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600)),
                            style: ElevatedButton.styleFrom(
                                shape: StadiumBorder(),
                                primary: Color(0xFF6D51FF),
                                minimumSize: Size(296, 48)),
                          )))
                    ],
                  )),
            )
          ],
        )))),
      ),
    );
  }
}
