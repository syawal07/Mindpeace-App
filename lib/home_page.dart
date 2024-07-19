import 'package:flutter/material.dart';
import 'package:mindpeace/widgets/article_card.dart';
import 'package:mindpeace/widgets/team_card.dart';
import 'journal_page.dart'; // Pastikan jalur ini benar

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background Color
          Positioned.fill(
            child: Container(
              color: Colors.teal, // Background color
            ),
          ),
          // Content
          SingleChildScrollView(
            child: Column(
              children: [
                // Jumbotron
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 50),
                      Icon(
                        Icons.spa,
                        size: 100,
                        color: Colors.white.withOpacity(0.8),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Welcome to MindPeace',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(
                              color: Colors.white,
                              fontSize: 36,
                              fontWeight: FontWeight.bold,
                            ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Text(
                          'Your journey to better mental health starts here. Explore our features to find meditation guides, insightful articles, and personal journaling tools to help you stay balanced and positive.',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    color: Colors.white.withOpacity(0.9),
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                      SizedBox(height: 30),
                      ElevatedButton(
                        onPressed: () {
                          // Navigate to JournalPage
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => JournalPage()),
                          );
                        },
                        child: Text('Get Started'),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.teal,
                          padding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 15),
                          textStyle: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // About Section
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Meet Our Team',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      TeamCard(
                        image: 'assets/images/hana.jpg',
                        name: 'Marhama Hasana',
                        role: 'Project Manager, UI/UX Designer',
                        description:
                            'Hana is the lead developer and mastermind behind the MindPeace app.',
                      ),
                      SizedBox(height: 16),
                      TeamCard(
                        image: 'assets/images/rizqa.jpg',
                        name: 'Miftahul Rizqha',
                        role: 'Frontend Developer, Firebase Integration',
                        description:
                            'Mifta ensures that the app is user-friendly and visually appealing.',
                      ),
                      SizedBox(height: 16),
                      TeamCard(
                        image: 'assets/images/reja.jpg',
                        name: 'Reza DIva Alfiansyah',
                        role: 'Backend Developer, Database Integration',
                        description:
                            'Reza oversees the project and ensures everything is on track.',
                      ),
                    ],
                  ),
                ),
                // Articles Section
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Featured Articles',
                        style:
                            Theme.of(context).textTheme.headlineSmall!.copyWith(
                                  color: Colors.white,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 20),
                      // Grid of Articles
                      SizedBox(
                        height: 200, // Adjust height as needed
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1, // Show one card per row
                            crossAxisSpacing: 16,
                            mainAxisSpacing: 16,
                            childAspectRatio:
                                0.75, // Adjust aspect ratio as needed
                          ),
                          itemCount: 1, // Number of items
                          itemBuilder: (context, index) {
                            return ArticleCard(
                              image:
                                  'assets/images/gb1.jpg', // Update to your single image
                              title: 'Understanding Mindfulness',
                              description:
                                  'A deep dive into the practices and benefits of mindfulness meditation.',
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
