part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
    User user = providerUser.user;
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          Column(
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
                                child: Image.asset("assets/preview 3.png"))),
                        Container(
                            height: MediaQuery.of(context).size.height / 2.8,
                            child: Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset("assets/preview 3-1.png"))),
                      ],
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 23, 0, 0),
                          child: Text(
                            "HI",
                            style: TextStyle(fontSize: 30),
                          )),
                      Container(
                          margin: EdgeInsets.fromLTRB(10, 13, 0, 22),
                          child: Text(
                            "${user.nama_lengkap}",
                            style: TextStyle(fontSize: 30),
                          )),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          child: TextButton(
                            onPressed: () {},
                            child: Container(
                              margin: EdgeInsets.fromLTRB(45, 0, 45, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Join Meeting",
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                  Icon(
                                    Icons.add,
                                    size: 25,
                                    color: Colors.white,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.symmetric(horizontal: 12),
                        decoration: BoxDecoration(
                            color: Color(0x000000).withOpacity(0.6),
                            borderRadius: BorderRadius.circular(20)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "25 Februari 2022",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      Get.to(ReportMingguan());
                                    },
                                    child: Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ))
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Akademik",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 5,
                                        child: Container(
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF7762F3),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              ((
                                                      /** Data dikali dengan 10 dan dibagi 100 untuk mendapatkan
                                                 * tampilan progres bar 
                                                 * yang di ganti cuman nilai di depan
                                                 */
                                                      8 * 10) /
                                                  100) /
                                              1.5,
                                          // 2
                                        ),
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Center(
                                              child: Text(
                                            "8",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Data 2",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 5,
                                        child: Container(
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF7762F3),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              ((
                                                      /** Data dikali dengan 10 dan dibagi 100 untuk mendapatkan
                                                 * tampilan progres bar 
                                                 * yang di ganti cuman nilai di depan
                                                 */
                                                      7 * 10) /
                                                  100) /
                                              1.5,
                                          // 2
                                        ),
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Center(
                                              child: Text(
                                            "7",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Data 3",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 5,
                                        child: Container(
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF7762F3),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              ((
                                                      /** Data dikali dengan 10 dan dibagi 100 untuk mendapatkan
                                                 * tampilan progres bar 
                                                 * yang di ganti cuman nilai di depan
                                                 */
                                                      6 * 10) /
                                                  100) /
                                              1.5,
                                          // 2
                                        ),
                                      ),
                                      Flexible(
                                          flex: 1,
                                          child: Center(
                                              child: Text(
                                            "6",
                                            style: TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Data 4",
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Flexible(
                                        flex: 5,
                                        child: Container(
                                          height: 22,
                                          decoration: BoxDecoration(
                                              color: Color(0xFF7762F3),
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              ((
                                                      /** Data dikali dengan 10 dan dibagi 100 untuk mendapatkan
                                                 * tampilan progres bar 
                                                 * yang di ganti cuman nilai di depan
                                                 */
                                                      8 * 10) /
                                                  100) /
                                              1.5,
                                          // 2
                                        ),
                                      ),
                                      // ignore: prefer_const_constructors
                                      Flexible(
                                          flex: 1,
                                          // ignore: prefer_const_constructors
                                          child: Center(
                                              // ignore: prefer_const_constructors
                                              child: Text(
                                            "8",
                                            style: const TextStyle(
                                                fontSize: 18,
                                                color: Colors.white),
                                          )))
                                    ],
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Center(
                          child: Container(
                              height: 200,
                              margin: EdgeInsets.symmetric(horizontal: 16),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 17, vertical: 24),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                boxShadow: [BoxShadow()],
                                borderRadius: BorderRadius.circular(20),
                                color: Color(0xFFFFF3F7),
                              ),
                              child: Card(
                                child: GestureDetector(
                                  onTap: (){
                                    Get.to(DetailPage());
                                  },
                                  child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 14),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(18),
                                          gradient: LinearGradient(
                                              begin: Alignment.topCenter,
                                              end: Alignment.bottomCenter,
                                              colors: [
                                                Color(0xFF579CF0),
                                                Color(0xFF69F5F5)
                                              ])),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 65,
                                            width: 65,
                                            decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                color: Colors.white,
                                                image: DecorationImage(
                                                  image: AssetImage(
                                                    "assets/Stuck at Home Working from Home.png",
                                                  ),
                                                  fit: BoxFit.cover,
                                                )),
                                          ),
                                          SizedBox(
                                            width: 16,
                                          ),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Text(
                                                "Deskripsi",
                                                style: TextStyle(
                                                    fontSize: 24,
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold),
                                              ),
                                              Text(
                                                "Describe today's activities",
                                                style: TextStyle(
                                                    fontSize: 13,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          )
                                        ],
                                      )),
                                ),
                              ))),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
