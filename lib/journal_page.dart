import 'package:flutter/material.dart';
import 'package:mindpeace/widgets/journal_entry_form.dart';
import 'package:provider/provider.dart';
import '../models/journal_entry_model.dart'; // Pastikan jalur ini benar

class JournalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Journal'),
        backgroundColor: Colors.teal,
      ),
      body: Consumer<JournalEntryModel>(
        builder: (context, journalModel, child) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  padding: EdgeInsets.all(8.0),
                  itemCount: journalModel.entries.length,
                  itemBuilder: (context, index) {
                    final entry = journalModel.entries[index];
                    return Card(
                      margin: EdgeInsets.symmetric(vertical: 8.0),
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.all(16.0),
                        title: Text(
                          entry.title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        subtitle: Text(
                          entry.content,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                        ),
                        trailing: Icon(Icons.edit, color: Colors.teal),
                        onTap: () {
                          // Implement edit functionality
                        },
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: JournalEntryForm(),
              ),
            ],
          );
        },
      ),
    );
  }
}
