part of 'pages.dart';

class DetailMediaPage extends StatefulWidget {
  Kegiatan data;
  DetailMediaPage(this.data);

  @override
  _DetailMediaPageState createState() => _DetailMediaPageState();
}

class _DetailMediaPageState extends State<DetailMediaPage> {
  @override
  Widget build(BuildContext context) {
    var d = jsonDecode(widget.data.attachment.toString());
    var list = d['data_attachment'] as Map<String, dynamic>;
    print(list.length);
    var asset = [];
    list.forEach((key, value) {
      asset.add(value);
    });

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
            widget.data.tanggal.toString(),
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 20,
          ),
          Center(
            child: Wrap(
              children: [
                ...asset.map((e) {
                  print(e.toString().substring(e.toString().length - 3));
                  if (e.toString().substring(e.toString().length - 3) ==
                      "mp4") {
                    return GestureDetector(
                      onTap: () {
                        Get.to(VideoPlayerItem(videoUrl: e));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Icon(
                            Icons.play_circle,
                            size: 50,
                          ),
                        ),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                      ),
                    );
                  } else {
                    return GestureDetector(
                      onTap: () {
                        Get.to(ScreenImage(e));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            image: DecorationImage(
                                image: NetworkImage(
                                    "https://eiqro.elites.id/app/" + e))),
                        margin:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        padding:
                            EdgeInsets.symmetric(horizontal: 5, vertical: 12),
                        height: 130,
                        width: 130,
                      ),
                    );
                  }
                }).toList(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
