import 'package:flutter/material.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('회원 이름'),
            accountEmail: Text('회원 이메일'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            title: Text('Outer'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Top'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Bottom'),
            onTap: () => null,
          ),
          Divider(),
          ListTile(
            title: Text('Settings'),
            onTap: () => null,
          ),
          ListTile(
            title: Text('Policies'),
            onTap: () => null,
          ),
          Divider(),
          Row(
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.facebook)),
            ],
          )
        ],
      ),
    );
  }
}
