// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 12.0),
                Text('DIAMONT'),
              ],
            ),
            SizedBox(height: 120.0),
            TextField(
              controller: _usernameController,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                labelText: "Login",
                labelStyle: TextStyle(
                  fontSize: 20.0,
                ),
                hintText: "Your login",
                hintStyle: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),

            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              style: TextStyle(fontSize: 20.0),
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                filled: true,
                labelText: "Password",
                labelStyle: TextStyle(
                  fontSize: 20.0,
                ),
                hintText: "Your password",
                hintStyle: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            ButtonBar(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Next"),
                  style: ButtonStyle(
                      textStyle: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) =>
                              TextStyle(fontSize: 16.0)),
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (Set<MaterialState> states) => Colors.black54,
                      )),
                ),
                TextButton(
                    onPressed: () {
                      _usernameController.clear();
                      _passwordController.clear();
                    },
                    child: Text("Cancel")),
              ],
            ),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            // TODO: Add button bar (101)
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)
