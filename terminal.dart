import 'dart:core';
import 'dart:io';
import 'bus.dart';
import 'normal bus.dart';
import 'trip.dart';
import 'vip bus.dart';

class Terminal {
  List <Bus> listBuses = [];
  List <Trip> listTrip = [];


  void menu() {
    print('1_Definition of bus');
    print('2_Definition of travel');
    print('3_Preview available trips');
    print('4_Book a ticket');
    print('5_Buy ticket');
    print('6_Cancel the ticket');
    print('7_A trip report');
    print('8_Exit');
  }

  void createBus() {
    try{
    print('please input bus name:(0-refuse)');
    String? busName = stdin.readLineSync();
    while(busName==''){
      print('please input bus name:(0-refuse)');
      busName = stdin.readLineSync();
    }
    if(busName=='0'){
      option();
    }
    print('please input number of type bus: \n 1-normal  2-vip(0-refuse)');
    String? typeBus = stdin.readLineSync();
    while(typeBus=='' || typeBus!='1'&& typeBus!='2'&& typeBus!='0'){
      print('please input number of type bus: \n 1-normal  2-vip(0-refuse)');
      typeBus = stdin.readLineSync();
      if(typeBus=='0'){
        option();
      }
    }
    if (typeBus == '1') {
      listBuses.add(NormalBus(busName: busName!, chair:createNormalBus()));
    } else if (typeBus == '2') {
      listBuses.add(VipBus(busName: busName!, chair:createVipBus()));
    }
    else if(typeBus=='0'){
      option();
    }
    print('*****the bus was created*****');}
        catch(e){
      print('******input invalid.******');
        }
  }

