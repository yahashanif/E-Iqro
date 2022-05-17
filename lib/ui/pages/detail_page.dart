part of 'pages.dart';

class DetailPage extends StatefulWidget {
  final String tgl;
  DetailPage(this.tgl);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Services services = Services();
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
        title: Center(
          child: Text(
            "Deskripsi",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 72,
          ),
          SizedBox(
            height: 15,
          ),
          Center(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(20)),
              child: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/home_back.png"))),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Center(
            child: Text(widget.tgl, style: TextStyle(color: Colors.red)),
          ),
          SizedBox(
            height: 60,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Keterangan"),
                    Text("Point", style: TextStyle(color: Colors.blue))
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 200,
                  child: StreamBuilder<List<dynamic>>(
                      stream: services.getKegiatanDatas(widget.tgl),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return ListView.builder(
                            itemCount: ((services.splitted.length) / 2).toInt(),
                            itemBuilder: (context, index) {
                              return Container(
                                margin: EdgeInsets.only(bottom: 10),
                                padding: EdgeInsets.symmetric(horizontal: 10),
                                height: 40,
                                decoration: BoxDecoration(
                                    color: "676CDE".toColor(),
                                    borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Expanded(
                                      flex: 8,
                                      child: Text(
                                        index == 0
                                            ? services.splitted[index]
                                                .toString()
                                                .substring(1)
                                            : services.splitted[index]
                                                .toString()
                                                .substring(3),
                                        style: TextStyle(
                                            fontSize: 15, color: Colors.white),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                          services.splitted[index + 1]
                                              .toString()
                                              .substring(0, 2),
                                          style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.white)),
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
                        ;
                      }),
                ),
                SizedBox(
                  height: 30,
                ),
                Text("Catatan", style: TextStyle(fontSize: 20)),
                SizedBox(
                  height: 13,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(24),
                  decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(5)),
                  child: StreamBuilder<Kegiatan>(
                      stream: services.getKeterangans(widget.tgl),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Text(snapshot.data!.keterangan.toString());
                        } else {
                          return Center(
                            child: CircularProgressIndicator(),
                          );
                        }
                      }),
                ),
                SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class DetailData {
  String? title;
  int? point;

  DetailData({this.title, this.point});
}

List<DetailData> moctdata = [
  DetailData(title: "Membaca", point: 9),
  DetailData(title: "Menulis", point: 7),
  DetailData(title: "Menggambar", point: 10),
  DetailData(title: "Mengarang", point: 6),
];
