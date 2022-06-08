part of 'pages.dart';

class MainPage extends StatefulWidget {
  int? bottomNavBarIndex;
  MainPage({this.bottomNavBarIndex = 0});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController? pageController;

  DateTime? backbuttonpressedTime;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    // print(context.read<AddressCubit>().getAddress(
    //     (context.read<UserCubit>().state as UserLoaded).user.id.toString()));
    _page = widget.bottomNavBarIndex!;
    pageController = PageController(initialPage: _page);
  }

  @override
  Widget build(BuildContext context) {
    ProviderUser providerUser = Provider.of<ProviderUser>(context);
    User user = providerUser.user;
    return Scaffold(
        floatingActionButton: GestureDetector(
          onTap: (){
            Get.to(PageHelp());
          },
          child: Icon(
            Icons.help,
            color: Colors.amber,
            size: 75,
          ),
        ),
        backgroundColor: Colors.white,
        bottomNavigationBar: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: CustomNavbar(
              selectedIndex: widget.bottomNavBarIndex,
              onTap: (index) {
                setState(() {
                  _page = index;
                  pageController!.animateToPage(index,
                      duration: Duration(milliseconds: 50),
                      curve: Curves.bounceInOut);
                });
              },
            )),
        body: PageView(
          controller: pageController,
          onPageChanged: (index) {
            setState(() {
              widget.bottomNavBarIndex = index;
            });

            // setState(() {
            //   final CurvedNavigationBarState? navBarState =
            //       _bottomNavigationKey.currentState;
            //   navBarState!.setPage(index);
            //   _page = index;
            // });
          },
          children: [
            Center(
              child: HomePage(),
            ),
            Center(
              child: MediaPage(),
            ),
            Center(
              child: ProfilePage(),
            ),
          ],
        ));
  }
}
