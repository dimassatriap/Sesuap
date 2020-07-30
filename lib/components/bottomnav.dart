import 'package:flutter/material.dart';
import 'package:pinjemin/assets/fonts/cust_sesuap_icons.dart';
import 'package:pinjemin/assets/fonts/custom_icons.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Theme(
      data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
          canvasColor: Colors.white,
          // sets the active color of the `BottomNavigationBar` if `Brightness` is light
          primaryColor: Color.fromARGB(255, 66, 224, 152),
          textTheme: Theme.of(context).textTheme.copyWith(
              caption: new TextStyle(
                  color: Colors
                      .grey))), // sets the inactive color of the `BottomNavigationBar`
      child: new BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          new BottomNavigationBarItem(
            //icon: Icon(Custom.iconrequest),
            icon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  //center: Alignment.topLeft,
                  //radius: 1,
                  colors: <Color>[
                    Color.fromARGB(255, 59, 178, 184),
                    Color.fromARGB(255, 66, 224, 152),
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child: Icon(CustSesuap.butuh),
            ),
            //icon: new Icon(Icons.dashboard, color: Colors.grey),
            //title: new Text(''),
            title: Text('Kebutuhan'),
          ),
          new BottomNavigationBarItem(
            icon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  //center: Alignment.topLeft,
                  //radius: 1,
                  colors: <Color>[
                    Color.fromARGB(255, 59, 178, 184),
                    Color.fromARGB(255, 66, 224, 152),
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child: Icon(CustSesuap.bantu),
            ),
            title: Text('Bantu'),
          ),
          new BottomNavigationBarItem(
              icon: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return LinearGradient(
                    //center: Alignment.topLeft,
                    //radius: 1,
                    colors: <Color>[
                      Color.fromARGB(255, 59, 178, 184),
                      Color.fromARGB(255, 66, 224, 152),
                    ],
                    tileMode: TileMode.repeated,
                  ).createShader(bounds);
                },
                child: Icon(CustSesuap.partner),
              ),
              title: Text('Partner')),
          new BottomNavigationBarItem(
            icon: ShaderMask(
              shaderCallback: (Rect bounds) {
                return LinearGradient(
                  //center: Alignment.topLeft,
                  //radius: 1,
                  colors: <Color>[
                    Color.fromARGB(255, 59, 178, 184),
                    Color.fromARGB(255, 66, 224, 152),
                  ],
                  tileMode: TileMode.repeated,
                ).createShader(bounds);
              },
              child: Icon(CustSesuap.profil),
            ),
            title: Text('Profil'),
          )
        ],
      ),
    );
  }
}
