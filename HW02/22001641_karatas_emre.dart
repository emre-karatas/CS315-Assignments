// FUNCTION FOR PART 1.1
// this function basically prints the name provided in the argument
void printFamousCSPeopleName(String name) //formal parameter passed
{
  print(name); // actual parameter passed
}

// FUNCTION FOR PART 1.2
//this function prints the function parameters which are named ones
void printFamousCSPeopleNamedParameters({String? name, int? birthYear}) 
{
  print('Name: $name, Birth Year: $birthYear');
}

//FUNCTION FOR PART 1.3
//this function prints the function parameters which are default
void printFamousCSPeopleDefaultParameters({String name = 'Tim Berners-Lee', int birthYear = 1955}) 
{
  print('Name: $name, Birth Year: $birthYear');
}

// FUNCTION FOR PART 1.4
// this function changes birthyear and an element of the list provided
void changeFamousCSPeopleBirthYear(int birthYear, List<String> csPeople) 
{
  birthYear = 1965;
  csPeople[0] = "Bjarne Stroustrup"; // changing element in the list
}


// FUNCTION FOR PART 1.5
//this function takes name and birthyear and prints them.
void printFamousCSPeopleNameAndBirthYear(String name, int birthYear) 
{
  print('Name: $name, Birth Year: $birthYear');
}

//FUNCTION FOR PART 1.5
//this function calls another function(the one above) inside and prints it in a decorative way 
void printFamousCSPeopleWithIntroduction(Function printFunction, String name, int birthYear) 
{
  print('------Famous CS Person Details------');
  printFunction(name, birthYear);
  print('------------------------------------');
}

//ERRONEOUS CODE FUNCTION FOR PART 1.5
//This function expects 3 arguments but main code supplies just 2 of them
void incorrectFunction(String name, int birthYear, String nationality) 
{
  print('Name: $name, Birth Year: $birthYear, Nationality: $nationality');
}





void main() 
{
  print("*****PART 1.1*****");
  printFamousCSPeopleName("Alan Turing");  
  
  // ERRONEOUS CODE EXAMPLE
  /*
  printFamousCSPeopleName(315); --- Function expects string parameter
  */
  
  print("\n");
  
  print("*****PART 1.2*****");
  printFamousCSPeopleNamedParameters(name: 'Lars Bak', birthYear: 1965);  // "Name: Lars Bak, Birth Year: 1965"
  
  print("\n");
  
  print("*****PART 1.3*****");
  printFamousCSPeopleDefaultParameters();  // "Name = Tim Berners-Lee, Birth Year = 1955"
  printFamousCSPeopleDefaultParameters(birthYear: 1922);  // "Name = Tim Berners-Lee, Birth Year = 1922"
  printFamousCSPeopleDefaultParameters(name: 'Barbara Liskov'); // "Name = Barbara Liskov, Birth Year = 1955"
  printFamousCSPeopleDefaultParameters(name: 'Barbara Liskov', birthYear: 1939);  // "Name = Barbara Liskov, Birth Year = 1939"
  
  // ERRONEOUS CODE EXAMPLE
  /*
  printFamousCSPeopleDefaultParameters(name: 2023, birthYear: 1939);  // name should be String!
  */
 
  print("\n");
  
  print("*****PART 1.4*****");
  int birthYear = 1912;
  List<String> csPeople = ["Alan Turing", "Tim Berners-Lee"];

  changeFamousCSPeopleBirthYear(birthYear, csPeople);

  print('Birth Year: $birthYear'); // prints 1912
  print('CS People: $csPeople'); // prints ["Bjarne Stroustrup", "Tim Berners-Lee"]
  
  // ERRONEOUS CODE EXAMPLE
  /*
   List<int> bilkentCSJuniorCourses = [315,319,342,353];
   int bilkentBirthYear = 1984;
   changeFamousCSPeopleBirthYear(bilkentBirthYear,bilkentCSJuniorCourses);
  */
  
   print("\n");
  
  print("*****PART 1.5*****");
  printFamousCSPeopleWithIntroduction(printFamousCSPeopleNameAndBirthYear, 'Alan Turing', 1912);
  
  // ERRONEOUS CODE EXAMPLE
  /* this will cause a runtime error because incorrectFunction expects 3 arguments,
  but we're only supplying 2 when calling it within printFamousCSPeopleWithIntroduction
  printFamousCSPeopleWithIntroduction(incorrectFunction, 'Alan Turing', 1912);
  */
  
  print("\n");
  
  print("===END OF DART LANGUAGE CODE===");
}
  
 

