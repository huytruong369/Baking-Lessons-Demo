import 'package:banking_lessons_app/contants.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: GestureDetector(
              onTap: () => Navigator.of(context).pushNamedAndRemoveUntil(
                  '/welcome_screen/', (route) => false),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 29,
                  horizontal: 9,
                ),
                alignment: Alignment.topLeft,
                constraints: const BoxConstraints.expand(),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.bottomCenter,
                    fit: BoxFit.cover,
                    image: AssetImage('assets/perosn.jpeg'),
                  ),
                ),
                child: const Icon(
                  Icons.arrow_back,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'SIGN UP',
                        style: Theme.of(context).textTheme.headline4?.copyWith(
                              color: Colors.white,
                            ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context)
                            .pushNamedAndRemoveUntil(
                                '/signin_screen/', (route) => false),
                        child: Text(
                          'SIGN IN',
                          style: Theme.of(context).textTheme.button,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      Icon(
                        Icons.alternate_email,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Expanded(
                        child: TextField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            hintText: 'Email address',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      Icon(
                        Icons.lock,
                        color: kPrimaryColor,
                      ),
                      SizedBox(
                        width: 9,
                      ),
                      Expanded(
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: 'Password',
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 9),
                    child: Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(.3),
                            ),
                          ),
                          child: Icon(
                            Icons.android,
                            color: Colors.white.withOpacity(.6),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(.3),
                            ),
                          ),
                          child: Icon(
                            Icons.chat,
                            color: Colors.white.withOpacity(.6),
                          ),
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(13),
                          decoration: BoxDecoration(
                            color: kPrimaryColor,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.white.withOpacity(.3),
                            ),
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.black,
                          ),
                        ),
                      ],
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
}
