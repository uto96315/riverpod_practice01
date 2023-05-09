

import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StreamWidget extends ConsumerWidget {
  const StreamWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return const Text("ここにデータが表示されます");
  }
}
