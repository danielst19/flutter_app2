import 'package:flutter/material.dart';
import 'package:flutter_app_4/src/bloc/login_bloc.dart';
import 'package:flutter_app_4/src/providers/login_provider.dart';
import 'package:flutter_app_4/src/services/login_service.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _service = LoginService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Colors.grey[200],
        child: Stack(
          children: [
            _header(),
            _login(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        child: Icon(
          Icons.fingerprint,
          size: 42,
          color: Colors.white,
        ),
        onPressed: () {
          _showSimpleModalDialog(context);
        },
      ),
    );
  }

  Widget _login() {
    final bloc = Provider.of(context);
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          SafeArea(
            child: Container(
              height: size.height * 0.35,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0, 5.0),
                  blurRadius: 15.0,
                  spreadRadius: 1.0,
                ),
              ]
            ),
            width: size.width * 0.8,
            padding: EdgeInsets.all(25.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Iniciar sesión',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  _createEmailInput(bloc),
                  SizedBox(
                    height: 15,
                  ),
                  _createPasswordInput(bloc),
                  SizedBox(
                    height: 15,
                  ),
                  FlatButton.icon(
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.grey,
                    icon: Icon(
                      Icons.login,
                      color: Colors.white,
                    ),
                    label: Text(
                      'Ingresar',
                      style: TextStyle(color: Colors.white, fontSize: 21),
                    ),
                    onPressed: () {
                      _handleLogin(bloc);
                    }
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createEmailInput(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.emailStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextField(
          keyboardType: TextInputType.emailAddress,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Ingrese email',
            suffixIcon: Icon(Icons.mail_outline),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            errorText: snapshot.error
          ),
          onChanged: bloc.changeEmail,
        );
      },
    );
  }

  Widget _createPasswordInput(LoginBloc bloc) {
    return StreamBuilder(
      stream: bloc.passwordStream,
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        return TextField(
          obscureText: true,
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            labelText: 'Password',
            suffixIcon: Icon(Icons.lock_outline),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
            errorText: snapshot.error
          ),
          onChanged: bloc.changePassword,
        );
      },
    );
  }

  Widget _header() {
    final size = MediaQuery.of(context).size;

    final background = Container(
      height: size.height * 0.5,
      color: Colors.green,
    );

    final background2 = Container(
      margin: EdgeInsets.only(top: 60),
      child: Center(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(
                'https://e00-marca.uecdn.es/assets/multimedia/imagenes/2020/06/04/15912219730543.jpg'
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Personal Soft',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontWeight: FontWeight.bold
              ),
            )
          ],
        ),
      ),
    );

    return Stack(
      children: [background, background2],
    );
  }

  _showSimpleModalDialog(context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (builder) {
        return Container(
          height: 250,
          padding: EdgeInsets.all(10),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: new BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0, // has the effect of softening the shadow
                spreadRadius: 0.0, // has the effect of extending the shadow
              )
            ],
          ),
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 10),
                    child: Text(
                      "Huella Digital",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.black87
                      ),
                    ),
                  ),
                  ElevatedButton(
                    child: const Text('Cancelar'),
                    onPressed: () => Navigator.pop(context),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, right: 5),
                    child: FlatButton(
                      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "Cancelar",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff999999),
                        ),
                      ),
                    )
                  ),
                ],
              ),
              SizedBox(height: 5),
              Container(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                decoration: BoxDecoration(
                  border: Border(
                    top: BorderSide(
                      color: const Color(0xfff8f8f8),
                      width: 1,
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      textAlign: TextAlign.justify,
                      text: TextSpan(
                        text: "Por favor coloque la huella sobre el lector para continuar.",
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: Colors.black,
                          wordSpacing: 1
                        )
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              )
            ],
          ),
        );
      }
    );
  }

  void _handleLogin(LoginBloc bloc) async {
    await _service.login(
      bloc.email,
      bloc.password
    );
  }
}
