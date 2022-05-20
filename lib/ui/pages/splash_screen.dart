part of 'pages.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
    final box = GetStorage();
    User _user = User();
    Future.delayed(const Duration(seconds: 5), () {
      print(box.read("token"));
      if (box.read("token") == null) {
        Get.offAll(LoginPage());
      } else {
        providerUser.setUser(User(
            kelas: box.read("kelas"),
            namaLengkap: box.read("namaLengkap"),
            token: box.read("token")));

        print(_user);
        Get.offAll(MainPage());
      }
    });
    return Scaffold(
      body: Center(
        child: Image.asset("assets/logo.png"),
      ),
    );
  }
}
