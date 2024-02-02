import 'bus.dart';

class Trip{
  final String origin;
  final String destination;
  final double ticketPrice;
  final Bus bus;
   int cancelReservations;
  int cancelPurchases;
  double totalTravelProfit;
  Trip(this.bus,{required this.origin,required this.destination,
    required this.ticketPrice}):cancelPurchases=0,cancelReservations=0,totalTravelProfit=0;
}