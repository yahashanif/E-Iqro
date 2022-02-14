part of 'widgets.dart';

class CustomNavbar extends StatefulWidget {
  final int? selectedIndex;
  final Function(int index)? onTap;

  const CustomNavbar({this.selectedIndex, this.onTap});
  @override
  _CustomNavbarState createState() => _CustomNavbarState();
}

class _CustomNavbarState extends State<CustomNavbar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 64,
      width: double.infinity,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          GestureDetector(
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!(0);
              }
            },
            child: Container(
              height: 45,
              child: Image.asset("assets/home.png"))
          ),
          GestureDetector(
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!(1);
              }
            },
            child: Container(
              height: 45,
              child: Image.asset("assets/video.png"))
          ),
          GestureDetector(
            onTap: () {
              if (widget.onTap != null) {
                widget.onTap!(2);
              }
            },
            child:  Container(
              height: 45,
              child: Image.asset("assets/user.png"))
          ),
        ],
      ),
    );
  }
}
