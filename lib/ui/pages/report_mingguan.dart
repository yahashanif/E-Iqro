part of 'pages.dart';

class ReportMingguan extends StatefulWidget {
  const ReportMingguan({Key? key}) : super(key: key);

  @override
  _ReportMingguanState createState() => _ReportMingguanState();
}

class _ReportMingguanState extends State<ReportMingguan> {
  Services services = Services();
  List<String> listtgl = [
    '25 Februari 2022',
    '7 Juli 2021',
    '7 Juli 2021',
    '7 Juli 2021',
    '7 Juli 2021',
    '7 Juli 2021',
  ];
  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
    User user = providerUser.user;
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
        title: Center(
          child: Text(
            "Report",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: StreamBuilder<List<Kegiatan>>(
            stream: services.getKegiatans(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                    itemCount: services.kegiatan.length,
                    itemBuilder: (BuildContext context, int index) => Container(
                          margin: EdgeInsets.symmetric(
                              horizontal: 24, vertical: 10),
                          padding: EdgeInsets.symmetric(horizontal: 24),
                          height: 40,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                services.kegiatan[services.kegiatan.length-(index+1)].tanggal.toString(),
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                              GestureDetector(
                                onTap: () {
                                  Get.back(
                                      result: services.kegiatan[services.kegiatan.length-(index+1)].tanggal);
                                },
                                child: Icon(
                                  Icons.arrow_forward_ios_sharp,
                                  size: 25,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ));
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }
}
