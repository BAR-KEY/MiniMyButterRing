import 'package:flutter/material.dart';
import 'package:minimybutterring/pages/palette.dart';
import 'package:minimybutterring/pages/signin.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text('회원 이름'),
            accountEmail: const Text('회원 이메일'),
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
            decoration: const BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            title: const Text('Outer'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Top'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Bottom'),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            title: const Text('Settings'),
            onTap: () {},
          ),
          ListTile(
            title: const Text('Policies'),
            onTap: () {},
          ),
          const Divider(),
          Row(
            children: [
              IconButton(
                  onPressed: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (BuildContext buildContext,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return AlertDialog(
                            content: Container(
                                color: Colors.white,
                                width: 200.0,
                                height: 300.0,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const Text(
                                      'Login',
                                      style: TextStyle(fontSize: 30),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text('아직 계정이 없으세요?'),
                                        TextButton(
                                            onPressed: () {
                                              Navigator.push(context,
                                                  MaterialPageRoute(
                                                      builder: (context) {
                                                return const Signin();
                                              }));
                                            },
                                            child: Text('가입하기'))
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    TextFormField(
                                        keyboardType:
                                            TextInputType.emailAddress,
                                        decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.mail,
                                              color: Palette.subColor,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Palette.subColor,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(35))),
                                            hintText: 'Email',
                                            hintStyle: TextStyle(
                                                fontSize: 14,
                                                color: Palette.subColor),
                                            contentPadding: EdgeInsets.all(10),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Palette.subColor,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(35))))),
                                    const SizedBox(
                                      height: 15,
                                    ),
                                    TextFormField(
                                        obscureText: true,
                                        decoration: const InputDecoration(
                                            prefixIcon: Icon(
                                              Icons.lock,
                                              color: Palette.subColor,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Palette.subColor,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(35))),
                                            hintText: 'password',
                                            hintStyle: TextStyle(
                                                fontSize: 14,
                                                color: Palette.subColor),
                                            contentPadding: EdgeInsets.all(10),
                                            focusedBorder: OutlineInputBorder(
                                                borderSide: BorderSide(
                                                  color: Palette.subColor,
                                                ),
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(35))))),
                                  ],
                                )));
                      },
                      barrierDismissible: true,
                      barrierLabel: MaterialLocalizations.of(context)
                          .modalBarrierDismissLabel,
                    );
                  },
                  icon: const Icon(Icons.email)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.facebook)),
            ],
          )
        ],
      ),
    );
  }
}
