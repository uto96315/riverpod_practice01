import 'package:riverpod_annotation/riverpod_annotation.dart';
part "simpleData.g.dart";


@riverpod
class SimpleDataNotifier extends _$SimpleDataNotifier {
  @override
  int build() {
    return 0;
  }

  // 状態を変更するコード
  void updateState() {
    final oldState = state;
    final newState = oldState + 1;

    state = newState;
  }
}