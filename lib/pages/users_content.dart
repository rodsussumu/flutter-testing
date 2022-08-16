import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';

class UsersContent extends StatefulWidget {
  const UsersContent({Key? key}) : super(key: key);

  @override
  State<UsersContent> createState() => _UsersContentState();
}

class _UsersContentState extends State<UsersContent> {
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
                              'assets/icons/star_fill_icon.svg'),
                        )),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, top: 20),
              child: Text("Lista de usuários",
                  style: TextStyle(
                      fontSize: 27,
                      color: Color(0xFF7B61FF),
                      fontWeight: FontWeight.w600)),
            ),
            Padding(
              padding: EdgeInsets.only(left: 32, right: 32, top: 20),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Nome do usuário",
                                style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                )),
                            Row(
                              children: [
                                SvgPicture.asset("assets/icons/edit.svg"),
                                Padding(padding: EdgeInsets.only(left: 20)),
                                SvgPicture.asset("assets/icons/trash.svg")
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
            )
          ],
        )))),
      ),
    );
  }
}
