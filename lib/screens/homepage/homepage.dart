import 'package:final_exma/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController Search = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xffDFF2D1),
        elevation: 0,
        title: const Text('\tContact', style: TextStyle(color: Colors.black)),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, right: 16, left: 16, bottom: 16),
        child: Column(
          children: [
            TextFormField(
              controller: Search,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                labelText: 'Search contacts',
                prefixIcon: Icon(Icons.search_outlined),
                suffixIcon: Icon(Icons.mic_none_outlined),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.separated(
                itemCount: 20,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) => GestureDetector(
                  onTap: () {
                    Get.toNamed(Routes.detail);
                  },
                  child: const ListTile(
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                      ),
                    ),
                    title: Text(
                      'Name',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    subtitle: Text(
                      'Number',
                      style: TextStyle(color: Colors.grey, fontSize: 16),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: const Color(0xffDFF2D1),
        onPressed: () {
          Get.toNamed(Routes.detail);
        },
        child: const Icon(Icons.add, color: Color.fromARGB(255, 255, 255, 255)),
      ),
    );
  }
}
