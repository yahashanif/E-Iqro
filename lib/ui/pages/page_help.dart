part of 'pages.dart';

class PageHelp extends StatefulWidget {

  @override
  State<PageHelp> createState() => _PageHelpState();
}

class _PageHelpState extends State<PageHelp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        
      ),
      body: Container(
        child: 
        Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 35,
              ),
              Container(
                height: 100,
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black
                    )
                  ],
                ),
                child: Image.asset("assets/android.png")),
                SizedBox(
                  height: 25,
                ),
              Text("Penggunaan Aplikasi",style: TextStyle(fontSize: 20,color: Colors.blue),)
            ],
          ),
        ),
      ),
    );
  }
}