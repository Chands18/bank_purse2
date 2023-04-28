import 'package:bank_purse2/shared/theme.dart';
import 'package:bank_purse2/ui/widgets/forms.dart';
import 'package:bank_purse2/ui/widgets/transfer_recent_user_item.dart';
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
          const CustomFormField(
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
          buildRecentUsers(),
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

Widget buildRecentUsers() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Recent Users',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend1.png',
          isVerified: true,
          name: 'Victoria',
          username: 'Vpfifer',
        ),
        const TransferRecentUserItem(
          imageUrl: 'assets/img_friend2.png',
          isVerified: false,
          name: 'Victoria',
          username: 'Vpfifer',
        )
        // BlocBuilder<UserBloc, UserState>(
        //   builder: (context, state) {
        //     if (state is UserSuccess) {
        //       return Column(
        //         children: state.users.map((user) {
        //           return GestureDetector(
        //             onTap: () {
        //               Navigator.push(
        //                 context,
        //                 MaterialPageRoute(
        //                   builder: (context) => TransferAmountPage(
        //                     data: TransferFormModel(
        //                       sendTo: user.username,
        //                     ),
        //                   ),
        //                 ),
        //               );
        //             },
        //             child: TransferRecentUserItem(user: user),
        //           );
        //         }).toList(),
        //       );
        //     }

        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   },
        // ),
      ],
    ),
  );
}

Widget buildResult() {
  return Container(
    margin: const EdgeInsets.only(
      top: 40,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Result',
          style: blackTextStyle.copyWith(
            fontSize: 16,
            fontWeight: semiBold,
          ),
        ),
        const SizedBox(
          height: 14,
        ),
        // BlocBuilder<UserBloc, UserState>(
        //   builder: (context, state) {
        //     if (state is UserSuccess) {
        //       return Wrap(
        //         spacing: 17,
        //         runSpacing: 17,
        //         children: state.users.map((user) {
        //           return GestureDetector(
        //             onTap: () {
        //               setState(() {
        //                 selectedUser = user;
        //               });
        //             },
        //             child: TransferResultUserItem(
        //               user: user,
        //               isSelected: user.id == selectedUser?.id,
        //             ),
        //           );
        //         }).toList(),
        //       );
        //     }

        //     return const Center(
        //       child: CircularProgressIndicator(),
        //     );
        //   },
        // ),
      ],
    ),
  );
}
