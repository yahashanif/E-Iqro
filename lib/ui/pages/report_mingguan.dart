part of 'pages.dart';

class ReportMingguan extends StatefulWidget {
  const ReportMingguan({Key? key}) : super(key: key);

  @override
  _ReportMingguanState createState() => _ReportMingguanState();
}

class _ReportMingguanState extends State<ReportMingguan> {
  List<String> listtgl =[
    '25 Februari 2022',
    '7 Juli 2021',
    '7 Juli 2021',
    '7 Juli 2021',
    '7 Juli 2021',
    '7 Juli 2021',

  ]; 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Get.back();
          },
          icon: Icon(Icons.arrow_back_ios_new_outlined,color: Colors.black,),
        ),
        title: Center(
          child: Text(
            "Report Mingguan",
            style: TextStyle(color: Colors.black),
          ),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "25 Februari 2022",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.back(result: "Data Kembalian ke home");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
           Column(
             children: listtgl.map((e) =>  Container(
              margin: EdgeInsets.symmetric(horizontal: 24,vertical: 10),
              padding: EdgeInsets.symmetric(horizontal: 24),
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.black, borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                   e,
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  GestureDetector(
                    onTap: (){
                      Get.back(result: "Data Kembalian ke home");
                    },
                    child: Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 25,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),).toList(),
           )
           
          ],
        ),
      ),
    );
  }
}
