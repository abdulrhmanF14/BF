import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/src/painting/alignment.dart';

class UserCards extends StatefulWidget {
  const UserCards({Key? key}) : super(key: key);

  @override
  State<UserCards> createState() => _UserCardsState();
}

class _UserCardsState extends State<UserCards> {
  PageController pageController = PageController(viewportFraction: 0.85);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController,
          itemCount: 3,
          itemBuilder: (context, position) {
            return _buildPageItem(position);
          }),
    );
  }

  Widget _buildPageItem(int index) {
    return Stack(alignment: Alignment.topCenter, children: <Widget>[
      Container(
        margin: const EdgeInsets.only(top: 30),
        width: double.infinity,
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: const Color(0xFFedf2f4),
          child: Container(
              height: 220,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const FractionalTranslation(
                    translation: Offset(0.0, -0.4),
                    child: Align(
                      child: CircleAvatar(
                        backgroundImage: AssetImage('images/bedo.jpg'),
                        radius: 40,
                      ),
                    ),
                  ),
                ],
              )),
        ),
      ),
    ]);
  }
}
