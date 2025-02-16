import 'package:alphagoing/core/theme/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../../core/widgets/button/material_button.dart';

class YoutubeCard extends ConsumerStatefulWidget {
  const YoutubeCard({super.key});

  @override
  ConsumerState createState() => _YoutubeCardState();
}

class _YoutubeCardState extends ConsumerState<YoutubeCard> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        childAspectRatio: 1.25,
      ),
      itemCount: 6,
      itemBuilder: (_, index) {
        return _buildCard(index + 1);
      },
    );
  }

  Widget _buildCard(int index) {
    index > 3 ? index -= 3 : index;
    return AppMaterialButton(
      borderRadius: 30,
      onPressed: () {},
      child: Column(
        children: [
          Ink.image(
            image: AssetImage('images/img_youtube_$index.png'),
            height: 270,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 34),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('알파고잉 유튜브 $index', style: AppTextStyle.body16sb140),
                Container(
                  height: 30,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: ShapeDecoration(
                    color: Color(0xFF0D0D0D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  child: Text(
                    '보러가기',
                    style:
                        AppTextStyle.body14sb143.copyWith(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
