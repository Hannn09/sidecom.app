part of 'pages.dart';

class CallPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 60,
        height: 60,
        margin: EdgeInsets.only(bottom: 25, right: 25),
        child: FloatingActionButton(
          backgroundColor: Color(0xFF35F1CF),
          onPressed: () {},
          child: SizedBox(
            width: 25,
            height: 25,
            child: Image.asset(
              'assets/icon_add_call.png',
            ),
          ),
        ),
      ),
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
          ListView(
            children: [
              SizedBox(height: 200),
              Column(
                children: [
                  Container(
                    width: 80,
                    height: 80,
                    margin: EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                        color: Color(0xFF202020),
                        borderRadius: BorderRadius.circular(16)),
                    child: Center(
                      child: Container(
                        width: 40,
                        height: 40,
                        child: Image.asset('assets/icon_call.png'),
                      ),
                    ),
                  ),
                  Text("No Call History, Let's\nCall Your Friend",
                      textAlign: TextAlign.center,
                      style: greyTextStyle.copyWith(
                          color: Color(0xFF5A5A5A), fontSize: 14))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
