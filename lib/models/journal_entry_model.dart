import 'package:flutter/material.dart';
import 'journal_entry.dart'; // Pastikan jalur ini benar

class JournalEntryModel extends ChangeNotifier {
  final List<JournalEntry> _entries = [];

  List<JournalEntry> get entries => _entries;

  void addEntry(JournalEntry entry) {
    _entries.add(entry);
    notifyListeners();
  }
}
