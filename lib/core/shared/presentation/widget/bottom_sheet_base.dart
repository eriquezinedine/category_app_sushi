import 'package:flutter/material.dart';
import 'package:take_sushi/core/core.dart';

class BottomSheetBase extends StatelessWidget {
  const BottomSheetBase({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pop(),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            children: [
              const Spacer(),
              GestureDetector(
                onTap: () {
                  context.pop;
                },
                child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Align(
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.black.withOpacity(.3),
                              borderRadius: BorderRadius.circular(8)),
                          width: 20,
                          height: 5,
                        ),
                      ),
                      child
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
