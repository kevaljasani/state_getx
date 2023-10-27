import 'package:get/get.dart';

class second extends GetxController
{

  int a=0,b=0;
  RxInt sum=0.obs;

  fun_sum(String s1, String s2)
  {
    a=int.parse(s1);
    b=int.parse(s2);

    sum.value=a+b;
  }
}
