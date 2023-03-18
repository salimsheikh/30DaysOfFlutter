import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
  final imageUrl =
      "https://plugins.infosofttech.com/wp-content/uploads/2014/06/woocommerce-product-variation-report.jpg";
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.purple,
        child: ListView(
          children: const [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                accountName: Text("Salim Shaikh"),
                accountEmail: Text("salim@infosofttech.com"),
                currentAccountPicture: CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage:
                      NetworkImage("http://tineye.com/images/widgets/mona.jpg"),
                ),
              ),
            ),
            ListTile(
              leading: Icon(CupertinoIcons.home, color: Colors.white),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.profile_circled, color: Colors.white),
              title: Text('Profile',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
            ListTile(
              leading:
                  Icon(CupertinoIcons.square_arrow_right, color: Colors.white),
              title: Text('Loggout',
                  textScaleFactor: 1.2, style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
