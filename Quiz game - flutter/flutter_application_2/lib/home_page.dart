import 'package:flutter/material.dart';
import 'quiz_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Izaberi kategoriju',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xFF38a3a5),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Color(0xFFc7f9cc),
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: MediaQuery.of(context).padding.top),
            _buildAppBar(),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    _buildCategoryButton(
                        context, 'Matematika', Color(0xFF38a3a5), Icons.calculate),
                    SizedBox(height: 15.0),
                    _buildCategoryButton(
                        context, 'Istorija', Color(0xFF38a3a5), Icons.history),
                    SizedBox(height: 15.0),
                    _buildCategoryButton(
                        context, 'Geografija', Color(0xFF38a3a5), Icons.map),
                    SizedBox(height: 15.0),
                    _buildCategoryButton(
                        context, 'Informatika', Color(0xFF38a3a5), Icons.computer),
                    SizedBox(height: 15.0),
                    _buildCategoryButton(
                        context, 'Sport', Color(0xFF38a3a5), Icons.sports_soccer),
                    SizedBox(height: 15.0),
                    _buildCategoryButton(
                        context, 'Kultura', Color(0xFF38a3a5), Icons.palette),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return SizedBox(height: kToolbarHeight);
  }

  Widget _buildCategoryButton(
      BuildContext context, String category, Color color, IconData icon) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color.withOpacity(0.8), color],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.white,
            blurRadius: 8.0,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10.0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => QuizPage(category: category),
            ),
          );
        },
        child: Center(
          child: Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  color: Colors.white,
                ),
                SizedBox(width: 10.0),
                Text(
                  category,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
