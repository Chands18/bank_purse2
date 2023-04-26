import 'package:bank_purse2/shared/theme.dart';
import 'package:bank_purse2/ui/widgets/buttons.dart';
import 'package:bank_purse2/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class ProfileEditPinPage extends StatelessWidget {
  const ProfileEditPinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Edit PIN',
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
              children: const [
                CustomFormField(
                  title: 'Old PIN',
                  // controller: oldPinController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomFormField(
                  title: 'New PIN',
                  // controller: newPinController,
                  obscureText: true,
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomFilledButton(
                  title: 'Update Now',
                  // onPressed: () {
                  //   context.read<AuthBloc>().add(
                  //         AuthUpdatePin(
                  //           widget.user,
                  //           oldPinController.text,
                  //           newPinController.text,
                  //         ),
                  //       );
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
