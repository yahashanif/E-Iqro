part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                            "Gabriella Gracia M.",
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
                                  onTap: (){
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
                        child: Wrap(
                          crossAxisAlignment: WrapCrossAlignment.center,
                          runSpacing: 20,
                          children: [
                            GestureDetector(
                              onTap: (){
                                Get.to(ListDataDetailPage(title: "Akademik",));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 30),
                                height: 120,
                                width: 120,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(20)),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Akademik"),
                                    Container(
                                      height: 75,
                                      width: 75,
                                      decoration: BoxDecoration(
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  "assets/home_back.png"))),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Data 2"),
                                  Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/Miroodles.png"))),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Data 3"),
                                  Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/ball.png"))),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 30),
                              height: 120,
                              width: 120,
                              decoration: BoxDecoration(
                                  border: Border.all(),
                                  borderRadius: BorderRadius.circular(20)),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Data 4"),
                                  Container(
                                    height: 75,
                                    width: 75,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                "assets/family.png"))),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),SizedBox(
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
