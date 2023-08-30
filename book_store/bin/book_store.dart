import 'dart:io';

void main(){
  //!create Authors
Author a1 = Author();
a1.author= "Harry";

Author a2 = Author();
a2.author= "Anwar";


//!create bookes
//Harry
Book b1 = Book();
b1.title= "The conjuring";
b1.author=a1;
b1.yearPublished = 1990;

Book b2 = Book();
b2.title= "The man";
b2.author=a1;
b2.yearPublished = 1998;

//Anwar
Book b3 = Book();
b3.title= "Sharkes";
b3.author=a2;
b3.yearPublished = 2001;

Book b4 = Book();
b4.title= "super";
b4.author=a2;
b4.yearPublished = 2021;



List<Author> auth = [a1, a2];
List<Book> bo = [b1, b2, b3, b4];

int count = 1;
for (var c in auth){
    print("$count ${c.author}");
    count = count +1;
}


print("Pleace choose an auther to show his books :  ");

String? select = stdin.readLineSync();

List <Book>filterBook = [];
for(var e in bo){
  if (select == e.author){
print("${e.title}");
}
}

}




class Book{
String ? title ;
double ? yearPublished ;
Author ? author;

void showBook(){
  print("$title : $yearPublished");
}

}

class Author{
String ? author ;

String? getName(){
    return author;
}
}