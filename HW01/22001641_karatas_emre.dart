void main() 
{
  /* In void main()...
   * declare a string list*/
  List<String> emptyStringList = [];
  
  //Declaring and initializing famous CS people in the history in a list.
  List<String> famousCSPeople = ['Tim Berners-Lee', 'Alan Turing', 'Barbara Liskov'];
  
  // checking whether the given list is empty or not.
  bool famousCSPeopleChecking = famousCSPeople.isEmpty;
  
  // also check emptyStringList declared above
   bool emptyStringListChecking = emptyStringList.isEmpty;
  
  // printing result of bool value computed above.
  famousCSPeopleChecking ? print("famousCSPeople empty? :true"): print("famousCSPeople empty? : false");
  
  // printing result of bool value computed above.
  emptyStringListChecking ? print("emptyStringList empty? :true"): print("emptyStringList empty? :false");
  
  
  // adding new element to list. Lars Bak is the inventor of Dart language.
  famousCSPeople.add('Lars Bak');
  
  /*check whether list contains particular element or not 
   * Ada Lovalace is the inventor of ADA Language
   * and it is not in the famousCSPeople list.*/
  bool containsAdaLovalace = famousCSPeople.contains('Ada Lovalace');
  
  // printing bool result by ternary operator
  containsAdaLovalace ? print("famousCSPeople includes Ada Lovalace? :true"): print("famousCSPeople includes Ada Lovalace? :false");
  
  /*remove a particular element from the list 
  Barbara Liskov is an element of famousCSPeople list*/
  famousCSPeople.remove('Barbara Liskov');
  
  // get head and tail of the famousCSPeople list
  var listHead = famousCSPeople.first;
  var listTail = famousCSPeople.sublist(1);
  
  // prints the first element of the list
  print("List head: $listHead"); 
  // prints all elements of the list except for the first one
  print("List tail: $listTail"); 

  print("List elements:"); 
  // prints all elements in the famousCSPeople list
  for (var elements in famousCSPeople) 
  {
    print(elements);
  }

}
