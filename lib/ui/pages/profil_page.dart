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
  Services services = Services();
  @override
  void initState() {
    services.SpiderHalusName = [];
    services.SpiderKasarName = [];
    if(services.SpiderHalusName.isEmpty){
      setState(() {
        
      });
    }
    // services.getSpiderHalus();
    // services.SpiderHalusvalueBefore;
    // services.SpiderHalusvalueLast;
    setState(() {
    services.getSpiderHalus();
      
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
    User user = providerUser.user;
    const ticks = [2, 4, 6, 8, 10];
    var features = ["AA", "BB", "CC", "DD", "EE"];
    var data1 = [
      services.SpiderHalusvalueBeforefix,
      services.SpiderHalusvalueLastfix,
    ];
    var data2 = [
      services.SpiderKasarvalueBeforefix,
      services.SpiderKasarvalueLastfix,
    ];

    // features = features.sublist(0, numberOfFeatures.floor());
    // data1 = data1
    //     .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
    //     .toList();
    print(data1);
    // data2 = data2
    //     .map((graph) => graph.sublist(0, numberOfFeatures.floor()))
    //     .toList();
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
                          "${user.namaLengkap}",
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
                          Get.offAll(LoginPage());
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
                      "Skema DATA Akademik Motorik Halus",
                      style: TextStyle(fontSize: 18, color: Colors.blue[300]),
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      child: RadarChart.light(

                        ticks: ticks,
                        features: services.SpiderHalusName,
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
                    Text("Latest")
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
                    Text("Before")
                  ],
                ),
              ),
              SizedBox(
                height: 40,
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
                      "Skema DATA Akademik Motorik Kasar",
                      style: TextStyle(fontSize: 18, color: Colors.blue[300]),
                    ),
                    Container(
                      height: 250,
                      width: 250,
                      child: RadarChart.light(
                        ticks: ticks,
                        features: services.SpiderKasarName,
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
                    Text("Latest")
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
                    Text("Before")
                  ],
                ),
              ),
              SizedBox(
                height: 95,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
