import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'dang_nhap.dart';
import 'dang_ky.dart';

class quenmatkhau extends StatelessWidget {
  quenmatkhau({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData(color: Colors.blue),
          elevation: 0,
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
          constraints: BoxConstraints.expand(),
          color: Colors.white,
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 6),
              child: Text(
                "Quên mật khẩu!",
                style: TextStyle(fontSize: 22, color: Colors.red),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 60, 0, 20),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                    labelText: "Nhập email",
                    prefixIcon:
                        Container(width: 50, child: Icon(Icons.mail_outline)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(0, 2, 0, 20),
              child: TextField(
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
            ),
            TextField(
              style: TextStyle(fontSize: 18, color: Colors.black),
              obscureText: true,
              decoration: InputDecoration(
                  labelText: "Nhập lại mật khẩu",
                  prefixIcon:
                      Container(width: 50, child: Icon(Icons.lock_outline)),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                      borderRadius: BorderRadius.all(Radius.circular(6)))),
            ),
            Padding(
                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                child: SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: RaisedButton(
                      onPressed: () {},
                      child: Text(
                        "Đổi mật khẩu",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      color: Colors.blue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(6))),
                    ))),
            Container(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
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
                        style: TextStyle(color: Colors.blue))
                  ])),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
              child: RichText(
                  text: TextSpan(
                      text: "Đăng nhập bằng mật khẩu!",
                      children: <TextSpan>[
                    TextSpan(
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => dangnhap()));
                          },
                        text: " Đăng nhập ngay",
                        style: TextStyle(color: Colors.blue))
                  ])),
            )
          ])),
        ));
  }
}
