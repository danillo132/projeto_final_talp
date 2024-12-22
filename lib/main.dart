import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receitas Veganas',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        primaryColor: const Color(0xFF6CA965), // Verde Folha
        hintColor: const Color(0xFFF2A65A), // Laranja Suave
        scaffoldBackgroundColor: const Color(0xFFF9F5EB), // Bege Neutro
        textTheme: const TextTheme(
          displayLarge: TextStyle(
              color: Color(0xFF355E3B),
              fontSize: 24,
              fontWeight: FontWeight.bold), // Verde Musgo
          bodyLarge:
              TextStyle(color: Color(0xFF355E3B), fontSize: 16), // Verde Musgo
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF6CA965), // Verde Folha
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xFF6CA965), // Verde Folha
            foregroundColor: Colors.white, // Texto branco
            textStyle:
                const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
        ),
        cardTheme: CardTheme(
          color: Colors.white,
          shadowColor: Colors.grey.withOpacity(0.2),
          elevation: 4,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        ),
      ),
      home: const RecipeListScreen(),
    );
  }
}

class RecipeListScreen extends StatelessWidget {
  const RecipeListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Receitas Veganas'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: const [
          RecipeCard(
            title: 'Salada Verde Tropical',
            description: 'Uma salada fresca e nutritiva com manga e abacate.',
            imageUrl: 'https://via.placeholder.com/150',
          ),
          SizedBox(height: 16),
          RecipeCard(
            title: 'Sopa de Abóbora',
            description:
                'Uma sopa cremosa e reconfortante com temperos especiais.',
            imageUrl: 'https://via.placeholder.com/150',
          ),
        ],
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;

  const RecipeCard({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(fontSize: 18),
                ),
                const SizedBox(height: 8),
                Text(
                  description,
                  style: Theme.of(context).textTheme.bodyLarge,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
