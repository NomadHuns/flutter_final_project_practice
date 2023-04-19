import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/core/constants/my_colors.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';
import 'package:flutter_final_project_practice/view/pages/main/main_holder/components/main_holder_menu.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class MainHolder extends StatefulWidget {
  const MainHolder({Key? key}) : super(key: key);

  @override
  State<MainHolder> createState() => _MainHolderState();
}

class _MainHolderState extends State<MainHolder> {
  final _pageController = PageController(initialPage: 2);
  int currentIndex = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      bottomNavigationBar: _buildNavigationBar(),
      body: _buildPages(),
    );
  }

  PageView _buildPages() {
    return PageView(
      controller: _pageController,
      onPageChanged: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      children: [
        _page(0),
        _page(1),
        _page(2),
        _page(3),
        _page(4),
      ],
    );
  }

  Widget _page(index) => const Placeholder();

  CurvedNavigationBar _buildNavigationBar() {
    return CurvedNavigationBar(
      backgroundColor: Colors.greenAccent,
      color: kWhiteColor,
      animationDuration: const Duration(milliseconds: 300),
      index: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
          _pageController.animateToPage(index,
              duration: Duration(milliseconds: 200), curve: Curves.easeInOut);
        });
      },
      items: [
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Icon(Icons.map, color: kDarkIconColor),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Icon(Icons.sports_baseball, color: kDarkIconColor),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Image.asset('assets/images/sporting.png', color: kLogoColor),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Icon(Icons.mail, color: kDarkIconColor),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 10),
          child: Icon(Icons.person, color: kDarkIconColor),
        ),
      ],
    );
  }


  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      leading: MyButton(
        funButton: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return MainHolderMenu();
            },
            isScrollControlled: true,
          );
        },
        icon: Icons.menu,
      ),
      actions: [
        MyButton(
          funButton: () {},
          icon: Icons.bookmark,
        ),
      ],
    );
  }
}
