import 'package:bank_purse2/shared/helpers.dart';
import 'package:bank_purse2/shared/theme.dart';
import 'package:bank_purse2/ui/widgets/buttons.dart';
import 'package:bank_purse2/ui/widgets/data_provider_item.dart';
import 'package:flutter/material.dart';

class DataProviderPage extends StatelessWidget {
  const DataProviderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Beli Data',
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
            'From Wallet',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Image.asset(
                'assets/img_wallet.png',
                width: 80,
              ),
              const SizedBox(
                width: 16,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '8088 1234 0000',
                    // state.data.cardNumber!.replaceAllMapped(
                    //     RegExp(r".{4}"), (match) => "${match.group(0)} "),
                    style: blackTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Text(
                    'balance : ${formatCurrency(2000000)}',
                    style: greyTextStyle.copyWith(
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ],
          ),
          // BlocBuilder<AuthBloc, AuthState>(
          //   builder: (context, state) {
          //     if (state is AuthSuccess) {
          //       return Row(
          //         children: [
          //           Image.asset(
          //             'assets/img_wallet.png',
          //             width: 80,
          //           ),
          //           const SizedBox(
          //             width: 16,
          //           ),
          //           Column(
          //             crossAxisAlignment: CrossAxisAlignment.start,
          //             children: [
          //               Text(
          //                 state.data.cardNumber!.replaceAllMapped(
          //                     RegExp(r".{4}"), (match) => "${match.group(0)} "),
          //                 style: blackTextStyle.copyWith(
          //                   fontSize: 16,
          //                   fontWeight: medium,
          //                 ),
          //               ),
          //               const SizedBox(
          //                 height: 2,
          //               ),
          //               Text(
          //                 state.data.name!,
          //                 style: greyTextStyle.copyWith(
          //                   fontSize: 12,
          //                 ),
          //               ),
          //             ],
          //           ),
          //         ],
          //       );
          //     }

          //     return Container();
          //   },
          // ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Provider',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const DataProviderItem(
            name: 'Telkomsel',
            imageUrl: 'assets/img_provider_telkomsel.png',
            isSelected: true,
          ),
          const DataProviderItem(
            name: 'Indosat Ooredo',
            imageUrl: 'assets/img_provider_indosat.png',
          ),
          // BlocProvider(
          //   create: (context) => OperatorCardBloc()..add(OperatorCardGet()),
          //   child: BlocBuilder<OperatorCardBloc, OperatorCardState>(
          //     builder: (context, state) {
          //       if (state is OperatorCardSuccess) {
          //         return Column(
          //           children: state.operators.map((operator) {
          //             return GestureDetector(
          //               onTap: () {
          //                 setState(() {
          //                   selectedOperator = operator;
          //                 });
          //               },
          //               child: DataProviderItem(
          //                 operator: operator,
          //                 isSelected: operator.id == selectedOperator?.id,
          //               ),
          //             );
          //           }).toList(),
          //         );
          //       }

          //       return const Center(
          //         child: CircularProgressIndicator(),
          //       );
          //     },
          //   ),
          // ),
          const SizedBox(
            height: 120,
          ),
          // if (selectedOperator != null)
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/data-package');
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => DataPackagePage(
              //       operator: selectedOperator!,
              //     ),
              //   ),
              // );
            },
          ),
          const SizedBox(
            height: 57,
          ),
        ],
      ),
    );
  }
}
