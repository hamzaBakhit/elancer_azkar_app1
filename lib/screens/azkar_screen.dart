import 'package:elancer_azkar_app/screens/about_app_screen.dart';
import 'package:flutter/material.dart';

class AzkarScreen extends StatefulWidget {
  const AzkarScreen({Key? key}) : super(key: key);

  @override
  _AzkarScreenState createState() => _AzkarScreenState();
}

class _AzkarScreenState extends State<AzkarScreen> {
  int _counter = 0;
  String _content = 'الحمد لله';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ++_counter;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.teal,
      ),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actionsIconTheme: const IconThemeData(color: Colors.black),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'سبحة الاذكار',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          PopupMenuButton<String>(onSelected: (value) {
            if (_content != value) {
              setState(() {
                _content = value;
                _counter = 0;
              });
            }
          }, itemBuilder: (context) {
            return [
              const PopupMenuItem(
                child: Text(
                  'الحمد لله',
                ),
                value: 'الحمد لله',
              ),
              const PopupMenuItem(
                child: Text(
                  'أستغفر الله',
                ),
                value: 'أستغفر الله',
              ),
              const PopupMenuItem(
                child: Text(
                  'سبحان الله',
                ),
                value: 'سبحان الله',
              ),
            ];
          }),
          IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => AboutAppScreen(
                            message: 'hamza',
                          )));
            },
            // onPressed: () => Navigator.pushNamed(
            //   context,
            //   '/about_app',
            //   arguments: {
            //     'message' : 'HAMOUZ'
            //   }
            // ),
            icon: const Icon(Icons.info_outline),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.greenAccent,
            Colors.grey,
          ]),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('images/musabaha2.jpg'),
            ),
            Container(
              height: 60,
              margin: const EdgeInsets.only(top: 20, bottom: 20),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black45,
                    offset: Offset(5, 0),
                    blurRadius: 6,
                  ),
                ],
              ),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      _content,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  DecoratedBox(
                    decoration: const BoxDecoration(color: Colors.teal),
                    child: SizedBox(
                      width: 50,
                      height: double.infinity,
                      child: Center(
                        child: Text(
                          _counter.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.teal.shade700,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadiusDirectional.only(
                          topStart: Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        ++_counter;
                      });
                    },
                    child: const Text(
                      'تسبيح',
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.orange.shade700,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadiusDirectional.only(
                        bottomEnd: Radius.circular(10),
                      )),
                    ),
                    onPressed: () {
                      setState(() {
                        _counter = 0;
                      });
                    },
                    child: const Text(
                      'إعادة',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
