import 'package:cherry_toast/cherry_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:take_sushi/core/core.dart';
import 'package:take_sushi/core/shared/presentation/widget/bottom_sheet_base.dart';
import 'package:take_sushi/features/profile/cubit/profile_cubit.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactBottomSheep extends StatelessWidget {
  const ContactBottomSheep._({
    required this.message,
  });

  final String message;
  static show(BuildContext context, String message) => showModalBottomSheet(
        context: context,
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        builder: (context) => ContactBottomSheep._(
          message: message,
        ),
      );
  @override
  Widget build(BuildContext context) {
    final bloc = context.read<ProfileCubit>();

    void modal() {
      CherryToast.error(
        toastDuration: const Duration(milliseconds: 2500),
        title: const Text(
          "WhastApp",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        action: const Text(
          "NO TIENES INSTALADO WHATSAPP...!",
          style: TextStyle(
            color: Colors.black,
            fontSize: 10,
          ),
        ),
      ).show(context);
    }

    return BottomSheetBase(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * .5,
        child: Column(
          children: [
            const Gap(16),
            const Text(
              'Contactos',
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
            const Gap(8),
            TextField(
              controller: bloc.controller,
              decoration: InputDecoration(
                  hintText: 'Busca a tu crush',
                  suffixIcon: InkWell(
                    onTap: () {
                      bloc.controller.clear();
                      bloc.search('');
                    },
                    child: const Icon(Icons.close),
                  )),
              onChanged: (value) {
                bloc.search(value);
              },
            ),
            const Gap(16),
            Expanded(
              child: BlocBuilder<ProfileCubit, ProfileState>(
                buildWhen: (p, c) => p.contacsSearch != c.contacsSearch,
                builder: (context, state) {
                  final contact = state.contacsSearch;
                  return ListView.separated(
                    // shrinkWrap: true,
                    itemCount: contact.length,
                    itemBuilder: (context, index) {
                      final person = contact[index];
                      final number = person.phones.isNotEmpty
                          ? person.phones[0].number.getNumb
                          : '-1';

                      return GestureDetector(
                        onTap: () async {
                          final whatsappUrl =
                              'https://wa.me/${number.isAdd ? '' : '+51'}$number?text=$message';
                          if (await canLaunch(whatsappUrl)) {
                            await launch(whatsappUrl);
                          } else {
                            modal();
                          }
                        },
                        child: number == '-1'
                            ? const SizedBox.shrink()
                            : ListTile(
                                title: Text(person.displayName),
                                subtitle: Text(number.toString()),
                              ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      final person = contact[index];
                      final number = person.phones.isNotEmpty
                          ? person.phones[0].number.getNumb
                          : '-1';
                      return number == '-1'
                          ? const SizedBox.shrink()
                          : Container(
                              width: MediaQuery.of(context).size.width,
                              color: Colors.grey.withOpacity(.5),
                              height: 1,
                            );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