  void createTrip() {
    try {
      List<Bus>normalBus = [];
      List<Bus>vipBus = [];
      print('please input number of type bus: \n 1-normal  2-vip(0-refuse)');
      String? typeBus = stdin.readLineSync();
      while (typeBus == '' ||
          typeBus != '1' && typeBus != '2' && typeBus != '0') {
        print('please input number of type bus: \n 1-normal  2-vip(0-refuse)');
        typeBus = stdin.readLineSync();
        if (typeBus == '0') {
          option();
        }
      }

      if (typeBus == '1') {
        for (int i = 0; i < listBuses.length; i++) {
          if (listBuses[i].type == 'normal') {
            normalBus.add(listBuses[i]);
          }
        }
        print(normalBus[0]);
        for (int i = 0; i < normalBus.length; i++) {
          print('${i + 1}-${normalBus[i].busName}');
        }
        print('select the desired option:(0-refuse)');
        int? index = int.parse(stdin.readLineSync()!);
        while (index! < 1 || index > normalBus.length) {
          print('select the desired option:(0-refuse)');
          index = int.parse(stdin.readLineSync()!);
        }
        if (index == 0) {
          option();
        }

        while (index == null) {
          print('select the desired option:(0-refuse)');
          index = int.parse(stdin.readLineSync()!);

          if (index == 0) {
            option();
          }
        }
        print('input the origin:(0-refuse)');
        String?origin = stdin.readLineSync();
        while (origin == '') {
          print('input the origin:(0-refuse)');
          origin = stdin.readLineSync();
        }
        if (origin == '0') {
          option();
        }
        print('input the destination:(0-refuse)');
        String?destination = stdin.readLineSync();
        while (destination == '') {
          print('input the destination:(0-refuse)');
          destination = stdin.readLineSync();
        }
        if (destination == '0') {
          option();
        }
        print('input the ticket price:(0-refuse)');
        double?ticketPrice = double.parse(stdin.readLineSync()!);
        while (ticketPrice == null) {
          print('input the ticket price:(0-refuse)');
          ticketPrice = double.parse(stdin.readLineSync()!);
        }
        if (ticketPrice == 0) {
          option();
        }
        listTrip.add(Trip(normalBus[index - 1], origin: origin!,
            destination: destination!,
            ticketPrice: ticketPrice));
      }
      else if (typeBus == '2') {
        for (int i = 0; i < listBuses.length; i++) {
          if (listBuses[i].type == 'vip') {
            vipBus.add(listBuses[i]);
          }
        }
        print(vipBus[0]);
        for (int i = 0; i < vipBus.length; i++) {
          print('${i + 1}-${vipBus[i].busName}');
        }
        print('select the desired option:(0-refuse)');
        int?index = int.parse(stdin.readLineSync()!);
        while (index! < 1 || index > normalBus.length) {
          print('select the desired option:(0-refuse)');
          index = int.parse(stdin.readLineSync()!);
        }
        if (index == 0) {
          option();
        }


        print('input the origin:(0-refuse)');
        String?origin = stdin.readLineSync();
        while (origin == '') {
          print('input the origin:(0-refuse)');
          origin = stdin.readLineSync();
        }
        if (origin == '0') {
          option();
        }
        print('input the destination:(0-refuse)');
        String?destination = stdin.readLineSync();
        while (destination == '') {
          print('input the destination:(0-refuse)');
          destination = stdin.readLineSync();
        }
        if (destination == '0') {
          option();
        }
        print('input the ticket price:(0-refuse)');
        double?ticketPrice = double.parse(stdin.readLineSync()!);
        while (ticketPrice == null) {
          print('input the ticket price:(0-refuse)');
          ticketPrice = double.parse(stdin.readLineSync()!);
        }
        if (ticketPrice == 0) {
          option();
        }
        listTrip.add(Trip(vipBus[index - 1], origin: origin!,
            destination: destination!,
            ticketPrice: ticketPrice));
      }
      else if (typeBus == '0') {
        option();
      }
      print('*****the trip was created*****');
    }catch(e){
      print('*****input invalid.*****');
    }
  }
  void travelShow(){
    for(int i=0;i<listTrip.length;i++ ){
      print('${i+1}_${listTrip[i].bus.busName}  ${listTrip[i].bus.type}  ${listTrip[i].origin}  ${listTrip[i].destination}  ${listTrip[i].ticketPrice}');

    }

  }
  List createNormalBus(){
    List number=[];
    for(int i=1 ;i<=44;i++){
      number.add(i);
    }
    return number;
  }
  List createVipBus(){
    List number=[];
    for(int i=1 ;i<=30;i++){
      number.add(i);
    }
    return number;
  }
  void showChair(chair) {
      var a = 0;
      for (var i in chair) {
        if (a < 9) {
          if (a % 2 != 0) {
            stdout.write('$i   ');
            stdout.write('     ');
          } else {
            stdout.write('$i   ');
          }
          a++;
          if (a % 4 == 0) {
            print('\n');
          }
        } else {
          if (a % 2 != 0) {
            stdout.write('$i  ');
            stdout.write('     ');
          } else {
            stdout.write('$i  ');
          }
          a++;
          if (a % 4 == 0) {
            print('\n');
          }
        }
      }
      print('\n');
  }
  void ticketReservation(){
    try{
    travelShow();
    print('Please enter the travel number:(0-refuse) ');
    int?number=int.parse(stdin.readLineSync()!);
    while(number! < 1 || number > listTrip.length  ){
      print('Please enter the travel number:(0-refuse) ');
      number=int.parse(stdin.readLineSync()!);
    }
    while(number==null){
      print('Please enter the travel number:(0-refuse) ');
      number=int.parse(stdin.readLineSync()!);
    }
    if(number==0){
      option();
    }
    createNormalBus();
    createVipBus();
    showChair( listTrip[number-1].bus.chair);
    print('Please input your chair number:(0-refuse)');
    int?number1=int.parse(stdin.readLineSync()!);
    while(number1!<1 ||number1>listTrip[number-1].bus.chair.length){
      print('Please input your chair number:(0-refuse)');
      number1=int.parse(stdin.readLineSync()!);
    }


    while(number1==null){
      print('Please input your chair number:(0-refuse)');
      number1=int.parse(stdin.readLineSync()!);

    }
    if(number1==0){
      option();
    }
    listTrip[number-1].bus.chair[number1-1]='rr';
    print('Please pay ${((listTrip[number-1].ticketPrice)*30)/100} of the ticket');
    double?number3=double.parse(stdin.readLineSync()!);
    while(number3==null){
      print('Please pay ${((listTrip[number-1].ticketPrice)*30)/100} of the ticket');
      number3=double.parse(stdin.readLineSync()!);
    }
    while(number3!=((listTrip[number-1].ticketPrice)*30)/100){
      print('Wrong payment amount please pay again:(0-refuse)');
      number3 =double.parse(stdin.readLineSync()!);
      if(number3==0){
        option();
      }
    }
    print('*******The chair was reserved********');
    }catch(e){
      print('*****input invalid.*****');
    }
  }
  void buyTickets() {
    try{
    travelShow();
    print('Please enter the travel number: (0-refuse)');
    int?number = int.parse(stdin.readLineSync()!);
    while(number! < 1 || number > listTrip.length  ){
      print('Please enter the travel number: (0-refuse)');
      number=int.parse(stdin.readLineSync()!);
    }
    while(number==null){
      print('Please enter the travel number: (0-refuse)');
      number = int.parse(stdin.readLineSync()!);
    }
    if(number==0){
      option();
    }
    createNormalBus();
    createVipBus();
    showChair(listTrip[number - 1].bus.chair);
    print('Please input your chair number:(0-refuse)');
    int?number1 = int.parse(stdin.readLineSync()!);
    while(number1! < 1 ||number1 >listTrip[number-1].bus.chair.length){
      print('Please input your chair number:(0-refuse)');
      number1 = int.parse(stdin.readLineSync()!);
    }
    while(number1==null){
      print('Please input your chair number:(0-refuse)');
      number1 = int.parse(stdin.readLineSync()!);
    }
    if(number1==0){
      option();
    }
    listTrip[number - 1].bus.chair[number1 - 1] = 'bb';
    print('Please pay ${listTrip[number - 1].ticketPrice} of the ticket');
    double?number3 = double.parse(stdin.readLineSync()!);
    while(number3==null){
      print('Please pay ${listTrip[number - 1].ticketPrice} of the ticket');
      number3 = double.parse(stdin.readLineSync()!);
    }
    while (number3 != listTrip[number - 1].ticketPrice) {
      print('Wrong payment amount please pay again:(0-refuse)');
      number3 = double.parse(stdin.readLineSync()!);
      if(number3==0){
        option();
      }
    }
    print('*******The chair was bought******');
    }catch(e){
      print('*****input invalid.*****');
    }
  }
  void ticketCansel() {
    try {
      travelShow();
      print('Please enter the travel number: (0-refuse)');
      int? number = int.parse(stdin.readLineSync()!);
      while (number! < 1 || number > listTrip.length) {
        print('Please enter the travel number: (0-refuse)');
        number = int.parse(stdin.readLineSync()!);
      }
      while (number == null) {
        print('Please enter the travel number: (0-refuse)');
        number = int.parse(stdin.readLineSync()!);
      }
      if (number == 0) {
        option();
      }
      createNormalBus();
      createVipBus();
      showChair(listTrip[number - 1].bus.chair);
      print('Please input your chair number:(0-refuse)');
      int ?number1 = int.parse(stdin.readLineSync()!);
      while (number1! < 1 || number1 > listTrip[number - 1].bus.chair.length) {
        print('Please input your chair number:(0-refuse)');
        number1 = int.parse(stdin.readLineSync()!);
      }

      while (number1 == null) {
        print('Please input your chair number:(0-refuse)');
        number1 = int.parse(stdin.readLineSync()!);
      }
      if (number1 == 0) {
        option();
      }
      if ((listTrip[number - 1].bus.chair[number1 - 1]) == 'rr') {
        print('${(listTrip[number - 1].ticketPrice) -
            (((listTrip[number - 1].ticketPrice) * 20) /
                100)}will be returned to you');
        listTrip[number - 1].cancelReservations++;
        listTrip[number - 1].totalTravelProfit +=
            (((listTrip[number - 1].ticketPrice) * 30) / 100) * 20 / 100;
      }
      else if ((listTrip[number - 1].bus.chair[number1 - 1]) == 'bb') {
        print('${(listTrip[number - 1].ticketPrice) -
            (((listTrip[number - 1].ticketPrice) * 10) /
                100)}will be returned to you');
        listTrip[number - 1].cancelPurchases++;
        listTrip[number - 1].totalTravelProfit +=
            ((listTrip[number - 1].ticketPrice) * 10) / 100;
      }
      listTrip[number - 1].bus.chair[number1 - 1] = number1;
      print('number of cancel Reservations:${listTrip[number - 1]
          .cancelReservations}');
      print(
          'number of cancel Purchases:${listTrip[number - 1].cancelPurchases}');
      print('interest sum:${listTrip[number - 1].totalTravelProfit}');

      print('*******The ticket was cansel ******');
    }catch(e){
      print('****input invalid.*****');
    }


  }
  void tripReport(){
    try {
      travelShow();
      print('Please enter the travel number:(0-refuse) ');
      int?number = int.parse(stdin.readLineSync()!);
      while (number! < 1 || number > listTrip.length) {
        print('Please enter the travel number:(0-refuse) ');
        number = int.parse(stdin.readLineSync()!);
      }
      while (number == null) {
        print('Please enter the travel number:(0-refuse) ');
        number = int.parse(stdin.readLineSync()!);
      }
      if (number == 0) {
        option();
      }
      int chair = 0;
      for (int i = 0; i < listTrip[number - 1].bus.chair.length; i++) {
        if (listTrip[number - 1].bus.chair[i] == i + 1) {
          chair++;
        }
      }
      double? totalPrise;
      if (listTrip[number - 1].bus.chair.length == 44) {
        totalPrise = listTrip[number - 1].ticketPrice +
            (44 - chair) * listTrip[number - 1].ticketPrice;
      } else if (listTrip[number - 1].bus.chair.length == 30) {
        totalPrise = listTrip[number - 1].ticketPrice +
            (30 - chair) * listTrip[number - 1].ticketPrice;
      }
      print(
          'Total price:$totalPrise \nEmpty chair:$chair \nCancel reserve:${listTrip[number -
              1].cancelReservations} \nCancel buy:${listTrip[number - 1]
              .cancelPurchases} ');
    }catch(e){
      print('****input invalid.****');
    }
  }

  void option() {

    menu();
    while (true) {
      print('Input the number of the desired option:(0-refuse)');
      String? number = stdin.readLineSync();
      switch (number) {
        case '1':
          createBus();
          option();
          break;
        case '2':
          createTrip();
          option();
          break;
        case '3':
          travelShow();
          print('********* my travel list is created*********');
          option();
          break;
        case '4':
          ticketReservation();
          option();
          break;
        case '5':
          buyTickets();
          option();
          break;
        case '6':
          ticketCansel();
          option();
          break;
        case '7':
          tripReport();
          option();
          break;
        case '8':
          print('*good bye*');
          break;
          default:
            option();
           break;

      }

    }
  }
}