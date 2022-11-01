import 'package:final_project/models/category.dart';

//Membuat class CategoryOperations
class CategoryOperations {
  CategoryOperations._();
  //Membuat method static getCategories yang fungsinya mengambil variabel dari class Category
  static List<Category> getCategories() {
    return <Category>[
      //Data pertama diisi 'Variabel name' dan 'imageURL'
      Category('NieR: Automata',
          'https://c-cl.cdn.smule.com/rs-s78/arr/2c/18/91bea602-4688-4f36-a019-de27f33d1646.jpg'),
      Category('Final Fantasy',
          'https://c-cl.cdn.smule.com/rs-s40/arr/ef/a3/baf7b7b8-2e58-42e0-a82e-de767954e0d0.jpg'),
      Category('Kingdom Hearts',
          'https://tiermaker.com/images/templates/42431552010776.png'),
      Category('Undertale',
          'https://c-cl.cdn.smule.com/rs-s80/arr/5b/bf/58d9ab90-b649-4ee2-82f1-f6f15ec137fa.jpg'),
      Category('NieR: Replicant',
          'https://www.truetrophies.com/boxart/Game_12195.jpg'),
      Category('Zelda',
          'https://yuzu-emu.org/images/game/boxart/the-legend-of-zelda-breath-of-the-wild.png'),
    ];
  }
}
