import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ComplicatedWidget extends ConsumerWidget {
  const ComplicatedWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text("ここにデータが表示されます");
  }
}
