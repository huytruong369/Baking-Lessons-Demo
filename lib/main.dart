import 'package:banking_lessons_app/contants.dart';
import 'package:banking_lessons_app/signin_screen.dart';
import 'package:banking_lessons_app/signup_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auth Screen',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme: const TextTheme(
          button: TextStyle(
            color: kPrimaryColor,
          ),
          headline3: TextStyle(
            color: Colors.white,
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
          headline6: TextStyle(
            color: Colors.white,
            fontSize: 23,
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white.withOpacity(.3),
            ),
          ),
        ),
      ),
      home: const WelcomeScreen(),
      routes: {
        '/welcome_screen/': (context) => const WelcomeScreen(),
        '/signin_screen/': (context) => const SignInScreen(),
        '/signup_screen/': (context) => const SignUpScreen(),
      },
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'assets/perosn.jpeg',
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'BAKING LESSONS\n',
                        style: Theme.of(context).textTheme.headline3,
                      ),
                      TextSpan(
                        text: 'MASTER THE ART OF MAKING',
                        style: Theme.of(context).textTheme.headline6,
                      )
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      '/signin_screen/',
                      (route) => false,
                    );
                  },
                  child: FittedBox(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 33),
                      padding: const EdgeInsets.symmetric(
                        vertical: 16,
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(26),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: [
                          Text(
                            'START LEARNING',
                            style: Theme.of(context).textTheme.button?.copyWith(
                                  color: Colors.black,
                                ),
                          ),
                          const SizedBox(
                            width: 9,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
