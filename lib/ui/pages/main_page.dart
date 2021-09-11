part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int bottomNavbarIndex;
  PageController pageController;

  @override
  void initState() {
    super.initState();

    bottomNavbarIndex = 0;
    pageController = PageController(initialPage: bottomNavbarIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: createCustomBottomNavbar(),
      body: Stack(
        children: [
          Container(
            color: Color(0xFF111111),
          ),
          SafeArea(
            child: Container(
              color: Color(0xFF0B0B0B),
            ),
          ),
          PageView(
            controller: pageController,
            onPageChanged: (index) {
              setState(() {
                bottomNavbarIndex = index;
              });
            },
            children: [
              ChatPages(),
              Center(
                  child: Text(
                "call",
                style: whiteTextStyle,
              )),
              Center(
                  child: Text(
                "calender",
                style: whiteTextStyle,
              ))
            ],
          ),
        ],
      ),
    );
  }

  Widget createCustomBottomNavbar() => Container(
        height: 85,
        decoration: BoxDecoration(
          color: Color(0xFF111111),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          currentIndex: bottomNavbarIndex,
          selectedItemColor: greenColor,
          unselectedItemColor: Color(0xFFE5E5E5),
          backgroundColor: Colors.transparent,
          onTap: (index) {
            setState(() {
              bottomNavbarIndex = index;
              pageController.jumpToPage(index);
            });
          },
          items: [
            BottomNavigationBarItem(
              title: Text(''),
              icon: Container(
                height: 20,
                child: Image.asset('assets/icon_chat_disabled.png'),
              ),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Container(
                height: 20,
                child: Image.asset('assets/icon_vidcall.png'),
              ),
            ),
            BottomNavigationBarItem(
              title: Text(''),
              icon: Container(
                height: 20,
                child: Image.asset('assets/icon_calender.png'),
              ),
            ),
          ],
        ),
      );
}
