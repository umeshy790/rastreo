import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: Container(
                        height: MediaQuery.of(context).size.height * 0.40,
                        color: Colors.white,
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                  bottomRight: Radius.circular(50))),
                        ))),
                Positioned(
                    bottom: 0,
                    height: MediaQuery.of(context).size.height * 0.60,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                        color: Colors.green,
                        child: Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(50))),
                          child: Form(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Enter email",
                                      border: OutlineInputBorder(),
                                      helperStyle: TextStyle(fontSize: 20.0)),
                                ),
                                SizedBox(height: 16),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      labelText: "Enter password",
                                      border: OutlineInputBorder(),
                                      helperStyle: TextStyle(fontSize: 20.0),
                                      suffixIcon: Icon(Icons.visibility)),
                                ),
                                SizedBox(height: 16),
                                Container(
                                  width: MediaQuery.of(context).size.width,
                                  child: FlatButton(
                                    color: Colors.green,
                                    textColor: Colors.white,
                                    disabledColor: Colors.grey,
                                    padding:
                                        EdgeInsets.only(top: 16, bottom: 16),
                                    onPressed: () {
                                      Navigator.pushNamed(context, '/home');
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(30.0)),
                                    child: Text(
                                      "Sign In",
                                      style: TextStyle(fontSize: 20.0),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )))
              ],
            )));
  }
}
