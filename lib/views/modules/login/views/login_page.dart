// ignore_for_file: body_might_complete_normally_nullable


import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../stores/login_store/form_store.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isVisible = true;

  FormStore formStore = FormStore();

  @override
  void initState() {
    super.initState();
    formStore.setupValidations();
  }

  @override
  void dispose() {
    formStore.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              'https://static.vecteezy.com/system/resources/previews/002/151/440/original/global-business-network-and-technology-on-blue-background-vector.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 150, top: 150),
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Página de login',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.grey),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        'Entre na sua conta',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 40,
                            color: Colors.grey[300]),
                      ),
                    ),
                    Row(
                      children: [
                        const Text(
                          'Ainda não tem conta?',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey),
                        ),
                        TextButton(
                          onPressed: () {
                            Modular.to.navigate('/register/');
                          },
                          child: const Text(
                            'Registre-se',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        
                        const SizedBox(
                          width: 30,
                        ),
                        
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 6),
                      child: Card(
                        color: Colors.grey.withOpacity(.4),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18)),
                        child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Observer(
                              builder: (_) {
                                return TextField(
                                  onChanged: (email) {
                                    formStore.setEmail(email);
                                  },
                                  style: const TextStyle(color: Colors.white),
                                  decoration: InputDecoration(
                                    errorText: formStore.error.email,
                                      labelText: 'E-mail',
                                      suffixIcon: IconButton(
                                        icon: Icon(
                                          Icons.email,
                                          color: Colors.grey[300],
                                        ),
                                        onPressed: () {},
                                      ),
                                      labelStyle:
                                          TextStyle(color: Colors.grey[300]),
                                      border: InputBorder.none),
                                );
                              },
                            )),
                      ),
                    ),
                    Card(
                      color: Colors.grey.withOpacity(.4),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8),
                        child: TextFormField(
                          onChanged: (password) {
                            formStore.setPassword(password);
                          },
                          style: TextStyle(color: Colors.white),
                          obscureText: isVisible,
                          decoration: InputDecoration(
                            errorText: formStore.error.password,
                              labelText: 'Senha',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  isVisible
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: Colors.grey[300],
                                ),
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                              ),
                              labelStyle: TextStyle(color: Colors.grey[300]),
                              border: InputBorder.none),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  colors: [
                                    Colors.grey[600]!,
                                    Colors.grey[800]!
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Text(
                                'Administrador',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 20),
                        InkWell(
                          onTap: () {
                            Modular.to.navigate('/home/');
                          },
                          child: Container(
                            height: 50,
                            width: 170,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                  colors: [
                                    Colors.lightBlueAccent,
                                    Colors.blueAccent
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight),
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: const Center(
                              child: Text(
                                'Entrar',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Expanded(flex: 2, child: Card())
            ],
          ),
        ),
      ),
    );
  }
}
