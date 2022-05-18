part of 'pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Services services = Services();
  String? link;

  @override
  void initState() {
    services.splitted = [];
    super.initState();
  }

  DateTime? date;
  String? tgl;
  String? formattedDate;
  void _navigationReport(BuildContext context) async {
    formattedDate = await Get.to(() => ReportMingguan());
    if (formattedDate != null) {
      setState(() {});
      print(formattedDate); // call your own function here to refresh screen
    }
  }

  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
    User user = providerUser.user;
    if (formattedDate == null) {
      date = DateTime.now();
      tgl = formattedDate;
      formattedDate = DateFormat('yyyy-MM-dd').format(date!);
    }
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
                            "${user.namaLengkap}",
                            style: TextStyle(fontSize: 30),
                          )),
                      Center(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(20)),
                          margin: EdgeInsets.symmetric(horizontal: 60),
                          child: TextButton(
                            onPressed: () {
                              services.getMeet();
                            },
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
                                    Icons.arrow_forward_ios,
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
                                  "$formattedDate",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 18),
                                ),
                                GestureDetector(
                                    onTap: () {
                                      _navigationReport(context);
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
                              height: 300,
                              child: StreamBuilder<List<dynamic>>(
                                  stream: services.getKegiatanDatas(
                                      formattedDate.toString()),
                                  builder: (context, snapshot) {
                                    if (snapshot.hasData) {
                                      return ListView.builder(
                                        itemCount: ((services.splitted.length))
                                                .toInt() -
                                            1,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          print(services.splitted[index]
                                              .toString()
                                              .substring(0, 2));
                                          // Text(services.kegiatan.length.toString())
                                          return Container(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  index == 0
                                                      ? services.splitted[index]
                                                          .toString()
                                                          .substring(1)
                                                      : services.splitted[index]
                                                          .toString()
                                                          .substring(3),
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      color: Colors.white),
                                                ),
                                                SizedBox(
                                                  height: 3,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Flexible(
                                                      flex: 5,
                                                      child: Container(
                                                        height: 22,
                                                        decoration: BoxDecoration(
                                                            color: Color(
                                                                0xFF7762F3),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30)),
                                                        width: MediaQuery.of(
                                                                    context)
                                                                .size
                                                                .width *
                                                            ((
                                                                    /** Data dikali dengan 10 dan dibagi 100 untuk mendapatkan
                                                   * tampilan progres bar 
                                                   * yang di ganti cuman nilai di depan
                                                   */
                                                                    (services.splitted.length.toInt() -
                                                                                1) ==
                                                                            index
                                                                        ? services
                                                                            .splitted[
                                                                                index]
                                                                            .toString()
                                                                            .substring(0,
                                                                                2)
                                                                            .toDouble()!
                                                                        : services.splitted[index + 1].toString().substring(0, 2).toDouble()! *
                                                                            10) /
                                                                100) /
                                                            1.5,
                                                        // 2
                                                      ),
                                                    ),
                                                    Flexible(
                                                        flex: 1,
                                                        child: Center(
                                                            child: Text(
                                                          (services.splitted
                                                                          .length
                                                                          .toInt() -
                                                                      1) ==
                                                                  index
                                                              ? services
                                                                      .splitted[
                                                                  index]
                                                              : services
                                                                  .splitted[
                                                                      index + 1]
                                                                  .toString()
                                                                  .substring(
                                                                      0, 2),
                                                          style: TextStyle(
                                                              fontSize: 18,
                                                              color:
                                                                  Colors.white),
                                                        )))
                                                  ],
                                                ),
                                                SizedBox(
                                                  height: 10,
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      );
                                    } else {
                                      return Center(
                                        child: CircularProgressIndicator(),
                                      );
                                    }
                                  }),
                            )
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
                                  onTap: () {
                                    Get.to(
                                        DetailPage(formattedDate.toString()));
                                  },
                                  child: Container(
                                      padding:
                                          EdgeInsets.symmetric(horizontal: 14),
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(18),
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
                                                    fontWeight:
                                                        FontWeight.bold),
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
