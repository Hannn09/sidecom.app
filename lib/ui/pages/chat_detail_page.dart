part of 'pages.dart';

class DetailChat extends StatefulWidget {
  @override
  _DetailChatState createState() => _DetailChatState();
}

class _DetailChatState extends State<DetailChat> {
  List<ChatModel> messages = [
    ChatModel(messageContent: "Hello gais", messageType: "receiver"),
    ChatModel(messageContent: "Gimans kabsnya ", messageType: "receiver"),
    ChatModel(messageContent: "Biasala, and u", messageType: "sender"),
    ChatModel(messageContent: "Biasala jga", messageType: "receiver"),
    ChatModel(messageContent: "Info push?", messageType: "sender"),
    ChatModel(messageContent: "Rew Dulu la boss!", messageType: "receiver")
  ];

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToMainPage());

        return;
      },
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Color(0xFF111111),
          flexibleSpace: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 35,
                      height: 35,
                      decoration: BoxDecoration(
                        color: Color(0xFF202020),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Icon(Icons.arrow_back_ios,
                          color: Colors.white, size: 10),
                    ),
                  ),
                  SizedBox(width: 50),
                  Container(
                    width: 35,
                    height: 35,
                    margin: EdgeInsets.only(right: 15),
                    child: Image.asset('assets/user_chat.png'),
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Mr Jhonson Pattrick Ash..',
                          style: whiteTextStyle.copyWith(fontSize: 12),
                        ),
                        SizedBox(height: 5),
                        Text(
                          'Client Website',
                          style: whiteTextStyle.copyWith(
                              fontSize: 8, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  IconButton(
                      icon: Container(
                          width: 15,
                          height: 15,
                          child: Image.asset('assets/icon_others.png')),
                      onPressed: () {})
                ],
              ),
            ),
          ),
        ),
        body: Stack(
          children: [
            Container(
              color: Color(0xFF0B0B0B),
            ),
            SafeArea(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/bg_chat.png'),
                      fit: BoxFit.cover),
                ),
              ),
            ),
            ListView.builder(
              itemCount: messages.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.fromLTRB(18, 20, 40, 20),
                  child: Align(
                    alignment: messages[index].messageType == "receiver"
                        ? Alignment.topLeft
                        : Alignment.topRight,
                    child: messages[index].messageType == "receiver"
                        ? Row(
                            children: [
                              Container(
                                width: 35,
                                height: 35,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                    image: AssetImage('assets/user_chat.png'),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(12),
                                      topRight: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                      bottomLeft: Radius.circular(0),
                                    ),
                                    color: Color(0xFF212121)),
                                padding: EdgeInsets.only(
                                    top: 10, left: 15, right: 15, bottom: 20),
                                child: Text(messages[index].messageContent,
                                    style: whiteTextStyle.copyWith(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12)),
                              ),
                            ],
                          )
                        : Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(12),
                                  topRight: Radius.circular(12),
                                  bottomRight: Radius.circular(0),
                                  bottomLeft: Radius.circular(12),
                                ),
                                color: greenColor),
                            padding: EdgeInsets.only(
                                top: 10, left: 15, right: 15, bottom: 20),
                            child: Text(messages[index].messageContent,
                                style: blackTextStyle.copyWith(fontSize: 12)),
                          ),
                  ),
                );
              },
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: EdgeInsets.fromLTRB(15, 10, 10, 10),
                height: 60,
                width: MediaQuery.of(context).size.width - (2 * 25),
                decoration: BoxDecoration(
                  color: Color(0xFF1D1D1D),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 30,
                      width: 30,
                      child: IconButton(
                          icon: Image.asset('assets/icon_folder_add.png'),
                          onPressed: () {}),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(bottom: 8),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "Your Message",
                              hintStyle: whiteTextStyle.copyWith(
                                  color: Color(0xFF6A6A6A),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w300),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      child: RaisedButton(
                          child: Image.asset('assets/icons_send.png'),
                          color: Color(0xFF35F1DB),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8)),
                          onPressed: () {}),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
