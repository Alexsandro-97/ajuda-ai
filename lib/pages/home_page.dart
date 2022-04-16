import 'dart:math';

import 'package:ajuda_ai/resources/color.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  SliverGridDelegateWithFixedCrossAxisCount get gridDelegate =>
      const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1,
      );

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = const [
      Tab(
        text: 'Teste',
      ),
      Tab(
        text: 'Teste',
      ),
      Tab(
        text: 'Teste',
      ),
      Tab(
        text: 'Teste',
      ),
      Tab(
        text: 'Teste',
      ),
      Tab(
        text: 'Teste',
      ),
      Tab(
        text: 'Teste',
      ),
      Tab(
        text: 'Teste',
      ),
    ];
    return DefaultTabController(
      initialIndex: 0,
      length: tabs.length,
      child: Padding(
        padding: const EdgeInsets.only(top: 30.0),
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            toolbarHeight: 140,
            backgroundColor: AppColors.backgroundColor,
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text(
                            'Bem vindo,',
                            style: TextStyle(
                              fontSize: 32,
                            ),
                          ),
                          Text(
                            'Alexsandro',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      const CircleAvatar(
                        backgroundColor: AppColors.primaryColor,
                        radius: 30,
                        child: Text(
                          'AJ',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: AppColors.backgroundColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 15),
                  Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: const Text(
                        'Qual a sua dúvida de hoje?',
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                ],
              ),
            ),
            bottom: TabBar(
              indicatorColor: AppColors.primaryColor,
              isScrollable: true,
              labelColor: AppColors.primaryColor,
              unselectedLabelColor: AppColors.primaryColor,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: tabs,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              ListView.builder(
                  itemCount: 4,
                  itemBuilder: ((context, index) {
                    return const ListTile(
                      title: Text('Teste'),
                      leading: CircleAvatar(
                        child: Text('HW'),
                      ),
                      subtitle: Text('Teste'),
                    );
                  })),
              GridView.builder(
                gridDelegate: gridDelegate,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                      color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)]);
                },
              ),
              const Center(
                child: Text("It's sunny here"),
              ),
              const Center(
                child: Text("It's sunny here"),
              ),
              const Center(
                child: Text("It's cloudy here"),
              ),
              const Center(
                child: Text("It's rainy here"),
              ),
              const Center(
                child: Text("It's sunny here"),
              ),
              const Center(
                child: Text("It's sunny here"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
