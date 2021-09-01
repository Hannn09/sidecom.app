part of 'pages.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: backgroundColor,
          ),
          SafeArea(
            child: Container(
              color: backgroundColor,
            ),
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.only(top: 35, left: 45, bottom: 45),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: 40,
                      height: 40,
                      margin: EdgeInsets.only(right: 30),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/logo.png'))),
                    ),
                    Text(
                      'Sidecom',
                      style: greenTextStyle.copyWith(fontSize: 24),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 42),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Media Communication &\nConsultasion',
                      style: whiteTextStyle.copyWith(fontSize: 20),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sidecom App for Comunication Sidescript\nwith clients Good App Good Deal',
                      style: whiteTextStyle.copyWith(
                          fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Image.asset('assets/illustration.png'),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 50,
                      child: RaisedButton(
                          color: backgroundColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                              side: BorderSide(color: greenColor, width: 3)),
                          child: Text('Next',
                              style: whiteTextStyle.copyWith(
                                  fontSize: 12, fontWeight: FontWeight.normal)),
                          onPressed: () {
                            context.bloc<PageBloc>().add(GoToLoginPage());
                          }),
                    ),
                    SizedBox(
                      height: 45,
                    ),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
