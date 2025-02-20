import 'package:get_it/get_it.dart';

final locator = GetIt.instance();

Future<void> initLocator() async {
  await _initDependencies();
}

Future<void> _initDependencies() async {}
