
import 'package:flutter/material.dart';
import '../data_base/data_base.dart';
import '../pages/qisqa_info.dart';
import '../zakaz/zakaz_menu.dart';

class Glava extends StatefulWidget {
  const Glava({Key? key}) : super(key: key);

  @override
  _GlavaState createState() => _GlavaState();
}

class _GlavaState extends State<Glava> {
  String _dropValue = "Yashnobod Tumani Asalabod 1 massiv 6 dom 65 honadon";
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  String _textFormInput = "";
  String? chaqir;
  int _pageIndex = 0;
  bool _isChecked = false;

  List _name = [
    'Atlas Home',
    'Markell&Ola',
    'Fast Food',
    'National',
    'Azia',
    'Euro',
    'Cofee',
    'Pissa',
    'Conditerski',
    'Barbeque',
    'Ice Creame',
    'drinks',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0XFFE5E5E5),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: Colors.white,
            expandedHeight: MediaQuery.of(context).size.height * 0.11,
            elevation: 0,
            flexibleSpace: FlexibleSpaceBar(
              background: Column(
                children: [
                  _dropdawn(),
                  _serchQismi(),
                ],
              ),
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0,top: 10),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                            child: Container(
                              margin: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "${zdorovye[index]["image"]}"),
                                      fit: BoxFit.cover),
                                  borderRadius: BorderRadius.circular(15)),
                              height: 100,
                              width: 185,
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => InfoKorsat(
                                    infoKorsate: info[index],
                                  ),
                                ),
                              );
                            },
                            );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
              itemExtent: 115),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Magazine',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Column(
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              size: 17,
                            )),
                      ],
                    ),
                  ],
                );
              }, childCount: 1),
            ),
          ),
          SliverFixedExtentList(
              delegate: SliverChildListDelegate(
                [
                  Padding(
                    padding: const EdgeInsets.only(left: 5.0),
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return InkWell(
                          child: Container(
                            margin: EdgeInsets.all(4.0),
                            height: 340,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadiusDirectional.circular(8)
                            ),
                            child: Column(
                              children: [
                                Container(
                                 // margin: EdgeInsets.all(5.0),
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "${info[index]['image']}"),
                                          fit: BoxFit.cover),
                                     borderRadius: BorderRadius.circular(8),
                                      ),
                                  height: 100,
                                  width: 185,
                                ),
                                Container(
                                  child: Text(
                                    '${info[index]["name"]}',
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                )
                              ],
                            ),
                          ),
                          onTap: (){
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MenuApp(
                                    comne: info[index],
                                  ),
                                ),
                              );
                          },
                        );
                      },
                      scrollDirection: Axis.horizontal,
                    ),
                  )
                ],
              ),
              itemExtent: 140),
          SliverPadding(
            padding: EdgeInsets.all(8.0),
            sliver: SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Restourants',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                  ],
                );
              }, childCount: 1),
            ),
          ),
          SliverFixedExtentList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: const EdgeInsets.only(left: 4.0),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Chip(
                          backgroundColor: Colors.white,
                          label: Text("${_name[index]}"),
                        ),
                      );
                    },
                    scrollDirection: Axis.horizontal,
                    itemCount: _name.length,
                  ),
                ),
              ],
            ),
            itemExtent: 60,
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 1,mainAxisExtent: 300),
            delegate: SliverChildBuilderDelegate(
              (context,index){
                return InkWell(
                    child: Padding(
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
                                            NetworkImage("${info[index]['image']}"),
                                        fit: BoxFit.cover),
                                    borderRadius: BorderRadius.circular(15)),
                                height: 175,
                                width: 360,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      '${info[index]['name']}',
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
                                padding:
                                    const EdgeInsets.only(left: 8.0, right: 8.0),
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
                    ),
                    onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => MenuApp(
                                    comne: info[index],
                                  ),
                                ),
                              );
                            }
                  );
              }
            ),
          )
            
          
        ],
      ),
    );
  }

  SizedBox _serchQismi() {
    return SizedBox(
      height: 30,
      child: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextFormField(
            controller: _nameController,
            decoration: InputDecoration(
              contentPadding: EdgeInsets.only(
                top: 10.0,
              ),
              fillColor: Color(0XFFE5E5E5),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              hintText: "Search",
              prefixIcon: const Icon(Icons.search),
            ),
          ),
        ),
      ),
    );
  }

  Padding _dropdawn() {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0, left: 2.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DropdownButtonHideUnderline(
            child: DropdownButton(
                value: _dropValue,
                items: const [
                  DropdownMenuItem(
                    child: Text("Yashnobod Tumani Asalabod 1 massiv 6 dom 65 "),
                    value: "Yashnobod Tumani Asalabod 1 massiv 6 dom 65 honadon",
                  ),
                  DropdownMenuItem(
                    child: Text("Yakkasaroy tumani, 8 massiv 110"),
                    value: "Yakkasaroy tumani,8 massiv 110",
                  ),
                  DropdownMenuItem(
                    child: Text("Chilonzor tumani,Chilonzor 4 massiv 20"),
                    value: "Chilonzor tumani,Chilonzor 4 massiv 20",
                  ),
                  DropdownMenuItem(
                    child: Text("Olmazor tumani,Olmazor 6 massiv 220"),
                    value: "Olmazor tumani,Olmazor 6 massiv 220",
                  ),
                  DropdownMenuItem(
                    child: Text("Yashnabod tumani,Yashnabod 17 massiv 170"),
                    value: "Yashnabod tumani,Yashnabod 17 massiv 170",
                  ),
                  DropdownMenuItem(
                    child: Text("Mirobod Tumani,Mirobod 6 massiv 140"),
                    value: "Mirobod tumani,Mirobod 6 massiv 140",
                  )
                ],
                onChanged: (v) {
                  setState(() {
                    _dropValue = v.toString();
                  });
                }),
          ),
        ],
      ),
    );
  }
}
