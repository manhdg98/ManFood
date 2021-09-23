import 'package:flutter/material.dart';

class ExploreTab extends StatelessWidget {
  const ExploreTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate(
              [
                _topBar(context)
              ]
            ),
          )
        ],
      ),
    );
  }
}

Widget _topBar(BuildContext context) {
  return Row(

  );
}