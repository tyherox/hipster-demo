import 'package:flutter/material.dart';

const SECOND_SCREEN_URL = '/second';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => const LoginScreen(),
          '/app': (context) => const AppHomeScreen(),
          '/register/id': (context) => const RegisterIDScreen(),
          '/register/pwd': (context) => const RegisterPwdScreen(),
          '/register/age': (context) => const RegisterAgeScreen(),
          '/register/spec': (context) => const RegisterSpecScreen(),
          '/register/style': (context) => const RegisterStyleScreen(),
          '/register/finish': (context) => const RegisterFinishScreen()
        });
  }
}

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
      ),
      body: Center(
        child: new Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/id');
            },
            child: const Text('회원가입'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/app');
            },
            child: const Text('로그인'),
          )
        ]),
      ),
    );
  }
}

class RegisterIDScreen extends StatelessWidget {
  const RegisterIDScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ID Screen'),
      ),
      body: Center(
        child: new Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/pwd');
            },
            child: const Text('비밀번호'),
          )
        ]),
      ),
    );
  }
}

class RegisterPwdScreen extends StatelessWidget {
  const RegisterPwdScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Password Screen'),
      ),
      body: Center(
        child: new Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/age');
            },
            child: const Text('나이'),
          )
        ]),
      ),
    );
  }
}

class RegisterAgeScreen extends StatelessWidget {
  const RegisterAgeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Age Screen'),
      ),
      body: Center(
        child: new Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/spec');
            },
            child: const Text('스펙'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/spec');
            },
            child: const Text('건너뛰기'),
          )
        ]),
      ),
    );
  }
}

class RegisterSpecScreen extends StatelessWidget {
  const RegisterSpecScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Spec Screen'),
      ),
      body: Center(
        child: new Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/style');
            },
            child: const Text('스타일'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/style');
            },
            child: const Text('건너뛰기'),
          )
        ]),
      ),
    );
  }
}

class RegisterStyleScreen extends StatelessWidget {
  const RegisterStyleScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Style Screen'),
      ),
      body: Center(
        child: new Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/finish');
            },
            child: const Text('완성'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/register/finish');
            },
            child: const Text('건너뛰기'),
          )
        ]),
      ),
    );
  }
}

class RegisterFinishScreen extends StatelessWidget {
  const RegisterFinishScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finish Screen'),
      ),
      body: Center(
        child: new Column(children: [
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/app');
            },
            child: const Text('완성'),
          )
        ]),
      ),
    );
  }
}

class AppHomeScreen extends StatelessWidget {
  const AppHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Home'),
      ),
      body: Center(
        child: new Column(children: [
          Text('Welcome to Hipster'),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/');
            },
            child: const Text('로그아웃'),
          ),
        ]),
      ),
    );
  }
}
