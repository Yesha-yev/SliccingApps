import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController    = TextEditingController();
  final _passwordController = TextEditingController();
  bool _obscurePassword     = true;
  bool _rememberMe          = true;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 32),

              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    'Linked',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF0A66C2),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 4, vertical: 1),
                    decoration: BoxDecoration(
                      color: const Color(0xFF0A66C2),
                      borderRadius: BorderRadius.circular(3),
                    ),
                    child: const Text(
                      'in',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),

              const Text(
                'Login',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF191919),
                ),
              ),

              const SizedBox(height: 6),

              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text: 'atau ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF191919),
                    ),
                  ),
                  TextSpan(
                    text: 'Bergabung dengan LinkedIn',
                    style: const TextStyle(
                      fontSize: 14,
                      color: Color(0xFF0A66C2),
                      fontWeight: FontWeight.w600,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {},
                  ),
                ]),
              ),

              const SizedBox(height: 24),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 52),
                  side: const BorderSide(color: Color(0xFF191919)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                ),
                child: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Image.asset(
        'assets/images/google.png',
        width: 22,
        height: 22,
      ),
      const SizedBox(width: 8),
      const Text(
        'Login dengan Google',
        style: TextStyle(
          color: Color(0xFF191919),
          fontWeight: FontWeight.w600,
          fontSize: 15,
        ),
      ),
    ],
  ),
),

              const SizedBox(height: 12),

              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  minimumSize: const Size(double.infinity, 52),
                  side: const BorderSide(color: Color(0xFF191919)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(28)),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.apple,
                        size: 22, color: Color(0xFF191919)),
                    SizedBox(width: 8),
                    Text(
                      'Login dengan Apple',
                      style: TextStyle(
                        color: Color(0xFF191919),
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 16),

              RichText(
                text: TextSpan(children: [
                  const TextSpan(
                    text:
                        'Dengan mengklik Lanjutkan, Anda menyetujui ',
                    style: TextStyle(
                        fontSize: 12, color: Color(0xFF666666)),
                  ),
                  TextSpan(
                    text: 'Perjanjian Pengguna',
                    style: const TextStyle(
                        fontSize: 12, color: Color(0xFF0A66C2)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {},
                  ),
                  const TextSpan(
                    text: ', ',
                    style: TextStyle(
                        fontSize: 12, color: Color(0xFF666666)),
                  ),
                  TextSpan(
                    text: 'Kebijakan Privasi',
                    style: const TextStyle(
                        fontSize: 12, color: Color(0xFF0A66C2)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {},
                  ),
                  const TextSpan(
                    text: ', dan ',
                    style: TextStyle(
                        fontSize: 12, color: Color(0xFF666666)),
                  ),
                  TextSpan(
                    text: 'Kebijakan Cookie',
                    style: const TextStyle(
                        fontSize: 12, color: Color(0xFF0A66C2)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {},
                  ),
                  const TextSpan(
                    text: ' LinkedIn.',
                    style: TextStyle(
                        fontSize: 12, color: Color(0xFF666666)),
                  ),
                ]),
              ),

              const SizedBox(height: 20),

              const Row(children: [
                Expanded(child: Divider(color: Color(0xFFD6D0C8))),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Text('atau',
                    style: TextStyle(
                      color: Color(0xFF191919),
                      fontWeight: FontWeight.w600,
                      fontSize: 14,
                    )),
                ),
                Expanded(child: Divider(color: Color(0xFFD6D0C8))),
              ]),

              const SizedBox(height: 20),

              TextField(
                controller: _emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  labelText: 'Email atau Telepon',
                  labelStyle: TextStyle(color: Color(0xFF666666)),
                  floatingLabelStyle:
                      TextStyle(color: Color(0xFF0A66C2)),
                  enabledBorder: UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF191919))),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFF0A66C2), width: 2)),
                ),
              ),

              const SizedBox(height: 16),

              TextField(
                controller: _passwordController,
                obscureText: _obscurePassword,
                decoration: InputDecoration(
                  labelText: 'Kata Sandi',
                  labelStyle:
                      const TextStyle(color: Color(0xFF666666)),
                  floatingLabelStyle:
                      const TextStyle(color: Color(0xFF0A66C2)),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide:
                        BorderSide(color: Color(0xFF191919))),
                  focusedBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(
                        color: Color(0xFF0A66C2), width: 2)),
                  suffixIcon: IconButton(
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      color: const Color(0xFF191919),
                    ),
                    onPressed: () => setState(
                      () => _obscurePassword = !_obscurePassword),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              Row(children: [
                Checkbox(
                  value: _rememberMe,
                  activeColor: const Color(0xFF0A66C2),
                  onChanged: (val) =>
                      setState(() => _rememberMe = val ?? true),
                ),
                RichText(
                  text: TextSpan(children: [
                    const TextSpan(
                      text: 'Ingat saya. ',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF191919)),
                    ),
                    TextSpan(
                      text: 'Pelajari lebih lanjut',
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF0A66C2),
                        fontWeight: FontWeight.w600,
                      ),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {},
                    ),
                  ]),
                ),
              ]),

              const SizedBox(height: 8),

              GestureDetector(
                onTap: () {},
                child: const Text(
                  'Lupa kata sandi?',
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF0A66C2),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                width: double.infinity,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF0A66C2),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(28)),
                    elevation: 0,
                  ),
                  child: const Text(
                    'Lanjutkan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}