import 'package:flutter/material.dart';
import 'package:ticket_booking/utils/layout.dart';
import 'package:ticket_booking/utils/styles.dart';
import 'package:ticket_booking/widgets/thick_container.dart';

class TicketView extends StatelessWidget {
  const TicketView({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);

    return SizedBox(
      height: 200,
      width: size.width,
      child: Container(
        margin: const EdgeInsets.only(left: 16),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: const BoxDecoration(
                color: Color(0xFF526799),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(21),
                  topRight: Radius.circular(21),
                ),
              ),
              child: Column(children: [
                Row(
                  children: [
                    Text('NYC',
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.white)),
                    const Spacer(),
                    const ThickContainer(),
                    Expanded(
                        child: SizedBox(
                      height: 24,
                      child: LayoutBuilder(
                        builder: (context, constraints) => Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                              (constraints.constrainWidth() / 8).floor(),
                              (index) => const SizedBox(
                                  height: 1,
                                  width: 3,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                    ),
                                  ))),
                        ),
                      ),
                    )),
                    Transform.rotate(
                      angle: 1.5,
                      child: const Icon(
                        Icons.local_airport_rounded,
                        color: Colors.white,
                      ),
                    ),
                    const ThickContainer(),
                    const Spacer(),
                    Text('LDN',
                        style: Styles.headLineStyle3
                            .copyWith(color: Colors.white)),
                  ],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
