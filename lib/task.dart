// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';

class Task extends StatelessWidget {
  const Task({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.purple,
      //   title: Text("Login"),
      //   centerTitle: true,
      //   actions: [
      //     ElevatedButton(onPressed: () {}, child: Text("English")),
      //     SizedBox(
      //       width: 10,
      //     ),
      //   ],
      // ),
      body: Container(
        height: size.height,
        width: size.width,
        color: Colors.white,
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              height: size.height * 0.3,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(50),
                  )),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                  ),
                  SizedBox(width: 50),
                  DropdownButton(
                    iconEnabledColor: Colors.white,
                    // Step 3.
                    // value: dropdownValue,
                    // Step 4.
                    hint: Text(
                      "English",
                      style: TextStyle(color: Colors.white),
                    ),
                    items: ['English', 'Hindi', 'Telugu', 'Malayalam']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                    // Step 5.
                    onChanged: (String? newValue) {
                      // setState(() {
                      // dropdownValue = newValue!;
                      // });
                    },
                  ),
                ],
              ),
            ),
            Positioned(
              left: 100,
              top: 150,
              child: CircleAvatar(
                maxRadius: 80,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  maxRadius: 50,
                  backgroundColor: Colors.white,
                  backgroundImage: NetworkImage(
                      "https://media.gettyimages.com/id/899797820/photo/sunset-view-at-shore-temple-complex-with-miniature-shrine-in-mahabalipuram-kanchipuram-tamil.jpg?s=612x612&w=gi&k=20&c=W_K8LT-dkvG1-itk_R1z3tyuTwirjCsIlwxzzxN0UUA="),
                ),
              ),
            ),
            Positioned(
              width: MediaQuery.of(context).size.width - 30,
              left: 15,
              top: 280,
              child: Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                child: Form(
                  child: Padding(
                    padding: EdgeInsets.only(left: 15, right: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.amber,
                              ),
                              hintText: 'Enter Email or Mobile Number',
                              filled: true,
                              fillColor: Colors.grey[200]),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.amber,
                              ),
                              suffixIcon: Icon(
                                Icons.visibility_off_outlined,
                                color: Colors.amber,
                              ),
                              hintText: 'Enter Password',
                              filled: true,
                              fillColor: Colors.grey[200]),
                          obscureText: true,
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 15),
                          alignment: Alignment.center,
                          width: size.width,
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                                fontWeight: FontWeight.bold),
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.indigo),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Text("Forgot Password?")
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                bottom: 20,
                left: 75,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    Text(
                      " Sign Up?",
                      style: TextStyle(color: Colors.indigo, fontSize: 15),
                    ),
                  ],
                ))
          ],
        ),
      ),
      // body: ClipPath(
      //   clipper: customclip(),
      //   child: Container(
      //     height: 250,
      //     width: MediaQuery.of(context).size.width,
      //     // width: double.infinity,
      //     color: Colors.purple,
      //   ),
      // ),
    );
  }
}

class customclip extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(10, size.height - 30);
    path.quadraticBezierTo(30, size.height, size.width / 6, size.height);
    path.quadraticBezierTo(
        size.width / 3, size.height / 2, size.width / 2, size.height);
    path.quadraticBezierTo(
        size.width / 1.2, size.height - 20, size.width, size.height / 2);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}
