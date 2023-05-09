

import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'complicatedData.g.dart';

@riverpod
class ComplicatedDataNotifier extends _$ComplicatedDataNotifier {
  @override
  List<String> build() {
    // 最初のデータ
    return ['A', 'B', 'C', 'D'];
  }

  // データを変更する関数
  void updateState() {
    // 変更前のデータ
    final oldState = state;
    // 変更後のデータ
    final newState = [...oldState, 'X'];
    // データを上書き
    state = newState;
  }
}