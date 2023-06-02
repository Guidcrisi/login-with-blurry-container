import 'package:blurrycontainer/blurrycontainer.dart';
import 'package:entry/entry.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:login_estudo/main.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final TextEditingController _nome = TextEditingController();
  final TextEditingController _user = TextEditingController();
  final TextEditingController _password = TextEditingController();
  bool isHidden = true;
  bool isLoading = false;

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
                  color: App.primary,
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
                                    Row(
                                      children: [
                                        IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: const Icon(
                                                FontAwesomeIcons.chevronLeft)),
                                        const Text(
                                          "Cadastrar-se",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold),
                                        )
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
                                          controller: _nome,
                                          decoration: InputDecoration(
                                              prefixIcon: const Icon(
                                                FontAwesomeIcons.idCard,
                                                color: Colors.black,
                                              ),
                                              labelText: "Nome Completo",
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
                                                    "Cadastrar-se",
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
                                        const Divider(
                                          height: 15,
                                          color: Colors.transparent,
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
                                                    "Cadastrar-se com Facebook",
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
                                                    "Cadastrar-se com Google",
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
