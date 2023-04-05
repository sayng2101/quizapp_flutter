import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TimeScreen extends ConsumerWidget {
  const TimeScreen({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('TimeScreen'),),

      body: Container(
        // child: ref.watch(userProvider(1)).when(
        //       data: (data) => Center(
        //         child: Column(
        //           children: [
        //             Text('${data!.id}'),
        //             Text(data.account),
        //             Text(data.hoten),
        //             InkWell(
        //           onTap: () {
        //              context.router.replaceNamed('/home-screen')
        //             ;
        //           },
        //           child: const Text(
        //             'Play',
        //             style: TextStyle(color: Colors.blueAccent, fontSize: 20),
        //           ),
        //         ),
        //           ],
        //         ),
        //       ),
        //       error: (error, stackTrace) => Text(error.toString()),
        //       loading: () => const Text('Loading'),
        //     ),
      ),
    );
  }
}
