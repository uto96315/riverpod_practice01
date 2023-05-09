

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice01/simpleData/simpleData.dart';

class SimpleWidget extends ConsumerWidget {
  const SimpleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {

    // refはstateを除くためのカメラのようなもの。ここでは、refでwatchするproviderを指定している
    final simpleData = ref.watch(simpleDataNotifierProvider);

    final button = ElevatedButton(
        onPressed: (){
          //押した時の挙動
          final notifier = ref.read(simpleDataNotifierProvider.notifier);  // ここでnotifierをゲットしたことになる
          notifier.updateState();
        },
        child: const Text("ボタン"));

    return Center(
      child: Column(
        children: [
          Text("$simpleData"),

          button,
        ],
      ),
    );
  }
}