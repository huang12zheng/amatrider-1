library order_delivery_accepted_screen.dart;

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render OrderDeliveryAcceptedScreen.
class OrderDeliveryAcceptedScreen extends StatelessWidget
    with AutoRouteWrapper {
  const OrderDeliveryAcceptedScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Screen Template for OrderDeliveryAcceptedScreen'),
      ),
    );
  }
}
