import 'package:flutter/material.dart';

class backview extends StatelessWidget {
  const backview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(20),
                child: Container(
                  color: Colors.white60,
                  child: Text(
                    'Description',
                    textAlign: TextAlign.left,
                  ),
                  padding: EdgeInsets.only(top: 5, bottom: 10),
                  width: double.maxFinite,
                )),
            pinned: true,
            backgroundColor: Colors.amber,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/pp2.jpeg',
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
                'h idescription to not all from the lsand we all felling some time making '),
          )
        ],
      ),
    );
  }
}
