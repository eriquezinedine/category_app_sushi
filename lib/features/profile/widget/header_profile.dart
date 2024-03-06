import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';

class HeaderProfile extends StatelessWidget {
  const HeaderProfile({super.key, required this.user});

  final User? user;
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 64,
            height: 64,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Palette.primaryColor,
                  width: 4,
                )),
            child: ClipOval(
              clipBehavior: Clip.antiAlias,
              child: CachedImg(
                  url: user?.photoURL ??
                      'https://t4.ftcdn.net/jpg/04/75/01/23/360_F_475012363_aNqXx8CrsoTfJP5KCf1rERd6G50K0hXw.jpg'),
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(
                  user?.displayName ?? 'No Registrado',
                  maxLines: 1,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                const Gap(4),
                Text(
                  user?.email ?? '',
                  style: TextStyle(
                    color: Colors.black.withOpacity(.75),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
