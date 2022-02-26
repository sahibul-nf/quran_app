import 'package:flutter/material.dart';
import 'package:quran_app/src/settings/theme/app_theme.dart';

class VerseItem extends StatelessWidget {
  const VerseItem({
    Key? key,
    this.textArab,
    this.textTranslation,
    this.numberInSurah,
    this.textTransliteration,
    required this.onTapSeeTafsir,
  }) : super(key: key);
  final String? textArab;
  final String? textTranslation;
  final int? numberInSurah;
  final String? textTransliteration;
  final void Function() onTapSeeTafsir;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [AppShadow.card],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(4),
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: FittedBox(
                child: Text(
                  "$numberInSurah",
                  style: AppTextStyle.normal.copyWith(
                    color: Theme.of(context).iconTheme.color,
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 10),
              Flexible(
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width,
                  ),
                  margin: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    "$textArab",
                    textAlign: TextAlign.right,
                    style: AppTextStyle.title.copyWith(
                      fontSize: 26,
                      fontWeight: FontWeight.normal,
                      fontFamily: "Noorehira",
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Text(
            "$textTransliteration",
            style: AppTextStyle.title.copyWith(fontSize: 14),
          ),
          const SizedBox(height: 8),
          Text(
            "\"$textTranslation\"",
            style: AppTextStyle.normal.copyWith(fontSize: 14),
            textAlign: TextAlign.start,
          ),
          InkWell(
            onTap: onTapSeeTafsir,
            child: Container(
              width: double.infinity,
              margin: const EdgeInsets.only(top: 16),
              padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [AppShadow.card],
              ),
              child: Center(
                child: Text(
                  "See Tafsir",
                  style: AppTextStyle.normal.copyWith(
                    color: Theme.of(context).iconTheme.color,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}