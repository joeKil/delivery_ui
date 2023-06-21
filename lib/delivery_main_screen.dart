import 'package:delivery_ui/component/delivery_appbar.dart';
import 'package:delivery_ui/component/delivery_battom_nav_bar.dart';
import 'package:delivery_ui/component/delivery_body.dart';
import 'package:flutter/material.dart';

class DeliveryMainScreen extends StatefulWidget {
  const DeliveryMainScreen({super.key});

  @override
  State<DeliveryMainScreen> createState() => _DeliveryMainScreenState();
}

class _DeliveryMainScreenState extends State<DeliveryMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DeliveryAppBar(),
      body: DeliveryBody(),
      bottomNavigationBar: const BottomNav(),
    );
  }
}
