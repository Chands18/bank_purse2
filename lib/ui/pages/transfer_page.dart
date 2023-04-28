import 'package:bank_purse2/shared/theme.dart';
import 'package:bank_purse2/ui/widgets/forms.dart';
import 'package:flutter/material.dart';

class TransferPage extends StatelessWidget {
  const TransferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Transfer',
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
          Text(
            'Search',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: 'by username',
            isShowTitle: false,
            // controller: usernameController,
            // onFieldSubmitted: (value) {
            //   if (value.isNotEmpty) {
            //     userBloc.add(UserGetByUsername(usernameController.text));
            //   } else {
            //     userBloc.add(UserGetRecent());
            //   }
            //   setState(() {});
            // },
          ),
          // buildRecentUsers(),
          // usernameController.text.isEmpty ? buildRecentUsers() : buildResult(),
          const SizedBox(
            height: 80,
          ),
          // if (selectedUser != null)
          //   CustomFilledButton(
          //     title: 'Continue',
          //     onPressed: () {
          //       Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //           builder: (context) => TransferAmountPage(
          //             data: TransferFormModel(
          //               sendTo: selectedUser?.username,
          //             ),
          //           ),
          //         ),
          //       );
          //     },
          //   ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
