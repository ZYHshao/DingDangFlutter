import 'package:flutter/material.dart';

class FlowControlView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("流程控制语句"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  child: Text(
                    "条件分支语句",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        条件分支语句是Dart中分支语句的一种，当被判定的值或者表达式符合某个条件时，才执行预定的逻辑代码。和许多编程语言类似，Dart中也使用if-else结构作为条件分支语句。示例代码如下：
main() {
	var res = true;
	if (res){
		print("成功");
	}
	print("程序结束");
}
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "循环语句",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        使用循环语句，我们可以不依赖公式的进行大量等差数值求和运算，示例如下：
var x = 1;
var total = 0;
while(x<=100){
	total+=x;
	x++;
}
print(total);
本节，我们就一起来学习Dart中循环语句的用法。
Dart中支持4种类型的循环，如上代码所示while循环是最为简单的一种，其while关键字后面的小括号中需要填入要判定的条件表达式或布尔值变量，当判定为true，即条件成立时，会执行循环体中的代码块，当代码块执行完成后，程序会回到while条件判定处，再次判定条件是否成立，如果成立则会继续执行循环体内的代码块，如此循环直到条件不再成立为止。因此，对于whlie循环结构，一般会在循环体中进行判定条件的修改，否则程序会陷入无限循环，永远无法跳出while循环结构了。
while语句还有一种变种，叫做do-while，它的结构如下：
do{
循环体
}while(条件);
do-while结构和while结构的区别在于，while语句会首先进行循环条件的判定，如果不满足就不再执行循环体，满足条件才会进行循环，而do-while语句则是首先执行一次循环体中的代码，之后进行循环条件的判定，如果满足则会继续执行循环体，如果不满足则跳出循环，例如：
do{
	total+=x;
	x++;
}while(x<=100);
for循环也是一种非常常用的循环结构，并且相对于while循环，for循环的写法更加简洁，使用for循环解决同样的累加问题，示例代码如下：
var total = 0;
for(var i =0;i<=100;i++){
	total+=i;
}
for循环的结构示意如下：
for(变量初始化;判定条件;完成循环体后的操作){
    循环体
}
在for关键字后的小括号中需要填入3个表达式，其中第1个表达式用来初始化循环变量，这个变量用来控制循环执行的次数，第2个表达式为循环的判定条件，不满足条件时会跳出循环，第3个表达式会在每次循环体执行结束后执行，一般用来对循环变量进行操作。
很多时候，我们使用循环语句都是用来对集合对象进行遍历，例如下面的代码会将列表中所有的元素依次进行打印：
var col = [1,2,3,4];
for(var i = 0;i<col.length;i++){
	print(col[i]);
}
针对于集合类型对象的遍历，for-in循环是一种更加快速的方式，for-in语句也被称为迭代语句，专门用来进行集合遍历，例如：
var col = [1,2,3,4];
for(var number in col){
	print(number);
}
for-in语句的结构如下：
for(变量 in 集合){
循环体
}
在for-in语句中，in关键字前为对象变量，每次循环后都会将集合中遍历出的元素赋值给这个变量，in关键字后为要进行遍历的集合，集合中的元素会被依次取出赋值给对象变量，并执行循环体中的代码。
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "中断语句",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        中断语句常常与循环语句配合使用，中断语句的用途是提前中断循环。对于上一小节的等差数列累加问题，使用下面的代码也可以很好的解决：
main() {
	var i = 1;
	var res = 0;
	while(true){
		res+=i;
		i++;
		if(i>100){
			break;
		}
	}
	print(res);//5050
}
上面的break语句就是中断语句，当代码执行到break语句时，会直接跳出当前的循环执行后面的代码，因此，即是我们不对循环的判定条件做操作，在循环过程中也很容易就可以结束循环。
Dart中还提供了一个很常用的中断语句：continue语句。和break语句不同的是，break语句会直接跳出本层循环，执行循环后面的代码，而continue语句则是跳过本次循环，之后还是会进行循环条件的判定，如果条件依然满足，会继续执行循环。示例代码如下：
//下面的循环将不会输出任何信息 直接被跳过
for(var j=0;j<3;j++){
	if(j==0){
		break;
	}
	print(j);
}
//下面的循环的第一次循环将会被跳过 之后正常 将输出1 2
for(var j=0;j<3;j++){
	if(j==0){
		continue;
	}
	print(j);
}
''',
                    style: TextStyle(fontSize: 18),
                  ),
                  margin: EdgeInsets.only(
                    top: 20,
                  )),
              Center(
                child: Container(
                  child: Text(
                    "多分支选择语句",
                    style: TextStyle(color: Colors.grey, fontSize: 24),
                  ),
                  margin: EdgeInsets.only(top: 20),
                ),
              ),
              Container(
                  child: Text(
                    '''        其实多分支选择语句可以完成的工作使用if-else语句都可以完成，但是在某些场景下，使用多分支选择语句switch-case能够写出更加整齐规则的代码。你一定还记得我们在学习if-else语句时举得一个小例子，以学生的分数来划分学生的成绩段，如下：
var s = 90;
if(s<60){
	print("不及格");
}else if(s<75){
	print("及格");
}else if(s<85){
	print("良好");
}else{
	print("优秀");
}
假如现在，我们需要把上面代码的逻辑反过来，根据学生的成绩来输出学生的分数段，使用switch-case语句编写如下：
var ar = "优秀";
switch(ar){
	case "不及格":
	{
		print("成绩在60分以下");
	}
	break;
	case "及格":
	{
		print("成绩在60-75分");
	}
	break;
	case "良好":
	{
		print("成绩在75-85分");
	}
	break;
	case "优秀":
	{
		print("成绩在85分以上");
	}
	break;
}
''',
                    style: TextStyle(fontSize: 18),
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