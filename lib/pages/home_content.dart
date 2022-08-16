import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({Key? key}) : super(key: key);

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Column(
        children: <Widget>[
          Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                top: 0,
                left: 0,
                child: Padding(
                  padding: EdgeInsets.only(left: 32),
                  child: Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Olá,",
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.w500),
                          ),
                          Text("Bem-vindo",
                              style: TextStyle(
                                  fontSize: 27, fontWeight: FontWeight.w600)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  top: 0,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.only(right: 32, top: 15),
                    child: Icon(Icons.menu_outlined),
                  )),
              Positioned(
                  child: Padding(
                      padding: EdgeInsets.only(bottom: 80),
                      child: Center(
                          child: Image.asset("assets/images/home_image.png")))),
              Positioned(
                  bottom: 0,
                  child: CircleAvatar(
                    radius: 100,
                    backgroundColor: Color(0xFF6D51FF),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(bottom: 5, top: 20),
                          child: Image.asset('assets/images/signpost.png'),
                        ),
                        Container(
                          child: Text("525",
                              style: TextStyle(
                                  fontSize: 60,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500)),
                        ),
                        Container(
                          child: Text("CEPs pesquisados",
                              style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400)),
                        )
                      ],
                    ),
                  )),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 30, left: 60, right: 60),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: Row(
                      children: <Widget>[
                        SvgPicture.asset(
                          'assets/images/flag.svg',
                          allowDrawingOutsideViewBox: true,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: Text("CEPs salvos",
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xFF7B61FF),
                                  fontWeight: FontWeight.w600)),
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    radius: 15,
                    backgroundColor: Color(0xFF6D51FF),
                    child: Text("3",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.white,
                            fontWeight: FontWeight.w400)),
                  )
                ]),
          )
        ],
      ),
    );
  }
}
