import 'package:alphagoing/core/theme/text_style.dart';
import 'package:alphagoing/core/utils/extension.dart';
import 'package:alphagoing/features/home/data/models/credit_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/button/material_button.dart';

class CreditCard extends ConsumerStatefulWidget {
  const CreditCard({super.key});

  @override
  ConsumerState createState() => _CreditCardState();
}

class _CreditCardState extends ConsumerState<CreditCard> {
  static final List<CreditModel> data = [
    CreditModel(name: 'Basic', amount: 100, price: 10000),
    CreditModel(name: 'Standard', amount: 330, price: 30000),
    CreditModel(name: 'Mega', amount: 550, price: 50000),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.65,
      ),
      itemCount: 3,
      itemBuilder: (_, index) {
        return _buildCard(index);
      },
    );
  }

  Widget _buildCard(int index) {
    final model = data[index];
    return AppMaterialButton(
      padding: EdgeInsets.symmetric(horizontal: 40),
      borderRadius: 30,
      onPressed: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(model.name,
              style: AppTextStyle.body16sb140.copyWith(
                fontStyle: FontStyle.italic,
              )),
          Container(
            height: 1,
            color: Colors.black,
            margin: const EdgeInsets.symmetric(vertical: 12),
          ),
          Text('${model.amount} CR',
              style: AppTextStyle.head40sb128.copyWith(
                color: Colors.black,
              )),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(model.price.toCommaString('원'),
                style: AppTextStyle.title18sb144.copyWith(
                  fontWeight: FontWeight.normal,
                )),
          ),
        ],
      ),
    );
  }
}
