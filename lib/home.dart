import 'package:blood_founder/cards.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        drawer: const Drawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          backgroundColor: const Color(0xFFc81d25),
          elevation: 0,
          actions: const [
            Icon(
              Icons.notifications_active,
              color: Colors.white,
            ),
            Padding(padding: EdgeInsets.all(7))
          ],
        ),

        // -------------------------------------- End of the AppBar -------------------------------------------------- //

        // -------------------------------------- BottomNavigationBar -------------------------------------------------- //

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(240, 255, 255, 255),
          selectedItemColor: const Color(0xFFc81d25),
          unselectedItemColor: Colors.grey.withOpacity(.60),
          selectedFontSize: 14,
          unselectedFontSize: 14,
          elevation: 0,
          onTap: (value) {
            // Respond to item press.
          },
          items: const [
            BottomNavigationBarItem(
              label: ('Home'),
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: ('Donors'),
              icon: Icon(Icons.bloodtype_outlined),
            ),
            BottomNavigationBarItem(
              label: ('Places'),
              icon: Icon(Icons.location_on),
            ),
            BottomNavigationBarItem(
              label: ('Profile'),
              icon: Icon(Icons.account_circle_outlined),
            ),
          ],
        ),

        // -------------------------------------- End of the Navigation -------------------------------------------------- //
        // --------------------------------------         UI         -------------------------------------------------- //

        body: SingleChildScrollView(
            child: Column(children: [
          Stack(children: [
            Column(
              children: [
                Container(
                  height: 200,
                  decoration: const BoxDecoration(
                      color: Color(0xFFc81d25),
                      borderRadius: BorderRadius.vertical(
                          top: Radius.zero, bottom: Radius.circular(45))),
                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello, AbdUl Rhman!',
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Donate blood, save lives..',
                    textAlign: TextAlign.right,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ],
              ),
            ),

            // -------------------------------------- End of the UI -------------------------------------------------- //
            // -------------------------------------- SearchBar -------------------------------------------------- //

            Container(
              margin: const EdgeInsets.only(left: 20, right: 20, top: 165),
              child: CupertinoSearchTextField(
                padding: const EdgeInsets.all(15),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 2),
                      )
                    ]),
              ),
            ),
            //),]),
            SizedBox(
              height: 20,
            ),

            // ------------------------- End of the SearchBar ----------------------------------- //
            // -------------------------------------- Cards -------------------------------------------------- //
          ]),
          SizedBox(
            height: 30,
          ),
          UserCards()
        ])));
  }
}
