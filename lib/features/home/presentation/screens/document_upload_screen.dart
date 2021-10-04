import 'package:amatrider/widgets/widgets.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

/// A stateless widget to render DocumentUploadScreen.
class DocumentUploadScreen extends StatelessWidget with AutoRouteWrapper {
  const DocumentUploadScreen({Key? key}) : super(key: key);

  @override
  Widget wrappedRoute(BuildContext context) {
    return this;
  }

  @override
  Widget build(BuildContext context) {
    return AdaptiveScaffold(
      body: Center(
        child: AdaptiveText('This will be for Document upload!!'),
      ),
    );
  }
}
