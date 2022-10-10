import 'package:adf_album_da_copa/app/pages/my_stickers/presenter/my_stickers_presenter.dart';
import 'package:adf_album_da_copa/app/pages/my_stickers/view/my_stickers_view_impl.dart';
import 'package:adf_album_da_copa/app/pages/my_stickers/widgets/stickers_group.dart';
import 'package:adf_album_da_copa/app/pages/my_stickers/widgets/stickers_group_filter.dart';
import 'package:flutter/material.dart';

import 'widgets/stickers_status_filter.dart';

class MyStickersPage extends StatefulWidget {
  final MyStickersPresenter presenter;
  const MyStickersPage({super.key, required this.presenter});

  @override
  State<MyStickersPage> createState() => _MyStickersPageState();
}

class _MyStickersPageState extends MyStickersViewImpl {
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
              children: [
                StickerStatusFilter(filterSelected: statusFilter),
                StickerGroupFilter(countries: countries),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                final group = album[index];
                return StickersGroup(
                  group: group,
                  statusFilter: statusFilter,
                );
              },
              childCount: album.length,
            ),
          ),
        ],
      ),
    );
  }

  // @override
  // void updateStatusFilter(status) {
  //   setState(() {
  //     statusFilter = status;
  //   });
  // }
}
