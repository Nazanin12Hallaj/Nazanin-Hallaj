import 'dart:io';

 class Products {
   final int productNumber;
   final String productName;
   final num productPrice;
   final int productCount;

   Products({required this.productNumber, required this.productName, required this.productPrice, required this.productCount});
   void print()=>'$productNumber - $productName $productPrice تومن و تعداد $productCount';

 }
class Shop  {
  static late List<dynamic> productList = [];


  void Opshions(){
    print('1-ثبت محصول   \n 2-نمایش فهرست \n 3-حذف محصول \n 4-ویرایش محصول  \n 5-نمایش لیست  \n 6-خروج ');
    print('شماره ی عملیاتی که مخواهید انجام دهید را وارد کنید:');


  }

  void products() {

    print('شماره ی محصول را وارد کن');
    String? input = stdin.readLineSync();
    int productNumber = int.parse(input!);
    productList.add(productNumber);
    while (productNumber ==(null)) {
      print(' شماره ی محصول رو وارد کنید:');
      String? input = stdin.readLineSync();
      int productNumber = int.parse(input!);
      productNumber == productNumber;
      productList.add(productNumber);

    }
    if (productNumber != (null)) {
      print('شماره ی محصول ثبت شد.');
    }
    print(
        'اگر نام محصول را میخواهید وارد کنید عدد 1 و اگر میخواهید انصراف دهید عدد 0 را وارد کنید');
    String? input1 = stdin.readLineSync();
    int number1 = int.parse(input1!);

    if (number1 == 1) {
      print('نام محصول را وارد کنید:');
      String? productName = stdin.readLineSync();
      productName == productName;
      productList.add(productName );
      while (productName == (null)) {
        print('نام محصول را وارد کنید:');
        String? productName = stdin.readLineSync();
        productName == productName;
        productList.add(productName );

      }
      if (productName != (null)) {
        print('نام محصول ثبت شد.');
      }
    } else{
      print(
          '1-ثبت محصول   \n 2-نمایش فهرست \n 3-حذف محصول \n 4-ویرایش محصول  \n 5-نمایش لیست  \n 6-خروج ');
      print('شماره ی عملیاتی که مخواهید انجام دهید را وارد کنید:');
      String? input = stdin.readLineSync();
      int number = int.parse(input!);
      number == number;

    }
    print(
        'قیمت محصول را میخواهید وارد کنید عدد 1 و اگر میخواهید انصراف دهید عدد 0 را وارد کنید:');
    String? input2 = stdin.readLineSync();
    int number2 = int.parse(input2!);

    if (number2 == 1) {
      print('قیمت محصول را وارد کنید:');
      String? input3 = stdin.readLineSync();
      int productPrice = int.parse(input3!);
      productList.add(productPrice );

      while (productPrice == (null) ){
        print('قیمت محصول را وارد کنید:');
        String? input2 = stdin.readLineSync();
        int productPrice = int.parse(input2!);
        productPrice == productPrice;
        productList.add(productPrice );

      }
      if (productPrice != (null)) {
        print('قیمت محصول ثبت شد.');
      }
    }else {
      print(
          '1-ثبت محصول   \n 2-نمایش فهرست \n 3-حذف محصول \n 4-ویرایش محصول  \n 5-نمایش لیست  \n 6-خروج ');
      print('شماره ی عملیاتی که مخواهید انجام دهید را وارد کنید:');
      String? input = stdin.readLineSync();
      int number = int.parse(input!);
      number == number;
    }
    print(
        'تعداد محصول را میخواهید وارد کنید عدد 1 و اگر میخواهید انصراف دهید عدد 0 را وارد کنید:');
    String? input4 = stdin.readLineSync();
    int number4 = int.parse(input4!);


    if (number4 == 1) {
      print('تعداد محصول رو وارد کنید:');
      String? input5 = stdin.readLineSync();
      int productCount = int.parse(input5!);
      productList.add(productCount );

      while (productCount ==(null) ){
        print('تعداد محصول رو وارد کنید:');
        String? input3 = stdin.readLineSync();
        int productCount = int.parse(input3!);
        productCount == productCount;
        productList.add(productCount );

      }
      if (productCount != (null)) {
        print('تعداد محصول ثبت شد.');
      }
    }
    else {
      print(
          '1-ثبت محصول   \n 2-نمایش فهرست \n 3-حذف محصول \n 4-ویرایش محصول  \n 5-نمایش لیست  \n 6-خروج ');
      print('شماره ی عملیاتی که مخواهید انجام دهید را وارد کنید:');
      String? input = stdin.readLineSync();
      int number = int.parse(input!);
      number == number;
    }
    print('محصولات با موفقیت ثبت شد.');
  }
  void productsList(){
    for(int i=0;productList!=null;i++) {
      productList;
      int a = productList[0+i];
      String b = productList[1+i];
      int c = productList[2+i];
      int d = productList[3+i];
      print('$a -$b $c toman and count is $d');
    }
  }

}


void main() {
 Shop shop = Shop();
  while (true) {
    shop.Opshions();
    String? input = stdin.readLineSync();
    int number = int.parse(input!);
    switch (number) {
      case 1:
        shop.products();
        break;
      case 2:
        shop.productsList();
        break;
      case 3 :

        break;
      case 4:

        break;
      case 5:

        break;
      case 6:

        break;
    }
  }
}