library view;

import 'package:flutter/widgets.dart';

abstract class View extends StatefulWidget {}

abstract class ViewState<V extends View, VC extends ViewController>
    extends State<V> {
  final VC viewController;

  ViewState(this.viewController);

  @override
  void initState() {
    super.initState();

    viewController?.init();
  }

  @override
  void dispose() {
    super.dispose();

    if (mounted) viewController?.dispose();
  }
}

abstract class ViewController {
  void init();
  void dispose();
}
