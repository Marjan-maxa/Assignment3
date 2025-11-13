import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class api extends StatefulWidget {
  const api({super.key});

  @override
  State<api> createState() => _apiState();
}

class _apiState extends State<api> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getchProducts();
  }
  List products=[];
  bool isLoading=true;
  Future<void> getchProducts()
  async {
    final url=Uri.parse('http://35.73.30.144:2008/api/v1/ReadProduct');
    final response=await http.get(url);
    if(response.statusCode==200)
      {
       final jsonResponse=jsonDecode(response.body);
       setState(() {
         products=jsonResponse['data'];
         isLoading=false;
       });
      }
    else
      {
        isLoading=false;
      }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('API Calling'),
      ),
      body: isLoading?Align(
        alignment: Alignment.topCenter,
          child: CircularProgressIndicator()): GridView.builder(
        itemCount: products.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 10,childAspectRatio: 0.7),
          itemBuilder: (context,index){
        final items=products[index];
        return Card(
          elevation: 2,
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              child: Column(
                children: [
                  Expanded(
                      child: Image.network(items['Img'],fit: BoxFit.cover,)),
                  Text(items['ProductName'],style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold), overflow:TextOverflow.ellipsis),

                  Text('Price:\$${items['UnitPrice']} | Qty:${items['Qty']}'),

                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}
