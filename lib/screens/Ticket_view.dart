import 'package:flutter/material.dart';
import 'package:food/utils/app_layout.dart';
import 'package:food/utils/app_styles.dart';

class TicketView extends StatefulWidget {
  const TicketView({super.key});

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(61),
              child: Column(children: [
                Row(children: [
                  Text("NYC", style: Styles.headLineStyle3,),
                  Text("London", style: Styles.headLineStyle3,),
                ],)
              ]),
            ),
          ],
          )
        ),
    );
  }
}
