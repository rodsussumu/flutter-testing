import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teste_mepoupe_flutter/pages/favorites_content.dart';
import 'package:teste_mepoupe_flutter/pages/home_content.dart';
import 'package:teste_mepoupe_flutter/pages/register_user.dart';
import 'package:teste_mepoupe_flutter/pages/result_content.dart';
import 'package:teste_mepoupe_flutter/pages/search-content.dart';
import 'package:teste_mepoupe_flutter/pages/search_principal_page.dart';
import 'package:teste_mepoupe_flutter/pages/users_content.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedOption = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: IndexedStack(
          index: _selectedOption,
          children: <Widget>[
            HomeContent(),
            RegisterUser(),
            SearchPrincipal(),
            FavoritesContent(),
            UsersContent()
          ],
        ),
        bottomNavigationBar: Container(
          margin: EdgeInsets.only(left: 32, right: 32),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedOption,
            onTap: (option) {
              setState(() {
                _selectedOption = option;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/home_icon.svg'),
                ),
                label: 'Home',
                activeIcon: Container(
                    width: 24,
                    height: 24,
                    child: SvgPicture.asset('assets/icons/home_fill_icon.svg')),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/user_icon.svg'),
                ),
                label: 'Cadastrar',
                activeIcon: Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/user_fill_icon.svg'),
                ),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/signpost_icon.svg'),
                ),
                label: 'Procurar',
                activeIcon: Container(
                  width: 24,
                  height: 24,
                  child:
                      SvgPicture.asset('assets/icons/signpost_fill_icon.svg'),
                ),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/star_icon.svg'),
                ),
                label: 'Favoritos',
                activeIcon: Container(
                  width: 24,
                  height: 24,
                  child: SvgPicture.asset('assets/icons/star_fill_icon.svg'),
                ),
              ),
              BottomNavigationBarItem(
                icon: Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset('assets/icons/heart_icon.svg'),
                ),
                label: 'Usuários',
                activeIcon: Container(
                  width: 25,
                  height: 25,
                  child: SvgPicture.asset('assets/icons/heart_fill_icon.svg'),
                ),
              ),
            ],
            selectedFontSize: 12,
            selectedItemColor: Color(0xFF6D51FF),
          ),
        ),
      ),
    );
  }
}
