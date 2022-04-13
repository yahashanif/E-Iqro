part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool darkMode = false;
  bool useSides = false;
  double numberOfFeatures = 5;

  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
    User user = providerUser.user;
    const ticks = [2, 4, 6, 8, 10];
    var features = ["AA", "BB", "CC", "DD", "EE"];
    var data1 = [
      [1, 3, 4, 8, 9],
      [10, 2, 4, 4, 9],
    ];
    var data2 = [
      [3, 8, 5, 8, 10],
      [10, 2, 4, 4, 9],
    ];

    features = features.sublist(0, numberOfFeatures.floor());
    data1 = data1
        .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
        .toList();
    data2 = data2
        .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
        .toList();
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: <Widget>[
              SizedBox(
                height: 5,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: double.infinity,
                padding: EdgeInsets.symmetric(horizontal: 25),
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${user.nama_lengkap}",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "Kelas TK A ",
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ],
                    ),
                    GestureDetector(
                        onTap: () {
                          /**
                         * Function Log Out
                         */
                        },
                        child: Icon(
                          Icons.login,
                          color: Colors.white,
                          size: 35,
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 12), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Skema DATA  Akademik",
                      style: TextStyle(fontSize: 18, color: Colors.blue[300]),
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      child: RadarChart.dark(
                        ticks: ticks,
                        features: ["AA", "BB", "CC", "DD", "EE", "FF"],
                        data: data1,
                        reverseAxis: true,
                        useSides: true,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Text("Keterangan")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Text("Keterangan")
                  ],
                ),
              ),
              SizedBox(
                height: 95,
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 10,
                      offset: Offset(0, 12), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Text(
                      "Skema DATA Motorik",
                      style: TextStyle(fontSize: 18, color: Colors.blue[300]),
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      child: RadarChart.dark(
                        ticks: ticks,
                        features: ["AA", "BB", "CC", "DD", "EE", "FF"],
                        data: data2,
                        reverseAxis: true,
                        useSides: true,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: Colors.green,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Text("Keterangan")
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    Container(
                      height: 20,
                      width: MediaQuery.of(context).size.width / 3,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(15)),
                    ),
                    SizedBox(
                      width: 33,
                    ),
                    Text("Keterangan")
                  ],
                ),
              ),
              SizedBox(
                height: 100,
              )
            ],
          ),
        ),
      ),
    );
  }
}
