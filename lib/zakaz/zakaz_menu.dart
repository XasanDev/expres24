import 'package:flutter/material.dart';
import 'package:neww/data_base/data_base.dart';

class MenuApp extends StatefulWidget {
  Map? comne;
  MenuApp({Key? key, this.comne}) : super(key: key);

  @override
  _MenuAppState createState() => _MenuAppState();
}

class _MenuAppState extends State<MenuApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 180,
            flexibleSpace: FlexibleSpaceBar(
              background: Image(
                image: NetworkImage(
                  widget.comne!["image"],
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 100,
                  color: Colors.white,
                  child: ListTile(
                    title: Container(
                      child: Text(
                        widget.comne!["name"],
                        style: const TextStyle(fontSize: 28.0),
                      ),
                    ),
                    subtitle: Container(
                      child: const Text("Минимальная сумма заказа 0 сум"),
                    ),
                    trailing: IconButton(
                      icon: const Icon(Icons.favorite_border),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                      child: Container(
                        child: Row(
                          children: [
                            Padding(
                                padding: EdgeInsets.only(left: 10.0),
                                child: Text(
                                    "Доставка ${widget.comne!["price"]} сум")),
                          ],
                        ),
                        height: 60.0,
                        width: 370,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(12.0),
                          ),
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                            margin: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(10.0),
                              ),
                              color: Colors.white,
                            ),
                            child: ListTile(
                              title: Text("${widget.comne!["vaqt"]} min"),
                              subtitle: Text("Время доставки"),
                            )),
                      ),
                      Expanded(
                        child: Container(
                          margin: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(10.0),
                            ),
                            color: Colors.white,
                          ),
                          child: ListTile(
                            title: Text(widget.comne!["reyting"]),
                            subtitle: Text("Reyting"),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                ListTile(
                  tileColor: Colors.white,
                  leading: IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  title: Text(
                    "${widget.comne!["name"]}",
                  ),
                )
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, mainAxisExtent: 300),
            delegate: SliverChildBuilderDelegate((context, index) {
              return InkWell(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 200,
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
                                      image: NetworkImage(
                                          "${yaponaMama[index]['image']}"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                              height: 155,
                              width: 360,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    '${yaponaMama[index]['name']}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 10,
                                    ),
                                  ),
                                  Icon(Icons.favorite_border_sharp),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 28.0),
                              child: Row(
                                children: [
                                  Text(
                                      "${yaponaMama[index]['narx'].toString()}"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  onTap: () {});
            }),
          )
        ],
      ),
    );
  }
}
