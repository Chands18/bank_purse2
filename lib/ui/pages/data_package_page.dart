import 'package:bank_purse2/shared/theme.dart';
import 'package:bank_purse2/ui/widgets/buttons.dart';
import 'package:bank_purse2/ui/widgets/forms.dart';
import 'package:bank_purse2/ui/widgets/package_item.dart';
import 'package:flutter/material.dart';

class DataPackagePage extends StatelessWidget {
  const DataPackagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Paket Data',
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
            'Phone Number',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          CustomFormField(
            title: '+628',
            isShowTitle: false,
            // controller: phoneController,
          ),
          const SizedBox(
            height: 40,
          ),
          Text(
            'Select Package',
            style: blackTextStyle.copyWith(
              fontSize: 16,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Center(
            child: Wrap(
              spacing: 17,
              runSpacing: 17,
              children: const [
                PackageItem(
                  amount: 10,
                  price: 100000,
                ),
                PackageItem(
                  amount: 30,
                  price: 150000,
                  isSelected: true,
                ),
                PackageItem(
                  amount: 50,
                  price: 200000,
                ),
                PackageItem(
                  amount: 100,
                  price: 300000,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 85,
          ),
          const CustomFilledButton(
            title: 'Continue',
          ),
        ],
      ),
    );
  }
}
