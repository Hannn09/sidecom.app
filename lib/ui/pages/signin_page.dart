part of 'pages.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isSignIn = false;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        context.bloc<PageBloc>().add(GoToSplashPage());

        return;
      },
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              color: Color(0xFF0B0B0B),
            ),
            SafeArea(
              child: Container(
                color: Color(0xFF111111),
              ),
            ),
            ListView(
              children: [
                Container(
                  width: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Image.asset('assets/signin_illustration.png'),
                      Padding(
                        padding: const EdgeInsets.only(left: 45),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                height: 40,
                                width: 40,
                                margin: EdgeInsets.only(top: 70, bottom: 40),
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                      'assets/logo.png',
                                    ),
                                  ),
                                )),
                            Text(
                              "Let’s sign you in",
                              style: whiteTextStyle.copyWith(fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text("Welcome back, You’ve\nbeen missed",
                                style: whiteTextStyle.copyWith(
                                    fontWeight: FontWeight.normal))
                          ],
                        ),
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
                        'Email',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextField(
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.normal),
                        onChanged: (text) {
                          setState(() {
                            isEmailValid = EmailValidator.validate(text);
                          });
                        },
                        controller: emailController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFF1D1D1D),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xFF1D1D1D)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      Text(
                        'Password',
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.normal),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      TextField(
                        style: whiteTextStyle.copyWith(
                            fontSize: 12, fontWeight: FontWeight.normal),
                        onChanged: (text) {
                          setState(() {
                            isPasswordValid = text.length >= 12;
                          });
                        },
                        obscureText: true,
                        controller: passwordController,
                        decoration: InputDecoration(
                          fillColor: Color(0xFF1D1D1D),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(color: Color(0xFF1D1D1D)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          child: RaisedButton(
                              elevation: 0,
                              color: greenColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: Text('Login',
                                  style: whiteTextStyle.copyWith(
                                      fontSize: 12,
                                      color: Color(0xFF000000),
                                      fontWeight: FontWeight.normal)),
                              onPressed: () {
                                context
                                    .bloc<PageBloc>()
                                    .add(GoToMainPage()); //   setState(() {
                                //     isSignIn = true;
                                //   });

                                //   SignInResult result =
                                //       await AuthServices.signIn(
                                //           emailController.text,
                                //           passwordController.text);

                                //   if (result.user == null) {
                                //     setState(() {
                                //       isSignIn = false;
                                //     });

                                //     Flushbar(
                                //       duration: Duration(seconds: 4),
                                //       flushbarPosition:
                                //           FlushbarPosition.TOP,
                                //       backgroundColor: Color(0xFFFF5C83),
                                //       message: result.message,
                                //     )..show(context);
                                //   }
                                // }
                                // : null
                              })),
                      SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
