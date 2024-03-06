import 'package:flutter/material.dart';
import 'package:flutter_phosphor_icons/flutter_phosphor_icons.dart';
import 'package:take_sushi/core/core.dart';

class SearchProductWidget extends StatelessWidget {
  const SearchProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              readOnly: true,
              onChanged: (_) {},
              decoration: const InputDecoration(
                isDense: true,
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.search,
                  size: 20,
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.primaryColor, width: 2),
                ),
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.primaryColor, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Palette.primaryColor, width: 2),
                ),
                // suffixIcon: GestureDetector(
                //   onTap: () {},
                //   child: const Icon(Icons.close),
                // ),
                hintText: 'Buscar ingrediente',
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              // SearchModal.show(context);
            },
            icon: const Icon(
              PhosphorIcons.faders_bold,
            ),
          )
        ],
      ),
    );
  }
}
