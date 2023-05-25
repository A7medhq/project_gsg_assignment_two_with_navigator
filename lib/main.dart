import 'package:flutter/material.dart';

import 'PersonlaInfo.dart';
import 'Search.dart';

void main() => runApp(MainMenu());

class MainMenu extends StatefulWidget {
  const MainMenu({Key? key}) : super(key: key);

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int selectedPage = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          color: Colors.grey[100],
          child: SingleChildScrollView(
            child: Column(
              children: [
                [
                  PersonalInfo(context),
                  Search(context, () {
                    setState(() {
                      selectedPage = 0;
                    });
                  }),
                ].elementAt(selectedPage),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300.withAlpha(50),
                      borderRadius: BorderRadius.circular(48)),
                  padding: EdgeInsets.all(36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedPage = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              selectedPage == 0
                                  ? Icons.person_2_rounded
                                  : Icons.person_2_outlined,
                              size: 50,
                              color: selectedPage == 0
                                  ? Colors.blue
                                  : Colors.grey[400],
                            ),
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: selectedPage == 0
                                  ? Colors.blue
                                  : Colors.grey[400],
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          setState(() {
                            selectedPage = 1;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.search,
                              size: 50,
                              color: selectedPage == 1
                                  ? Colors.blue
                                  : Colors.grey[400],
                            ),
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: selectedPage == 1
                                  ? Colors.blue
                                  : Colors.grey[400],
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        // onTap: () {
                        //   setState(() {
                        //     selectedPage = 2;
                        //   });
                        // },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              Icons.settings_suggest_rounded,
                              size: 50,
                              color: selectedPage == 2
                                  ? Colors.blue
                                  : Colors.grey[400],
                            ),
                            Icon(
                              Icons.circle,
                              size: 10,
                              color: selectedPage == 2
                                  ? Colors.blue
                                  : Colors.grey[400],
                            )
                          ],
                        ),
                      )
                    ],
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
