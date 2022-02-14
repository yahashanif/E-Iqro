part of 'pages.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({Key? key}) : super(key: key);

  @override
  _MediaPageState createState() => _MediaPageState();
}

class _MediaPageState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              elevation: 0,
              pinned: true,
              automaticallyImplyLeading: false,
              backgroundColor: Colors.white,
              flexibleSpace: Container(
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 2), // changes position of shadow
                    ),
                  ]),
                  child: Center(
                    child: Text(
                      "Media Arsip",
                      style: TextStyle(fontSize: 18),
                    ),
                  )),
              stretch: true,
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              SizedBox(
                height: 20,
              ),
              Center(
                child: Wrap(
                  crossAxisAlignment: WrapCrossAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Get.to(DetailMediaPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "7 Agustus",
                                  style: TextStyle(color: "0AB6DC".toColor()),
                                )),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/media.png"))),
                            )
                          ],
                        ),
                      ),
                    ), GestureDetector(
                      onTap: (){
                        Get.to(DetailMediaPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "7 Agustus",
                                  style: TextStyle(color: "0AB6DC".toColor()),
                                )),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/media.png"))),
                            )
                          ],
                        ),
                      ),
                    ), GestureDetector(
                      onTap: (){
                        Get.to(DetailMediaPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "7 Agustus",
                                  style: TextStyle(color: "0AB6DC".toColor()),
                                )),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/media.png"))),
                            )
                          ],
                        ),
                      ),
                    ), GestureDetector(
                      onTap: (){
                        Get.to(DetailMediaPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "7 Agustus",
                                  style: TextStyle(color: "0AB6DC".toColor()),
                                )),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/media.png"))),
                            )
                          ],
                        ),
                      ),
                    ), GestureDetector(
                      onTap: (){
                        Get.to(DetailMediaPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "7 Agustus",
                                  style: TextStyle(color: "0AB6DC".toColor()),
                                )),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/media.png"))),
                            )
                          ],
                        ),
                      ),
                    ), GestureDetector(
                      onTap: (){
                        Get.to(DetailMediaPage());
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 1,
                                blurRadius: 10,
                                offset:
                                    Offset(0, 2), // changes position of shadow
                              ),
                            ]),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                        child: Column(
                          children: [
                            Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "7 Agustus",
                                  style: TextStyle(color: "0AB6DC".toColor()),
                                )),
                            SizedBox(
                              height: 14,
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage("assets/media.png"))),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ]))
          ],
        ),
      ),
    );
  }
}
