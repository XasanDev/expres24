import 'package:flutter/material.dart';

class InfoKorsat extends StatefulWidget {
  Map? infoKorsate;
  InfoKorsat({Key? key, this.infoKorsate}) : super(key: key);

  @override
  State<InfoKorsat> createState() => _InfoKorsatState();
}

class _InfoKorsatState extends State<InfoKorsat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(widget.infoKorsate!['image']),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              height: 150,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                  widget.infoKorsate!["infokor"],
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1, mainAxisExtent: 300),
            delegate: SliverChildBuilderDelegate((context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 250,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.all(5.0),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              image: DecorationImage(
                                  image:
                                      NetworkImage(widget.infoKorsate!["image"]),
                                  fit: BoxFit.cover),
                              borderRadius: BorderRadius.circular(15)),
                          height: 175,
                          width: 360,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                widget.infoKorsate!["name"],
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),
                              ),
                              Icon(Icons.favorite_border_sharp),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: Row(
                            children: [
                              Text(
                                'Aziatski Population',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star),
                            Text("4.7 (500+)"),
                            Padding(
                              padding: const EdgeInsets.only(left: 8.0),
                              child: Icon(Icons.local_taxi),
                            ),
                            Text("26 400 sum"),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
