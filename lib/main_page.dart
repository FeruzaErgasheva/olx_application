import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:olx_application/model/main_model.dart';
import 'package:olx_application/pages/galereya_page.dart';
import 'package:olx_application/pages/list_wiev_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentPageIndex = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "МЫ НАШЛИ БОЛЕЕ 100 ОБЪЯВЛЕНИЙ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.arrow_up_arrow_down,
                        size: 20,
                      ),
                    ),
                    PopupMenuButton(
                      popUpAnimationStyle: AnimationStyle(
                          curve: const FlippedCurve(Curves.easeInCirc),
                          duration: const Duration(milliseconds: 500)),
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            onTap: () {
                              setState(() {
                                _currentPageIndex = 1;
                              });
                            },
                            value: 1,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Галерея",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Gap(12),
                                _currentPageIndex == 1
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.greenAccent.shade400,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            onTap: () {
                              setState(() {
                                _currentPageIndex = 2;
                              });
                            },
                            value: 2,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Список",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Gap(12),
                                _currentPageIndex == 2
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.greenAccent.shade400,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                          PopupMenuItem(
                            onTap: () {
                              setState(() {
                                _currentPageIndex = 3;
                              });
                            },
                            value: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  "Плитка",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const Gap(12),
                                _currentPageIndex == 3
                                    ? Icon(
                                        Icons.done,
                                        color: Colors.greenAccent.shade400,
                                      )
                                    : const SizedBox(),
                              ],
                            ),
                          ),
                        ];
                      },
                      child: _currentPageIndex == 1
                          ? const Icon(CupertinoIcons.cube)
                          : _currentPageIndex == 2
                              ? const Icon(Icons.menu)
                              : const Icon(Icons.grid_view_outlined),
                    ),
                  ],
                )
              ],
            ),
            const Gap(20),
            _currentPageIndex != 3
                ? Expanded(
                    child: ListView.separated(
                      separatorBuilder: (context, index) {
                        return const SizedBox(height: 20);
                      },
                      itemCount: contents.length,
                      itemBuilder: (context, index) {
                        if (_currentPageIndex == 1) {
                          return GalereySection(
                            imgUrl: contents[index].imgUrl,
                            checkTop: contents[index].checkTop,
                            title: contents[index].title,
                            price: contents[index].price,
                            checkStatus: contents[index].checkStatus,
                            location: contents[index].location,
                            time: contents[index].time,
                            heightImg: 250,
                          );
                        } else if (_currentPageIndex == 2) {
                          return ListViewSection(
                            imgUrl: contents[index].imgUrl,
                            checkTop: contents[index].checkTop,
                            title: contents[index].title,
                            price: contents[index].price,
                            checkStatus: contents[index].checkStatus,
                            location: contents[index].location,
                            time: contents[index].time,
                          );
                        }
                      },
                    ),
                  )
                : Expanded(
                    child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisExtent: 380.0,
                      ),
                      itemCount: contents.length,
                      itemBuilder: (context, index) {
                        return GalereySection(
                          imgUrl: contents[index].imgUrl,
                          checkTop: contents[index].checkTop,
                          title: contents[index].title,
                          price: contents[index].price,
                          checkStatus: contents[index].checkStatus,
                          location: contents[index].location,
                          time: contents[index].time,
                          heightImg: 150,
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.favorite_border,
              color: Colors.grey,
            ),
            label: "Favorite",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_circle_outline_sharp,
              color: Colors.grey,
            ),
            label: "Add",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.messenger_outline_sharp,
              color: Colors.grey,
            ),
            label: "Message",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              CupertinoIcons.person,
              color: Colors.grey,
            ),
            label: "Profile",
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: SizedBox(
        height: 30,
        width: 150,
        child: FloatingActionButton(
          backgroundColor: const Color(0xff4155FA),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
          onPressed: () {},
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.white,
                size: 22,
              ),
              Text(
                "Сохранить поиск",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
