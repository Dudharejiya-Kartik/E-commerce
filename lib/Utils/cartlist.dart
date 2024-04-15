List addtocartimage = [];

List addtocartname = [];

List addtocartprice = [];

List numberofitems = [];

List addcartclicks = [];

int subtotal = 0;

var subtottemp;

double sumUsingLoop(List<dynamic> numbers) {
  double sum = 0;
  for (double number in numbers) {
    sum += number;
  }
  return sum;
}

// List fi = List.filled(addtocartprice.length + 5, 0, growable: true);

dynamic sumUsing(List<dynamic> numbers, int ship) {
  dynamic tum = 0;

  for (dynamic number in numbers) {
    tum += number;
  }
  return tum + ship;
}

double total() {
  double totalamount = 0;
  for (int i = 0; i < addtocartprice.length; i++) {
    totalamount += addtocartprice[i] * numberofitems[i];
  }
  return totalamount;
}

double checkout = 0;
