import 'package:adf_album_da_copa/app/pages/my_stickers/widgets/stickers_group.dart';
import 'package:adf_album_da_copa/app/pages/my_stickers/widgets/stickers_group_filter.dart';
import 'package:flutter/material.dart';

import 'widgets/stickers_status_filter.dart';

class MyStickersPage extends StatelessWidget {
  const MyStickersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Minhas Figurinhas'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: const [
                StickerStatusFilter(filterSelected: ''),
                StickerGroupFilter(),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return const StickersGroup();
              },
              childCount: 1,
            ),
          ),
        ],
      ),
    );
  }
}
