import 'dart:io';

void main() {
  bool ordering = true;
  List<String> hambo = [
    "1. Hin klassíski - 2000 Kr",
    "2. Ostborgari - 2000 Kr",
    "3. Beikonborgari - 3000 Kr",
    "4. Veganborgari - 3000 Kr",
  ];
  List<double> hamboVerd = [2000, 2000, 3000, 3000];

  List<String> franskar = [
    "1. Franskar-Stór - 1000 Kr",
    "2. Franskar-Lítill - 800 Kr",
    "3. Sætarfranskar - 800 Kr",
  ];
  List<double> franskarVerd = [1000, 800, 800];

  List<String> drykkir = [
    "1. Kók - 800 Kr",
    "2. Peppsi-Max - 800 Kr",
    "3. Bjór - 1000 Kr",
    "4. Fanta - 800 Kr",
  ];
  List<double> drykkirVerd = [800, 800, 1000, 800];

  List<String> pontunList = [];
  double heildarVerd = 0;

  print("Verið velkomin/n á JT Burgers.");
  print("Hér eru okkar vinsælu hamborgarar");

  for (String burger in hambo) {
    print(burger);
  }
print("Hvaða hamborgara má bjóða þér í dag?");
  while (ordering) {
    String? pontun = stdin.readLineSync()?.toLowerCase() ?? "";
    int burgerIndex = int.tryParse(pontun) ?? 0;
    if (burgerIndex > 0 && burgerIndex <= hambo.length) {
      pontunList.add(hambo[burgerIndex - 1]);
      heildarVerd += hamboVerd[burgerIndex - 1];
      print("Þú bættir við ${hambo[burgerIndex - 1]}.");
      print("Hvernig franskar má bjóða þér með borgaranum?");
      for (String fry in franskar) {
        print(fry);
      }

      String? friesOption = stdin.readLineSync()?.toLowerCase() ?? "";
      int friesIndex = int.tryParse(friesOption) ?? 0;

      if (friesIndex > 0 && friesIndex <= franskar.length) {
        pontunList.add(franskar[friesIndex - 1]);
        heildarVerd += franskarVerd[friesIndex - 1];
        print("Þú bættir við ${franskar[friesIndex - 1]}.");

        // Drinks selection
        print("Hvað má bjóða þér að drekka með máltíðinni?");
        for (String drink in drykkir) {
          print(drink);
        }

        String? drinkOption = stdin.readLineSync()?.toLowerCase() ?? "";
        int drinkIndex = int.tryParse(drinkOption) ?? 0;

        if (drinkIndex > 0 && drinkIndex <= drykkir.length) {
          pontunList.add(drykkir[drinkIndex - 1]);
          heildarVerd += drykkirVerd[drinkIndex - 1];
          print("Þú bættir við ${drykkir[drinkIndex - 1]}.");
        }
        print("Hér er pöntunin þín");
        print(pontunList);
      }
      }}}

