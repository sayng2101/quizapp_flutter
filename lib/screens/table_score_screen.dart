import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:quizapp/provider/user.dart';

class TableScoreScreen extends ConsumerWidget {
  final int id;
  const TableScoreScreen({super.key, required this.id});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final datausers = ref.watch(usersProvider);
    return Scaffold(
      appBar: AppBar(),
      body: datausers.when(
          error: (error, stack) {
            return Text(error.toString());
          },
          loading: () => const Center(child: CircularProgressIndicator()),
          data: (data) => SizedBox(
                child: RefreshIndicator(
                  onRefresh: ()async{
                    ref.refresh(usersProvider);
                  },
                  child: ListView(
                    
                    children: [Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Center(
                        child: Text(
                          "Bảng xếp hạng",
                          style:
                              TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: DataTable(
                          dataTextStyle: const TextStyle(fontSize: 18,color: Colors.black),
                            columns: const [
                              DataColumn(
                                label: Text("Vị trí"),
                              ),
                              DataColumn(
                                label: Text("Tên người chơi"),
                              ),
                              DataColumn(label: Text("Điểm")),
                            ],
                            rows: data
                                .map((item) => DataRow(cells: [
                                       DataCell((Text("${data.indexOf(item)+1}"))),
                                      DataCell((Text(item.hoten.toString()))),
                                      DataCell((Text(item.score.toString()))),
                                    ],selected: (id == item.id) ? true : false),)
                                .toList()),
                      )
                    ]),
                  ]),
                ),
              )),
    );
  }
}
