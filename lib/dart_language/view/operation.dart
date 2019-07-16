import 'package:flutter/material.dart';

class OperationView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("运算符"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  child: Text(
                    "算数运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        算数运算符通常用来进行简单的数据运算，例如加减乘除等。
        四则运算是数学中最基础的运算类型。“+”用来进行相加运算，在Dart中，并非只有数值才支持加运算，字符串，列表，Map等数据类型也支持进行相加运算。
        "-"用来进行减法运算，当符号“-”只有一个操作数时，实际上是负号运算符，即将正数变成负数，负数变成正数。
        乘法运算使用运算符“*”来描述，除法运算使用运算符“/”描述，除法运算符无论其操作数是整数还是小数，其都会返回浮点数，如果要进行整除运算，可以使用“~/”运算符，"%"用来进行取模运算。
        和C语言类似，Dart中也支持自增与自减运算符。这两个运算符让很多编程初学者头疼不已，其实掌握了其中的规律，理解他们也很简单。首先，无论是自增运算符“++”还是自减运算符“--”,其都只有一个操作数，他们可以出现在操作数的前面，也可以出现在操作数的后面，前后的差异将使计算结果完全不同。
自增运算符的作用是在当前值的基础上进行自加1，即会改变当前变量的值，例如：
var a = 3;
a++;
print(a);//4
++a;
print(a);//5
从上面代码来看，无论是++a还是a++，其执行完成后，都使原变量a的值增加了1。a++的作用其实除了将变量a加1外，还会将a增加前的原始值返回，而++a的作用除了将变量a加1外，会将计算后变量a最新的值返回，从下面打印就可以清楚看到前置与后置的区别了：
print(a++);//打印3 这时a变成了4
print(++a);//打印5 这时a变成了5
同样，“--”运算符和“++”运算符的逻辑基本一致，只是其作用是将变量的值进行减1操作。

''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "比较运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        比较运算符的作用是进行两个值的比较。虽然在Dart中，比较运算符的操作数可以是任意类型的值，但是对于List、Map或String对象，一般会使用函数来进行比较，比较运算符更多用于数值直接的比较。可用的比较运算符列举如下：
运算符	意义
==	进行相等比较运算
!=	进行不相等比较运算
>	进行大于比较运算
<	进行小于比较运算
>=	进行大于等于比较运算
<=	进行小于等于比较运算
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "类型运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        Dart中的类型运算符有3种，as、is和is!。其中as运算符用来进行类型的“转换”，需要注意，这里的类型转换并不是真正意义上的转换，其并不会真正修改数据的类型，而是告诉Dart将当前数据当成某个类型的数据来进行处理。在面向对象开发中，这个运算符非常有用，后面我们会介绍。is运算符用来判断数据是否属于某个类型，如果属于则返回布尔值true，如果不属于则返回布尔值false。is!运算符的作用则与is刚好相反，它用来判断数据是否不属于某个类型
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "复合运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        复合运算符简单理解是多种简单运算符的复合。复合运算符通常也叫做赋值复合运算符，因为其总是一种运算符与赋值运算符的组合。
运算符	意义
+=	复合加运算符
-=	复合减运算符
/=	复合除运算符
*=	复合乘运算符
~/=	复合整除运算符
%=	复合取余运算符
<<=	复合左移运算符
>>=	复合右移运算符
&=	复合按位与运算运算符
^=	复合按位异或运算运算符
|=	复合按位或运算运算符
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "逻辑运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        逻辑运算符是针对布尔值进行运算的运算符。我们知道，布尔值只有两种：true和false。逻辑运算符所适用的操作数也只有true或者false。
“!”被称为逻辑非运算符，进行逻辑非运算，它是一个前置运算符，且只有一个操作数，当操作数为布尔值true时，运算结果为布尔值false，当操作数为布尔值false时，运算结果为布尔值true。例如：
print(!false);//true
print(!true);//false
“||”被称为逻辑或运算符，进行逻辑或运算，逻辑或运算遵守下面的运算规则：
1：当两个操作数中有至少一个操作数为true时，运算结果为true。
2：当两个操作数都为false时，运算结果才为false。
示例代码如下：
print(false||false);//false
print(false||true);//true
print(true||false);//true
print(true||true);//true
“&&”被称为逻辑与运算符，进行逻辑与运算，逻辑与运算遵守下面的运算规则：
1：当两个操作数中有至少一个操作数为false时，运算结果为false。
2：当两个操作数都为true时，运算结果为true。
示例代码如下：
print(false&&false);//false
print(true&&false);//fasle
print(false&&true);//false
print(true&&true);//true

''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "位运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        位运算符是对二进制位进行操作的运算符。首先，在计算机中，所有的数据存储实际上采用的都是二进制。计算机元器件的高低电位对支持二进制计数有着先天的优势，对于二进制，每一个数位上只有0或1两种情况，逢二进一。例如十进制数10使用二进制表示为1010。
“&”用来进行按位与运算，所谓按位与运算，是指将两个运算符的每一个二进制位分别进行与运算，即如果两个对应二进制位都为1则运算结果为1，否则为0。例如将10与3进行按位与运算，结果为2：
var a = 10; //二进制 1010
var b = 3;  //二进制 0010
print(a&b);//2  即二进制0010
“|”用来进行按位或运算，与按位与运算一样，按位或运算将两个运算数的每个二进制位分别进行或运算，如果两个对应二进制位有一个为1，则运算结果为1，否则运算结果为0，将10与4进行按位或运算，结果为14，如下：
var c = 10; //二进制 1010
var d = 4;  //二进制 0100
print(c|d);//14  即二进制1110
    “~”用来进行按位非运算，并且按位非运算是一个前置的单元运算符，其只有一个操作数，对操作数的每一个二进制位进行取反，即为0的位运算后结果为1，为1的位运算后结果为0。将4进行按位取反运算，结果为-5，如下：
var e = 4;  //00000100
print(~e);  //11111011   以补码表示 原码为00000101 且为负数 即-5
理解按位非运算之前，首先需要了解在计算机中负数的表示方法，正数就是用其二进制的原码来表示，而负数则是使用补码的方式，即首先将负数的绝对值转换成二进制，然后进行按位取反操作，最后再加1。例如-5的绝对值为5，二进制表示为00000101，按位取反后为11111010，加1后为11111011，这个数就是计算机内存中-5的表达形式，当需要取数时，会将首位作为符号位，首位为1，则表示为负数，首位为0，则表示为正数，然后再根据正数和负数的不同规则将二进制码转换成真正的数值。
“^”用来进行按位异或运算，关于按位异或运算，你只需要牢记进行运算的两个数位相同时，运算结果为0，否则运算结果为1即可。即两个二进制位都为0或者都为1时，运算结果为0，否则运算结果为1。例如：
var f = 3; // 0011
var g = 5; // 0101
print(f^g);// 0110   十进制6
“<<”用来进行按位左移运算，即将每一个二进制位向左移动指定位数，对于二进制数据，一个很重要的特点是每左移一位，会使原数值进行乘2操作。例如：
var h = 3;//0011
print(h<<1);//0110   十进制6
同样，“>>”用来进行按位右移操作，例如：
var i = 4;//0100  
print(i>>1);// 0010   十进制2
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "条件运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    r'''        条件运算符与流程控制语句中的条件语句作用很像。这是一种更简洁的实现条件逻辑的方式。首先来看如下代码片段：
main() {
	var a = 3;
	var b = 5;
	var res = a>b ? "a>b" : "a<=b";
	print(res);//a<=b
}
运行代码，控制台将输出字符串“a<=b”。我们来逐步分析下上面的逻辑，首先定义两个变量a与b，a的值为3，b的值为5，之后使用条件运算符进行条件逻辑运算,条件运算符“?:”是一个三元的运算符，其有3个操作数，第一个操作数可以是一个布尔值或者运算结果为布尔值的表达式，当这个操作数为true时，条件运算的结果为第二个操作数的值，当第一个操作数为false时，条件运算的结果为第三个操作数的值。
在实际的开发中，很多时候我们需要判断某个变量的值是否为null，不为null的时候再来做某些操作，使用条件运算符代码如下：
var c = null;
print(c==null?"无作为":"额外操作a:$c");
针对于这种判空逻辑，可以使用Dart中的空条件运算符进行再次的简化，示例代码如下：
var c = 3;
print(c??"无作为");
“??”是Dart中的空条件运算符，其有两个操作数，第一个操作数如果为null，则运算后的值为第二个操作数的值，第一个操作数如果为非null值，则运算后的值为第一个操作数的值，这个运算符最大的作用是可以保证运算的结果不为bull值，通常用来进行安全保证。
空条件运算符也可以和赋值运算符结合组成复合运算符，示例如下：
var c = null;
c ??= 0;//与c = c??0;意义完全一样
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "级联运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    r'''        级联运算符是Dart中比较高级的一种运算符，它可以让开发者对某个对象连续的进行一系列的操作。这样的好处是可以减少中间变量的生成，并且让开发者更畅快的体验Dart编码的乐趣。
级联运算符使用“..”表示，在学习之前，我们需要先初步有一些类的知识，关于类，后面会有专门的章节进行讲解，这里你只需要了解类中属性的相关概念即可。首先，通过前面的学习，我们知道在Dart中整数、浮点数以及字符串都是对象，这些对象是由类构造出来的，类中定义了对象的属性和方法。我们也可以定义自己的类，例如下面定义了一个People类：
class People {
	String name;
	int    age;
}
People类中分别定义了两个属性，姓名与年龄。在构造类对象后，可以使用点语法来对属性进行赋值，例如：
var p = People();
p.name = "珲少";
p.age = 26;
print("name:${p.name},age:${p.age}");//name:珲少,age:26
如上代码所示，从对象的创建到属性的赋值完成，使用了3行代码，使用级联运算符，可以一行代码搞定同样的事情，如下：
var p =People()..name="珲少"..age=26;
print("name:${p.name},age:${p.age}");
简介来说，级联运算符的作用是对对象连续的执行一组操作，操作可以是对对象的赋值，也可以是对对象方法的调用。
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "点运算符",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
      Container(
        child: Text(
          r'''        点运算符用来进行对象的属性和方法操作。例如对象属性的赋值和获取，对象方法的调用等都使用点运算符来完成，例如：
class People {
	String name;
	int    age;
	void printSelf(){
		print("name:${name},age:${age}");
	}
}
main() {
	var p = People();
	p.name = "珲少";
	p.age = 26;
	p.printSelf();//name:珲少,age:26
}
如果使用点运算符取了一个对象中不存在的属性或调用了对象中不存在的方法，则会抛出异常，同样如果对null值使用点运算符也会产生错误，在实际开发中，一个变量是否为null往往不能完全确定，在Dart中还有一种更加完全的对象取属性或调方法的运算符：条件成员访问运算符“?.”。这个运算符的作用是如果所调用的对象是非null值，则会正常进行访问，否则会返回null，但是不会产生错误。例如：
var c = null;
print(c?.a);//null
''', style: TextStyle(fontSize: 18),
        ),
          margin: EdgeInsets.only(
            top: 20,
          )),
            ],
          ),
          padding: EdgeInsets.all(20),
        ),
      ),
    );
  }
}