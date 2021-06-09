import 'package:aqui_servicos/app/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    double _deviceWidth = MediaQuery.of(context).size.width;
    double _deviceHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(0, _deviceHeight * 0.1, 0, 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                _deviceWidth * 0.1, 0, _deviceWidth * 0.1, 0),
            child: Image.asset(
              'assets/img/logo.png',
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(
                _deviceWidth * 0.1, 40, _deviceWidth * 0.1, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Color(0xFF474DEB)),
                  textAlign: TextAlign.left,
                )
              ],
            ),
          ),
          Form(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _deviceWidth * 0.1, 16, _deviceWidth * 0.1, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.mail),
                      labelText: 'E-mail ou nome de usuário',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _deviceWidth * 0.1, 8, _deviceWidth * 0.1, 0),
                child: TextFormField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.vpn_key),
                      labelText: 'Senha',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)))),
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: InkWell(
                    onTap: () async {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => HomePage()
                      ));
                    },
                    child: Container(
                      padding: EdgeInsets.only(top: 12, bottom: 12),
                      decoration: BoxDecoration(
                          color: Color(0xFF474DEB),
                          borderRadius: BorderRadius.circular(20)),
                      width: _deviceWidth * 0.8,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Entrar',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold))
                        ],
                      ),
                    ),
                  ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: InkWell(
                  onTap: () async {},
                  child: Container(
                    padding: EdgeInsets.only(top: 12, bottom: 12),
                    decoration: BoxDecoration(
                        color: Color(0xFFAF47EB),
                        borderRadius: BorderRadius.circular(20)),
                    width: _deviceWidth * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Cadastre-se',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(
                    _deviceWidth * 0.1, 67, _deviceWidth * 0.1, 0),
                child: Image.asset(
                  'assets/img/footer.png',
                  width: _deviceWidth,
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
