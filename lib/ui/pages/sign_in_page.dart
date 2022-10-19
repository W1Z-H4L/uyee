import 'package:flutter/material.dart';
import 'package:login/shared/theme.dart';
import 'package:login/ui/widgets/buttons.dart';
import 'package:login/ui/widgets/forms.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.only(
          left: 24,
          right: 24,
          bottom: 24,
        ),
        children: <Widget>[
          Container(
            width: 121,
            height: 121,
            margin: const EdgeInsets.only(top: 50, bottom: 50),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/logo.png'),
              ),
            ),
          ),
          Text(
            'Login \n Masuk Aplikasi',
            style: blackTextStyle.copyWith(
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [Color(0xffBDE2E7), Color(0xffFFFFFF)],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // NOTE: INPUT EMAIL
                const CustomFormField(
                  title: 'Ussername',
                ),
                const SizedBox(
                  height: 16,
                ),
                // NOTE: INPUT PASSWORD
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    'Forgot Password',
                    style: lightBlueTextStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Login',
                  onPressed: () {},
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          CustomTextButton(
            title: 'Register',
            onPressed: () {
              Navigator.pushNamed(context, '/sign-up');
            },
          ),
        ],
      ),
    );
  }
}
