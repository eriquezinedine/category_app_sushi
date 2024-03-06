import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:gap/gap.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/features/features.dart';
import 'package:take_sushi/features/profile/cubit/profile_cubit.dart';
import 'package:take_sushi/features/profile/widget/contact.dart';
import 'package:take_sushi/features/shopping/view/body_shopping.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({
    super.key,
    required this.orders,
    required this.title,
    required this.leadingText,
  });
  final List<ItemOrder> orders;
  final String title;
  final String leadingText;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProfileCubit>();
    void modal() {
      ContactBottomSheep.show(context, ItemOrder.msgAll(orders));
    }

    Future<void> send(BuildContext context) async {
      final status = await Permission.contacts.request();
      if (status == PermissionStatus.permanentlyDenied) {
        await openAppSettings();
        return;
      }
      if (status == PermissionStatus.granted) {
        bloc.getContact();
        modal();
      }
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.primaryColor,
        title: TitlePice(
          text: title,
          color: Colors.white,
        ),
        leading: IconButton(
          onPressed: () => context.pop,
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
        actions: [
          Center(
            child: TitlePice(
              text: 'Total: $leadingText',
              color: Colors.white,
            ),
          ),
          const Gap(16)
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: BodyShopping(
              orders: orders,
              isShoppingPage: false,
            ),
          ),
          const Gap(8),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Button(
              onTap: () {
                send(context);
                // CherryToast.info(
                //   toastDuration: const Duration(milliseconds: 3500),
                //   title: const Text(
                //     "Proximamente",
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontWeight: FontWeight.bold,
                //     ),
                //   ),
                //   action: const Text(
                //     "XD cuando tenga tiempo lo termino en la version 2",
                //     style: TextStyle(
                //       color: Colors.black,
                //       fontSize: 10,
                //     ),
                //   ),
                // ).show(context);
              },
              color: Palette.colors[1],
              iconData: PhosphorIcons.whatsapp_logo,
              text: 'Recomendar',
              textColor: Palette.black,
            ),
          ),
          const Gap(24)
        ],
      ),
    );
  }
}
