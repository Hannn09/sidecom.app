part of 'pages.dart';

class ChatPages extends StatefulWidget {
  @override
  _ChatPagesState createState() => _ChatPagesState();
}

class _ChatPagesState extends State<ChatPages>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();

    _tabController = TabController(length: 2, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(160),
          child: AppBar(
            backgroundColor: Color(0xFF111111),
            elevation: 0,
            title: Row(
              children: [
                Container(
                  width: 45,
                  height: 45,
                  margin: EdgeInsets.only(left: 20, top: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFF202020),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Container(
                      width: 20,
                      height: 20,
                      child: Image.asset('assets/icon_menu.png'),
                    ),
                  ),
                ),
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(left: 65, right: 15),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/icon_search.png'),
                    ),
                  ),
                ),
                Text('Search Chat',
                    style: greyTextStyle.copyWith(fontSize: 14)),
              ],
            ),
            actions: [
              Container(
                width: 25,
                height: 25,
                margin: EdgeInsets.only(right: 40),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/icon_notif.png'))),
              ),
            ],
            bottom: TabBar(
              indicatorColor: greenColor,
              controller: _tabController,
              tabs: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text('Chat',
                      style: whiteTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Text('Call',
                      style: whiteTextStyle.copyWith(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ],
            ),
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            MessagePage(),
            CallPage(),
          ],
        ));
  }
}
