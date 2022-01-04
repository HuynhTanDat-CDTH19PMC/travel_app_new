import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travel_app/screen/dang_nhap.dart';

class DangKy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.blue),
        elevation: 0,
      ),
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
                  "Vui lòng điền đầy đủ thông tin!",
                  style: TextStyle(fontSize: 22, color: Colors.red),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 80, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Nhập họ tên người dùng",
                      prefixIcon: Container(
                          width: 50, child: Icon(Icons.person_outline)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Nhập email",
                    prefixIcon:
                        Container(width: 50, child: Icon(Icons.mail_outline)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Nhập số điện thoại",
                      prefixIcon: Container(
                          width: 50, child: Icon(Icons.phone_outlined)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
              TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                obscureText: true,
                decoration: InputDecoration(
                    labelText: "Nhập tên tài khoản",
                    prefixIcon:
                        Container(width: 50, child: Icon(Icons.person_outline)),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black, width: 1),
                        borderRadius: BorderRadius.all(Radius.circular(6)))),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.black),
                  decoration: InputDecoration(
                      labelText: "Nhập mật khẩu",
                      prefixIcon:
                          Container(width: 50, child: Icon(Icons.lock_outline)),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.all(Radius.circular(6)))),
                ),
              ),
              Padding(
                  padding: EdgeInsets.fromLTRB(0, 15, 0, 40),
                  child: SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: RaisedButton(
                        onPressed: () {},
                        child: Text(
                          "Đăng ký",
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
                        text: "Bạn đã có tài khoản?",
                        children: <TextSpan>[
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => DangNhap()));
                            },
                          text: " Đăng nhập ngay",
                          style: TextStyle(color: Colors.blue))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
