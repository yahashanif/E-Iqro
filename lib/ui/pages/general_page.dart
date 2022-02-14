part of 'pages.dart';

class GeneralPage extends StatelessWidget {
  final String title;
  final Function? onBackButtonPressed;
  final Widget? child;
  final Color? color;

  GeneralPage(
      {this.title = "Title", this.onBackButtonPressed, this.child, this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: ListView(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    children: [
                      Flexible(
                          flex: 1,
                          child: GestureDetector(
                              onTap: () {
                                onBackButtonPressed!();
                              },
                              child: Icon(
                                Icons.arrow_back_ios_rounded,
                                size: 25,
                              ))),
                      Flexible(
                          flex: 6,
                          child: Center(
                              child: Text(
                            title,
                            style: TextStyle(fontSize: 20),
                          )))
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(
              height: 10,
            ),
            child ?? SizedBox()
          ],
        ),
      ],
    )));
  }
}
