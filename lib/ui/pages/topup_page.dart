import 'package:bank_purse2/shared/theme.dart';
import 'package:bank_purse2/ui/widgets/bank_item.dart';
import 'package:bank_purse2/ui/widgets/buttons.dart';
import 'package:flutter/material.dart';

class TopUpPage extends StatelessWidget {
  const TopUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Top Up',
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
            'Wallet',
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
                    '1234 5678 2222',
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
                    'Faridz Ch',
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
            'Select Bank',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_bca.png',
            title: 'Bank BCA',
            isSelected: true,
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_bni.png',
            title: 'Bank BNI',
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_mandiri.png',
            title: 'Bank Mandiri',
          ),
          const BankItem(
            imageUrl: 'assets/img_bank_ocbc.png',
            title: 'Bank OCBC',
          ),
          // BlocProvider(
          //   create: (context) => PaymentMethodBloc()..add(PaymentMethodGet()),
          //   child: BlocBuilder<PaymentMethodBloc, PaymentMethodState>(
          //     builder: (context, state) {
          //       if (state is PaymentMethodSuccess) {
          //         return Column(
          //           children: state.data.map((paymentMethod) {
          //             return GestureDetector(
          //               onTap: () {
          //                 setState(() {
          //                   selectedPaymentMethod = paymentMethod;
          //                 });
          //               },
          //               child: BankItem(
          //                 data: paymentMethod,
          //                 isSelected:
          //                     paymentMethod.id == selectedPaymentMethod?.id,
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
            height: 12,
          ),
          CustomFilledButton(
            title: 'Continue',
            onPressed: () {
              Navigator.pushNamed(context, '/topup-amount');
              // if (selectedPaymentMethod != null) {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => TopupAmountPage(
              //         data: TopupFormModel(
              //           paymentMethodCode: selectedPaymentMethod?.code,
              //         ),
              //       ),
              //     ),
              //   );
              // }
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
