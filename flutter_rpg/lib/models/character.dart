import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {

  //constructor
  Character({
    required this.name,
    required this.vocation,
    required this.id,
    this.slogan,
  });

  // fields
  final Vocation vocation;
  final String name;
  final String id;
  String? slogan;
  bool _isFav = false;

  // getters
  bool get isFav => _isFav;

  void toggleIsFav() {
    _isFav = !_isFav;
  }
}