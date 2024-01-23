import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _showPassword = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(30),
          child: Column(
            children: [
              SizedBox(
                height: 250,
                child: Image.asset('images/katchau-logo.png'),
              ),
              const SizedBox(height: 50),
              TextField(
                autofocus: false,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Usuário',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)),
                  hintText: "Informe o usuário",
                ),
              ),
              const SizedBox(height: 15),
              TextField(
                obscureText: _showPassword == false ? true : false,
                autofocus: false,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    labelText: 'Senha',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20)),
                    hintText: "Informe a senha",
                    suffixIcon: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: GestureDetector(
                        child: Icon(
                          _showPassword == false
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: Colors.grey,
                        ),
                        onTap: () {
                          setState(() {
                            _showPassword = !_showPassword;
                          });
                        },
                      ),
                    )),
              ),
              const SizedBox(height: 50),
              Container(
                height: 60,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      stops: [0.3, 1],
                      colors: [
                        Color(0xFFC78853),
                        Color(0xFFC78853),
                      ],
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    )),
                child: SizedBox.expand(
                  child: TextButton(
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Entrar",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    onPressed: () {
                      // Provider.of<AuthProvider>(context, listen: false)
                      //     .authenticate('root@engetech.com', ?'password');
                      // Navigator.pushReplacementNamed(context, '/selectProject');
                      Navigator.pushNamed(context, '/dadosDaCarga');
                    },
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "Fale conosco!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16,
                  color: Color(0xFF864622),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
