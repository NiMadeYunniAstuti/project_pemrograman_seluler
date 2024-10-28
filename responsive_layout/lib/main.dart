import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Data Obat',
      theme: ThemeData(
        primaryColor: Colors.grey[200],
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Data Obat'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<String> medicines = [
    'NAMA OBAT',
    'ACETYLCYSTEINE DRY SYR (NYTEX)',
    'ACETYLCYSTEINE TAB 200MG (ALSTEIN)',
    'Acetyl Sisteine',
    'ACICLOVIR CREAM (ACIFAR) 5GR',
    'AMLODIPINE TAB 10MG (ZEVASK)',
    'AMLODIPINE TAB 5MG (ZEVASK)',
    'AMOXICILIN SYR (YUSIMOX FORTE)',
    'ATTAPULGITE TAB (NEO ENTROSTOP)',
    'AZITHROMYCIN CAPS 500MG',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300], // Ganti warna AppBar
        title: const Text(
          'Data Obat',
          style: TextStyle(color: Colors.black), // Ganti warna teks AppBar
        ),
        iconTheme:
            const IconThemeData(color: Colors.black), // Ganti warna ikon AppBar
      ),
      body: Row(
        children: [
          // Menu section on the left
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.grey[200],
              child: ListView(
                children: <Widget>[
                  const DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.grey,
                    ),
                    child: Text(
                      'Menu',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.dashboard),
                    title: const Text('Dashboard'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Patient'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.production_quantity_limits),
                    title: const Text('Products & Servises'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.medication),
                    title: const Text('Medicine'),
                    contentPadding: const EdgeInsets.only(
                        left: 40.0), // Add padding to move it right
                    onTap: () {},
                  ),
                  // Add more items if needed
                ],
              ),
            ),
          ),
          // Data obat section on the right
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0), // Padding to move medicine section to the right
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          decoration: InputDecoration(
                            prefixIcon: const Icon(Icons.search),
                            hintText: 'Search obat',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text('+ Add'),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: medicines.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: Checkbox(
                            value: false,
                            onChanged: (bool? value) {},
                          ),
                          title: Text(medicines[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
