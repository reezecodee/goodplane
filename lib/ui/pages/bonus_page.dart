import "package:airplane/ui/widgets/custom_button.dart";
import "package:flutter/material.dart";
import "../../shared/theme.dart";

class BonusPage extends StatelessWidget {
  const BonusPage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget bonusCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/image_card.png')),
            boxShadow: [
              BoxShadow(
                  color: kPrimaryColor.withValues(alpha: 0.5),
                  blurRadius: 50,
                  offset: Offset(0, 10)),
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Name',
                        style: whiteTextStyle.copyWith(fontWeight: light),
                      ),
                      Text(
                        'Kezzia Anne',
                        style: whiteTextStyle.copyWith(
                            fontSize: 20, fontWeight: medium),
                        overflow: TextOverflow.ellipsis,
                      )
                    ],
                  ),
                ),
                Container(
                  width: 24,
                  height: 24,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icon_plane.png'))),
                ),
                Text(
                  'Pay',
                  style:
                      whiteTextStyle.copyWith(fontSize: 16, fontWeight: medium),
                )
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: whiteTextStyle.copyWith(fontWeight: light),
            ),
            Text(
              'IDR 280.000.000',
              style: whiteTextStyle.copyWith(fontWeight: medium, fontSize: 26),
            )
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Big Bonus 🎉',
          style: blackTextStyle.copyWith(fontSize: 32, fontWeight: semibold),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 10),
        child: Text(
          'We give you early credit so that\nyou can buy a flight ticket',
          style: blackTextStyle.copyWith(
              fontSize: 16, fontWeight: light, color: kGrayColor),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget startButton() {
      return CustomButton(
          title: 'Start Fly Now',
          width: 220,
          margin: EdgeInsets.only(top: 50),
          onPressed: () => {Navigator.pushNamed(context, '/main')});
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [bonusCard(), title(), subtitle(), startButton()],
      )),
    );
  }
}
