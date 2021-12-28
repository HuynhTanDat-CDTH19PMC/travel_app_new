import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'dang_ky.dart';

class dangnhap extends StatelessWidget {
  const dangnhap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        body: new Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      constraints: BoxConstraints.expand(),
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
              child: Text(
                "Chào mừng bạn đến với chúng tôi!",
                style: TextStyle(fontSize: 22, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 120, 0, 20),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Tên tài khoản",
                    prefixIcon:
                        Container(width: 50, child: Icon(Icons.person_outline)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
            ),
            TextField(
              style: TextStyle(fontSize: 18, color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Nhập mật khẩu",
                  prefixIcon:
                      Container(width: 50, child: Icon(Icons.lock_outline)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)))),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 30, 0, 40),
                child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => home()));
                      },
                      child: Text(
                        "Đăng nhập",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ))),
            new Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: RichText(
                  text: TextSpan(
                      recognizer: TapGestureRecognizer()..onTap = () {},
                      text: "Quên mật khẩu?",
                      style: TextStyle(color: Colors.black))),
            ),
            new Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: RichText(
                text: TextSpan(
                    text: "Bạn chưa có tài khoản?",
                    children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => dangky()));
                            },
                          text: " Đăng ký",
                          style: TextStyle(
                            color: Colors.blue,
                          ))
                    ]),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

