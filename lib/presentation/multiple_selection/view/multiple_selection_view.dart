import 'package:flutter/material.dart';
import 'package:hyper_ui/presentation/multiple_selection/event/multiple_selection_event.dart';
import '../provider/multiple_selection_provider.dart';

class MultipleSelectionView extends MultipleSelectionConsumerWidget {
  MultipleSelectionView({super.key});

  @override
  void beforeInitState(bloc, state) {}

  @override
  Widget buildView(context, bloc, state) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(
        title: Text('MultipleSelectionView'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: state.categories.length,
                padding: EdgeInsets.zero,
                clipBehavior: Clip.none,
                itemBuilder: (context, index) {
                  var item = state.categories[index];
                  bool selected = state.selectedIndexLists.contains(index);
                  return Card(
                    color: selected ? Colors.black : null,
                    child: ListTile(
                      onTap: () {
                        if (!selected) {
                          bloc.add(
                              MultipleSelectionAddIndexEvent(index: index));
                        } else {
                          bloc.add(
                              MultipleSelectionRemoveIndexEvent(index: index));
                        }
                      },
                      title: Text(
                        item,
                        style: TextStyle(
                          color: selected ? Colors.white : null,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
