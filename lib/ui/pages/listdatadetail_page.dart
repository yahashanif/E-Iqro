// part of 'pages.dart';

// class ListDataDetailPage extends StatefulWidget {
//   final String? title;

//   ListDataDetailPage({this.title});

//   @override
//   _ListDataDetailPageState createState() => _ListDataDetailPageState();
// }

// class _ListDataDetailPageState extends State<ListDataDetailPage> {
//   List<String> listtgl = [
//     '25 Februari 2022',
//     '7 Juli 2021',
//     '7 Juli 2021',
//     '7 Juli 2021',
//     '7 Juli 2021',
//     '7 Juli 2021',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         leading: IconButton(
//           onPressed: () {
//             Get.back();
//           },
//           icon: Icon(
//             Icons.arrow_back_ios_new_outlined,
//             color: Colors.black,
//           ),
//         ),
//         title: Center(
//           child: Text(
//             widget.title!,
//             style: TextStyle(color: Colors.black),
//           ),
//         ),
//       ),
//       body: ListView(
//         children: [
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//               margin: EdgeInsets.symmetric(horizontal: 24),
//               child: Text(
//                 "Tanggal",
//                 style: TextStyle(color: Colors.blue),
//               )),
//           Column(
//             children: listtgl
//                 .map(
//                   (e) => Container(
//                     margin: EdgeInsets.symmetric(horizontal: 24, vertical: 10),
//                     padding: EdgeInsets.symmetric(horizontal: 24),
//                     height: 40,
//                     decoration: BoxDecoration(
//                         color: "0C1072".toColor(),
//                         borderRadius: BorderRadius.circular(20)),
//                     child: Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           "25 Februari 2022",
//                           style: TextStyle(fontSize: 20, color: Colors.white),
//                         ),
//                         GestureDetector(
//                           onTap: () {
//                             Get.to(DetailPage());
//                           },
//                           child: Icon(
//                             Icons.arrow_forward_ios_sharp,
//                             size: 25,
//                             color: Colors.white,
//                           ),
//                         )
//                       ],
//                     ),
//                   ),
//                 )
//                 .toList(),
//           )
//         ],
//       ),
//     );
//   }
// }
