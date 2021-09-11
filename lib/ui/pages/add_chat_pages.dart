part of 'pages.dart';

class AddChatPages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());

        return;
      },
      child: Scaffold(
        bottomNavigationBar: createCustomBottomNavbar(),
        body: Stack(
          children: [
            Container(
              color: Color(0xFF111111),
            ),
            SafeArea(
              child: Container(
                color: Color(0xFF111111),
              ),
            ),
            ListView(
              children: [
                Container(
                  height: 50,
                  margin:
                      EdgeInsets.only(left: defaultMargin, top: 30, bottom: 30),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: GestureDetector(
                          onTap: () {
                            context.bloc<PageBloc>().add(GoToMainPage());

                            return;
                          },
                          child: Container(
                            width: 33,
                            height: 33,
                            decoration: BoxDecoration(
                              color: Color(0xFF202020),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Icon(Icons.arrow_back_ios_sharp,
                                color: Colors.white, size: 10),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          'Start New Chat',
                          style: whiteTextStyle,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: defaultMargin),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        margin: EdgeInsets.only(bottom: 25),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFF1D1D1D),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      NewChat(),
                      SizedBox(
                        height: 35,
                      ),
                      NewChat(),
                      SizedBox(
                        height: 35,
                      ),
                      NewChat(),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget createCustomBottomNavbar() => Container(
        height: 85,
        decoration: BoxDecoration(
          color: Color(0xFF000000),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: greenColor,
          unselectedItemColor: Color(0xFFE5E5E5),
          backgroundColor: Colors.transparent,
          onTap: (index) {},
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
