import 'package:flutter/material.dart';
import 'package:flutter_uberfrota/views/Cadastro.dart';
import 'EsqueceuSenha.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerEmail = TextEditingController(); //criação de objeto
  TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Definindo imagem background do fundo do aplicativo
    return Scaffold(
        
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fundo.png"),
            fit: BoxFit
                .cover, //mandando assumir toda área independente do tamanha
          ),
        ),
        padding: const EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                //lista de widget
                Padding(
                  padding: EdgeInsets.only(bottom: 32),
                  child: Image.asset(
                    "images/logo.png",
                    width: 200,
                    height: 150,
                  ),
                ),
                TextField(
                  //CAMPO EMAIL
                  controller:
                      _controllerEmail, //chamada do objeto para armazenar o que foi digitado
                  autofocus: true, //foco inicial, onde o pursor aparece
                  keyboardType: TextInputType
                      .emailAddress, // aqui defini-se a configuração do teclado
                  style: TextStyle(fontSize: 20), // stilo do texto
                  decoration: InputDecoration(
                      //decoração criando formatação do campo de texto layout
                      contentPadding: EdgeInsets.fromLTRB(
                          32, 16, 32, 16), //definição de diametro interno
                      hintText: "E-mail",
                      filled: true, //definindo campo
                      fillColor: Colors.white, //coloração
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5))),
                ),
                TextField(
                  //CAMPO SENHA
                  controller: _controllerSenha,
                  obscureText:
                      true, //definindo que os caracteres não ficarão visiveis .. por ser campo de senha
                  keyboardType: TextInputType.text,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    hintText: "Senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6)),
                  ),
                ),
                Padding(
                  //BOTÃO
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: ElevatedButton(
                      //declaração do botão
                      child: Text(
                        //formatação do botão
                        "Entrar",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      onPressed: () {
                        //evento do botão
                      }),
                ),
                Center(
                  //CADASTRO
                  child: GestureDetector(
                      child: Text(
                        "Não tem conta? Cadastre-se!",
                        style: TextStyle(color: Colors.white, fontSize: 13),
                      ),
                      onTap: () {
                        //detecção de ação das mãos
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                //rota do context
                                builder: (context) => Cadastro()));
                      }),
                ),
                Padding(
                  // Esqueci Senha
                  padding: EdgeInsets.only(top: 16),
                  child: GestureDetector(
                    onTap: () {
                      // Detecção de ação das mãos
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          // Rota do context
                          builder: (context) => EsqueceuSenha(),
                        ),
                      );
                    },
                    child: Center(
                      child: Text(
                        "Esqueci Senha!",
                        style: TextStyle(color: Colors.red, fontSize: 12),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
