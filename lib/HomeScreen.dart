import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'HomeScreen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: false,
            bottom: TabBar(
              tabs: [
                Tab(
                  child: Icon(Icons.camera_alt),
                ),
                Tab(
                  child: Text('calls'),
                ),
                Tab(
                  child: Text('chats'),
                ),
                Tab(
                  child: Text('status'),
                ),
                Tab(
                  child: Text('call'),
                ),
                Icon(Icons.camera_alt),
              ],
            ),
            actions: [
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              PopupMenuButton(
                  icon: Icon(Icons.more_vert_outlined),
                  itemBuilder: (
                    context,
                  ) =>
                      [
                        PopupMenuItem(value: 1, child: Text('next group')),
                        PopupMenuItem(value: 2, child: Text('setting')),
                        PopupMenuItem(value: 3, child: Text('logout')),
                      ]),
              SizedBox(
                width: 10,
              ),
            ],
            title: Text('whatsapp'),
          ),
          body: TabBarView(
            children: [
              Text('camera'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return const ListTile(
                      leading: CircleAvatar(backgroundImage: NetworkImage('')),
                      title: Text('jacob'),
                      subtitle: Text('whats going on'),
                      trailing: Text('4 :10'),
                    );
                  }),
              Text('status'),
              ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    if (index == 0) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('New Updates'),
                            ListTile(
                              leading: Container(
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(color: Colors.grey)),
                                  width: 2,
                                  child: CircleAvatar(
                                      backgroundImage: NetworkImage(''))),
                              title: Text('jacob'),
                              subtitle: Text(index / 2 == 0
                                  ? 'you missed video call'
                                  : 'you missed a call'),
                              trailing: Icon(index / 2 == 0
                                  ? Icons.phone
                                  : Icons.video_call),
                            ),
                          ],
                        ),
                      );
                    } else {
                      return ListTile(
                        leading: Container(
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                border: Border.all(color: Colors.grey)),
                            width: 2,
                            child: CircleAvatar(
                                backgroundImage: NetworkImage(''))),
                        title: Text('jacob'),
                        subtitle: Text(index / 2 == 0
                            ? 'you missed video call'
                            : 'you missed a call'),
                        trailing: Icon(
                            index / 2 == 0 ? Icons.phone : Icons.video_call),
                      );
                    }
                  }),
            ],
          ),
        ));
  }
}
