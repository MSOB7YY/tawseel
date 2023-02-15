import 'package:tawseel/core/enums.dart';

class Order {
  late final OrderState state;
  late final int orderNumber;
  late final String location;
  late final DateTime dateTime;
  late final int price;

  Order(this.state, this.orderNumber, this.location, this.dateTime, this.price);
}
