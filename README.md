# flutter_riverpod_practice01

これはflutterの状態管理ツールriverpodの学習用リポジトリです。

## 使用するライブラリ一覧
- flutter_hooks
- flutter_riverpod
- riverpod_annotation
- build_runner
- riverpod_generator

## メモ
#### riverpod_generatorで自動的にproviderを生成する手順
- 以下のように記述したdartファイルを生成する
```aidl
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
```

これで、```flutter pub run build_runner build --delete-conflicting-outputs ```とターミナルに打つと生成される
生成されるproviderの名前は、頭文字が大文字になり、最後にproviderがついたもの（今回で言えばsimpleDataNotifierProvider）

# riverpod_practice01
