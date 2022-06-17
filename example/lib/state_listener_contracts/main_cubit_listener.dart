import 'package:flutter_bloc_manager/manager.dart';

abstract class MainCubitStateListener extends BaseStateListener {
  void onLoading();
  void onLoaded();
}
