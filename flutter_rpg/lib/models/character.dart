import 'package:flutter_rpg/models/skill.dart';
import 'package:flutter_rpg/models/stats.dart';
import 'package:flutter_rpg/models/vocation.dart';

class Character with Stats {

  //constructor
  Character({
    required this.name,
    required this.vocation,
    required this.id,
    required this.slogan,
  });

  // fields
  final Set<Skill> skills = {};
  final Vocation vocation;
  final String name;
  final String id;
  final String slogan;
  bool _isFav = false;

  // getters
  bool get isFav => _isFav;

  void toggleIsFav() {
    _isFav = !_isFav;
  }

  void updateSkill(Skill skill) {
    skills.clear();
    skills.add(skill);
  }
}

// dummy character data

List<Character> characters = [
  Character(id: '1', name: 'Klara', vocation: Vocation.wizard, slogan: 'Legendary!'),
  Character(id: '2', name: 'Johnny', vocation: Vocation.junkie, slogan: 'Light \'em up...'),
  Character(id: '3', name: 'Crimson', vocation: Vocation.raider, slogan: 'Fire in the hole!'), 
  Character(id: '4', name: 'Shaun', vocation: Vocation.ninja, slogan: 'Let\'s do this.')
];