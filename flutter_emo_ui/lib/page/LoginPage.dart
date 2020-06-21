import 'package:flutter/material.dart';
import 'package:flutter_emo_ui/api_provider/KakaoApiProvider.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => new _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      child: PageView(
        children: <Widget>[loginPageState()],
      ),
    );
  }

  Widget loginPageState() {
    return new Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
        color: Colors.white,
        // image: DecorationImage(
        //   colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.20), BlendMode.dstATop),
        //   image: AssetImage('images/home3.jpg'),
        //   fit: BoxFit.cover,
        // ),
      ),
      child: new Column(
        children: <Widget>[
          // _loginUiBloc.icon(100.0, 30.0, Colors.white),
          // _loginUiBloc.projectName(20.0, 30.0),

          Divider(
            height: 100.0,
          ),
          smallImage(30.0, 30.0),
          line1(context, "가입하세요"),
          Divider(
            height: 50.0,
          ),
          kakaoLoginButton(context, 20.0),
          // _loginUiBloc.button1(context, "SIGN UP", "/SignUp"),
          // _loginUiBloc.button1(context, "LOGIN", "/SignIn")
        ],
      ),
    );
  }
}

Image smallImage(double width, double height) {
  return Image(
    image: new AssetImage("images/main_icon.png"),
    width: width,
    height: height,
    color: null,
    fit: BoxFit.scaleDown,
    alignment: Alignment.center,
  );
}

Container line1(BuildContext context, String word) {
  return Container(
    width: MediaQuery.of(context).size.width,
    margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 20.0),
    alignment: Alignment.center,
    child: Row(
      children: <Widget>[
        new Expanded(
          child: new Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(border: Border.all(width: 0.25)),
          ),
        ),
        Text(
          word,
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
        new Expanded(
          child: new Container(
            margin: EdgeInsets.all(8.0),
            decoration: BoxDecoration(border: Border.all(width: 0.25)),
          ),
        ),
      ],
    ),
  );
}

Container kakaoLoginButton(BuildContext context, double topEdge) {
  // KakaoAuth mkakaoauth = new KakaoAuth();
  KakaoLoginRestapi mkakaologinrestapi = new KakaoLoginRestapi();

  String accountid;
  String accountemail;
  String accesstoken;

  int loginHttpState;

  return Container(
    width: MediaQuery.of(context).size.width,
    margin: EdgeInsets.only(left: 30.0, right: 30.0, top: topEdge),
    child: new Row(
      children: <Widget>[
        new Expanded(
          child: new Container(
            margin: EdgeInsets.only(right: 8.0),
            alignment: Alignment.center,
            child: new Row(
              children: <Widget>[
                new Expanded(
                  child: new FlatButton(
                    padding: EdgeInsets.only(
                      top: 5.0,
                      bottom: 5.0,
                    ),
                    child: Image.asset(
                        'images/kakao_account_login_btn_medium_wide.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    ),
  );
}
