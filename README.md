import 'dart:io';

void main() {
  bool jakob = true;

  List<String>hambo = [
    " 1.Hin klassíski-2.000 Kr ",
    " 2.Ostborgari-2.000 Kr ",
    " 3.Beikonborgari-3.000 Kr ",
    " 4.Veganborgari-3.000 kr ",
  ];
  List<double> hamboVerd = [2.000, 2.000, 3.000, 3.000];

  List<String>franskar = [
    " 1.Franskar-Stór-1.000 Kr "
        " 2.Franskar-Lítill-800 Kr "
        " 3.Sætarfranskar-800 Kr "
  ];
  List<double> franskarVerd = [1.000, 800, 800];

  List<String>drykkir = [
    " 1.Kók-800 Kr "
        " 2.Peppsi-Max-800 Kr "
        " 3.Bjór-1.000 Kr "
        " 4.Fanta-800 Kr "
  ];
  List<String> kvot = [
    "1.Já"
        "2.Nei"
  ];
  List<double> drykkirVerd = [800, 1.000, 800];
  List <String> pontunList = [];
  //Veit að þessir listar eru óþarfir og vitlaust að hafa þá. Kerfið leyfir mér bara ekki að nota alltaf "pontun" sem lista.
  List <String> haList = [];
  List <String> hahaList = [];
  double heildarVerd = 0;


  String name = "JT Burgers";
  print("Verið velkomin/n á $name.");
  print("Hér eru okkar vinsælu hamborgarar");
  for (String burger in hambo) {
    print(burger);
  }
  print("Hvað má bjóða þér?Veldur tölu frá 1-4.");
  while (jakob == true) {
    String? pontun = stdin.readLineSync()?.toLowerCase() ?? '';
    int burgerIndex = int.tryParse(pontun) ?? 0;
    if (pontun.contains("1")) {
      pontunList.add(hambo[burgerIndex - 1]);
      print("Þú valdir ${hambo[burgerIndex - 1]}");
      print("Hvernig franskar má bjóða þér?");
    } else if (pontun.contains("2")) {
      pontunList.add(hambo[burgerIndex - 1]);
      print("Þú valdir${hambo[burgerIndex - 1]}");
      print("Hvernig franskar má bjóða þér?");
    } else if (pontun.contains("3")) {
      pontunList.add(hambo[burgerIndex - 1]);
      print("Þú valdir${hambo[burgerIndex - 1]}");
      print("Hvernig franskar má bjóða þér?");
    } else if (pontun.contains("4")) {
      pontunList.add(hambo[burgerIndex - 1]);
      print("Þú valdir ${hambo[burgerIndex - 1]}");
      print("Hvernig franskar má bjóða þér?");
    }
      for (String fran in franskar) {
        print(fran);
      }
      String? ha = stdin.readLineSync()?.toLowerCase() ?? '';
      int franIndex = int.tryParse(pontun) ?? 0;
      if (pontun.contains("1")) {
        pontunList.add(franskar[franIndex -1]);
        print("Þú valdir ${franskar[franIndex -1]}");
        print("Hvað má bjóða þér að drekka með máltíðini?");
      } else if (pontun.contains("2")) {
        pontunList.add(franskar[franIndex -1]);
        print("Þú valdir${franskar[franIndex -1]}");
        print("Hvað má bjóða þér að drekka með máltíðini?");
      } else if (pontun.contains("3")) {
        pontunList.add(franskar[franIndex -1]);
        print("Þú valdir${franskar[franIndex -1]}");
        print("Hvað má bjóða þér að drekka með máltíðini?");
      }

      for (String drykk in drykkir) {
        print(drykk);
      }
      String? haha = stdin.readLineSync()?.toLowerCase() ?? '';
      int drykkIndex = int.tryParse(pontun) ?? 0;
      if (pontun.contains("1")) {
        pontunList.add(drykkir[drykkIndex -1]);
        print("Þú valdir ${drykkir[drykkIndex -1]}");
        print("Þetta er þín pöntun");
      } else if (pontun.contains("2")) {
        pontunList.add(drykkir[drykkIndex -1]);
        print("Þú valdir ${drykkir[drykkIndex -1]}");
        print("Þetta er þín pöntun");
      } else if (pontun.contains("3")) {
        pontunList.add(drykkir[drykkIndex -1]);
        print("Þú valdir ${drykkir[drykkIndex -1]}");
        print("Þetta er þín pöntun");
      } else if (pontun.contains("4")) {
        pontunList.add(drykkir[drykkIndex -1]);
        print("Þú valdir ${drykkir[drykkIndex -1]}");
        print("Þetta er þín pöntun");
      }
    } jakob = false;
    print(pontunList);
    print("Takk fyrir að verla við JT-Burgers");
  }
