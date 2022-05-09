part of 'pages.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
            child:
                Text("25 Februari 2022", style: TextStyle(color: Colors.red)),
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
                Column(
                  children: moctdata
                      .map(
                        (e) => Container(
                          margin: EdgeInsets.only(bottom: 10),
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          height: 40,
                          decoration: BoxDecoration(
                              color: "676CDE".toColor(),
                              borderRadius: BorderRadius.circular(5)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                e.title!,
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white),
                              ),
                              Text(e.point.toString(),
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white))
                            ],
                          ),
                        ),
                      )
                      .toList(),
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
                  child: Text(
                      "Kurang mau makan karena kenyang\nKurang mau makan karena kenyang\nKurang mau makan karena kenyang\n"),
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
