part of 'pages.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    TextEditingController noTelpController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
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
                            child: Image.asset("assets/login_atas.png"))),
                    Container(
                        height: MediaQuery.of(context).size.height / 2.8,
                        child: Align(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/login_bawah.png"))),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    child: TextField(
                      controller: noTelpController,
                      decoration: InputDecoration(
                          hintText: "No Telp",
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
                    child: TextField(
                      controller: passwordController,
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
                    style: TextButton.styleFrom(backgroundColor: Colors.black),
                    onPressed: () {
                      providerUser.getUSer(
                          noTelpController.text, passwordController.text);
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
