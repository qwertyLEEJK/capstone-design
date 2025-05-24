import 'package:flutter/material.dart';
import '../widgets/circle_login_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('로그인')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: '아이디'),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(labelText: '비밀번호'),
              obscureText: true,
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: const Text(
                '회원가입',
                style: TextStyle(decoration: TextDecoration.underline),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleLoginButton(asset: 'assets/images/naver.png'),
                CircleLoginButton(asset: 'assets/images/kakao.png'),
                CircleLoginButton(asset: 'assets/images/google.png'),
              ],
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
