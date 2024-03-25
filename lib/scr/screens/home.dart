import 'package:flutter/material.dart';

import '../service/service.dart';
import '../view/view.dart';
import '../widgets/karusel.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  late Future<List<dynamic>> futureList;

  @override
  void initState() {
    futureList = fetchFutureFunction();
    super.initState();
  }

  Future<List<dynamic>> fetchFutureFunction() async {
    final service = await ApiService.fetchNewsData();
    return service;
  }

  Future<void> refresh() async {
    setState(() {
      futureList = fetchFutureFunction();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // backgroundColor: Color(0xFF050211),
      body: SafeArea(
        child: Column(
          children: [
             const CustomHomeCarousel(),
            FutureBuilder(
                future: futureList,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      itemCount: snapshot.data?.length,
                      itemBuilder: (context, index) {
                        final article = snapshot.data![index];
                        //return AnimalsView(article: article);
                        return article != null ?
                        AnimalsView(article: article)
                        : const CircularProgressIndicator();
                      },
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(
                      color: Colors.blue,
                      strokeWidth: 4,
                      strokeAlign: BorderSide.strokeAlignCenter,
                    ),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
