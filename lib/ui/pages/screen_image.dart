part of 'pages.dart';

class ScreenImage extends StatelessWidget {
  String url;
  ScreenImage(this.url);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            GestureDetector(
              onTap: (){
                Get.back();
              },
              child: Icon(Icons.close, color: Colors.white,size: 40,)),
            Center(
              child: Container(
                child: Image.network("https://eiqro.elites.id/app/" + url),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
