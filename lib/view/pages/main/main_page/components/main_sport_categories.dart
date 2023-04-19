import 'package:flutter/material.dart';
import 'package:flutter_final_project_practice/view/components/my_button.dart';

class MainSportCategories extends StatelessWidget {
  const MainSportCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      delegate: SliverChildListDelegate([
        _buildSportIcon("assets/images/Tennis.png", "테니스"),
        _buildSportIcon("assets/images/Baseball.png", "야구"),
        _buildSportIcon("assets/images/Bowling.png", "볼링"),
        _buildSportIcon("assets/images/daon.png", "당구"),
        _buildSportIcon("assets/images/Golf.png", "골프"),
        _buildSportIcon("assets/images/Soccer.png", "축구"),
        _buildSportIcon("assets/images/Tabletennis.png", "탁구"),
        _buildSportIcon("assets/images/Basketball.png", "농구"),
      ]),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 0,
        crossAxisSpacing: 15,
      ),
    );
  }

  Column _buildSportIcon(String image, String sportName) {
    return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          MyButton(
            funButton: () {},
            image: image,
          ),
          Text(
            sportName,
            style: const TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
          ),
        ],
      );
  }
}
