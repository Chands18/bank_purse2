import 'package:bank_purse2/shared/theme.dart';
import 'package:bank_purse2/ui/widgets/buttons.dart';
import 'package:bank_purse2/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPage extends StatelessWidget {
  const ProfileEditPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit Profile',
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(22),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: whiteColor,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomFormField(
                  title: 'Username',
                  // controller: usernameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Full Name',
                  // controller: nameController,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Email Address',
                  // controller: emailController,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomFormField(
                  title: 'Password',
                  obscureText: true,
                  // controller: passwordController,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/profile-edit-success', (route) => false);
                  },
                  // onPressed: () {
                  //   // context.read<AuthBloc>().add(
                  //   //       AuthUpdateUser(
                  //   //         widget.user,
                  //   //         UserEditFormModel(
                  //   //           email: emailController.text,
                  //   //           name: nameController.text,
                  //   //           username: usernameController.text,
                  //   //           password: passwordController.text,
                  //   //           pin: widget.user.pin,
                  //   //         ),
                  //   //       ),
                  //   //     );
                  // },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
