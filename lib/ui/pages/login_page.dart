part of 'pages.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: MediaQuery.of(context).size.height / 2.8,
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Image.asset("assets/preview-1.png"))),
                    Container(
                        height: MediaQuery.of(context).size.height / 2.8,
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/preview-2.png"))),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const SizedBox(
                    height: 200,
                  ),
                  const Text(
                    "Log in",
                    style: TextStyle(fontSize: 36),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  // ignore: prefer_const_constructors
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: const TextField(
                      decoration: InputDecoration(
                          hintText: "email@example.com",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "******",
                          enabledBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 3, color: Colors.black),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor:Colors.black),
                    onPressed: () {
                      Get.to(MainPage());
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(80, 10, 80, 10),
                      child: Text(
                        "LOG IN",
                        style: TextStyle(
                          fontSize: 15,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    ));
  }
}
