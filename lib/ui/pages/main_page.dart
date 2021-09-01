part of 'pages.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(""),
            RaisedButton(
                child: Text("SignUp"),
                onPressed: () async {
                  SignInResult result = await AuthServices.signUp(
                      "esesdedev@gmail.com",
                      "devlaper2020",
                      "Reihan Almas H",
                      "Pandaan,Pasuruan,Eastjava,Indonesia");

                  if (result.user == null) {
                    print(result.message);
                  } else {
                    print(result.user.toString());
                  }
                })
          ],
        ),
      ),
    );
  }
}
