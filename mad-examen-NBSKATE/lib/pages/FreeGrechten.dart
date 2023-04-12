import 'package:flutter/material.dart';
import 'package:thuis_gemaakt/models/gerecht.dart';
import 'package:thuis_gemaakt/components/gerecht_item.dart';

class FreeGerechten extends StatefulWidget {
  const FreeGerechten({super.key});

  @override
  State<FreeGerechten> createState() => _FreeGerechtenState();
}

class _FreeGerechtenState extends State<FreeGerechten> {
  List<Gerecht> loadedGerecht = [
    Gerecht(
      id: 'p1',
      title: 'Bowl',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/01_Bowl.jpg',
    ),
    Gerecht(
      id: 'p2',
      title: 'Broccoli',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/02_Broccoli.jpg',
    ),
    Gerecht(
      id: 'p3',
      title: 'Curry',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/03_Curry.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Flammenkuchen',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/04_Flammenkuchen.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Pasta',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/05_Pasta.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Zalm',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/06_Zalm.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Burger',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/07_Sloppyjoe.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Burrito',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/08_Breakfast_Burrito.jpg',
    ),
    Gerecht(
      id: 'p4',
      title: 'Andijvie',
      description: '''Ingrediënten:

2 rijpe avocado's
1/2 tomaat, in kleine stukjes gesneden
1/4 ui, fijngehakt
1 teentje knoflook, fijngehakt
1/2 limoen, uitgeperst
zout en peper naar smaak
Bereidingswijze:

Snijd de avocado's in tweeën en verwijder de pit. Schep het vruchtvlees uit de schil en prak het fijn met een vork.
Voeg de tomaat, ui, knoflook en limoensap toe aan de geprakte avocado's en meng goed door elkaar.
Breng op smaak met zout en peper.
Serveer de guacamole dip met tortillachips of groentesticks.
Eet smakelijk!''',
      image: 'images/09_Andijvie.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Gratis Thuis Gemaakt',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: loadedGerecht.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 4,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
          ),
          itemBuilder: (context, i) => GerechtItem(
            id: loadedGerecht[i].id,
            title: loadedGerecht[i].title,
            image: loadedGerecht[i].image,
            description: loadedGerecht[i].description,
          ),
        ),
      ),
      bottomNavigationBar: Container(
        child: const Image(
          image: AssetImage('images/ad.png'),
        ),
      ),
    );
  }
}
