import 'package:flutter/material.dart';

class Creationpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
            color: Color(0xff018868),
            image: DecorationImage(
              image: AssetImage('assets/background.png'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: Row(
                    children: [
                      Positioned(
                        top: 20,
                        left: 10,
                        child: Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(1),
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.arrow_back,
                                color: Color(0xff018868),
                                size: 20,
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            )),
                      ),
                      const Padding(
                        padding: const EdgeInsets.only(left: 110),
                      ),
                      const Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      const Center(
                        child: Text(
                          "Create Your \n Account",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 40,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Email",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Password",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          suffixIcon: Icon(Icons.visibility_outlined),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        "Re - enter Password",
                        style: TextStyle(color: Colors.white),
                      ),
                      const SizedBox(height: 5),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.transparent,
                          suffixIcon: const Icon(Icons.visibility_off),
                          labelText: 'Enter password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(1),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.all(16),
                            backgroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                          onPressed: () {},
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                color: Color(0xFF018868),
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.only(top: 30),
                      ),
                      Center(
                        child: Column(
                          children: [
                            const Text(
                              "By clicking Sign up you agree to our",
                              style: TextStyle(color: Colors.white),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Terms of Service",
                                style: TextStyle(
                                    color: Colors.white,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(height: 10),
                            const Padding(
                              padding: EdgeInsets.only(top: 200),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: const Text(
                                "Already have an account? Sign in",
                                style: TextStyle(
                                  color: Colors.white,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
