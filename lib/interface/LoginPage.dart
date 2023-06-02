import 'dart:async';

import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:entry/entry.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:login_estudo/interface/CadastroPage.dart';
import 'package:login_estudo/interface/RecuperarSenha.dart';
import 'package:login_estudo/main.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isHidden = true;
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    setState(() {
      isLoading = true;
    });
    Timer.periodic(const Duration(seconds: 2), (timer) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: App.primary,
          onPressed: () {},
          child: const Icon(FontAwesomeIcons.headphones),
        ),
        backgroundColor: App.primary,
        body: isLoading
            ? Center(
                child: LoadingAnimationWidget.dotsTriangle(
                  color: Colors.white,
                  size: 50,
                ),
              )
            : Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/img/background-img.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: SingleChildScrollView(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SafeArea(
                        child: Entry.offset(
                            duration: const Duration(seconds: 1),
                            child: Container(
                              margin:
                                  const EdgeInsets.fromLTRB(25, 150, 25, 25),
                              child: BlurryContainer(
                                blur: 5,
                                width: MediaQuery.of(context).size.width,
                                elevation: 0,
                                color: Colors.white.withOpacity(0.5),
                                padding: const EdgeInsets.all(15),
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          "Bem vindo",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 18),
                                        ),
                                      ],
                                    ),
                                    const Divider(
                                      height: 15,
                                      color: Colors.transparent,
                                    ),
                                    Form(
                                        child: Column(
                                      children: [
                                        TextFormField(
                                          controller: _user,
                                          decoration: InputDecoration(
                                              prefixIcon: const Icon(
                                                FontAwesomeIcons.at,
                                                color: Colors.black,
                                              ),
                                              labelText: "Email",
                                              labelStyle: const TextStyle(
                                                  color: Colors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.black,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: App.primary,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12))),
                                        ),
                                        const Divider(
                                          height: 15,
                                          color: Colors.transparent,
                                        ),
                                        TextFormField(
                                          controller: _password,
                                          obscureText: isHidden,
                                          decoration: InputDecoration(
                                              prefixIcon: const Icon(
                                                FontAwesomeIcons.lock,
                                                color: Colors.black,
                                              ),
                                              suffixIcon: IconButton(
                                                  onPressed: () {
                                                    setState(() {
                                                      isHidden = !isHidden;
                                                    });
                                                  },
                                                  icon: Icon(
                                                    isHidden
                                                        ? Icons.visibility_off
                                                        : Icons.visibility,
                                                    color: Colors.black,
                                                  )),
                                              labelText: "Senha",
                                              labelStyle: const TextStyle(
                                                  color: Colors.black),
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.black,
                                                      width: 1),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: BorderSide(
                                                      color: App.primary,
                                                      width: 2),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12))),
                                        ),
                                        const Divider(
                                          height: 15,
                                          color: Colors.transparent,
                                        ),
                                        SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: App.primary,
                                              ),
                                              onPressed: () {},
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Text(
                                                    "Entrar",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Icon(FontAwesomeIcons
                                                      .paperPlane)
                                                ],
                                              )),
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const RecuperarSenhaPage(),
                                                      ));
                                                },
                                                child: const Text(
                                                  "Esqueceu sua senha?",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                )),
                                            TextButton(
                                                onPressed: () {
                                                  Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const CadastroPage(),
                                                      ));
                                                },
                                                child: const Text(
                                                  "Cadastre-se aqui",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ))
                                          ],
                                        ),
                                        const Text("ou"),
                                        const Divider(
                                          height: 15,
                                          color: Colors.transparent,
                                        ),
                                        SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.blue,
                                              ),
                                              onPressed: () {},
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    FontAwesomeIcons.facebook,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Entrar com Facebook",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                        const Divider(
                                          height: 15,
                                          color: Colors.transparent,
                                        ),
                                        SizedBox(
                                          width:
                                              MediaQuery.of(context).size.width,
                                          height: 55,
                                          child: ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor: Colors.red,
                                              ),
                                              onPressed: () {},
                                              child: const Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Icon(
                                                    FontAwesomeIcons.google,
                                                  ),
                                                  SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Entrar com Google",
                                                    style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold,
                                                    ),
                                                  ),
                                                ],
                                              )),
                                        ),
                                      ],
                                    ))
                                  ],
                                ),
                              ),
                            )))
                  ],
                ))));
  }
}
