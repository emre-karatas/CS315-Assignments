package main

import (
	"fmt"
)

//STRUCT TYPE FOR PART 2.2
// Struct type for simulating named parameters in Go language
type FamousCSPerson struct {
	Name string
}

// FUNCTION FOR PART 2.1
// this function basically prints the name provided in the argument
func printFamousCSPeopleName(name string) { //formal parameter passed
	fmt.Println(name) // actual parameter passed
}

// FUNCTION FOR PART 2.2
//this function prints the function parameters which are named ones
func printFamousCSPeopleNamedParameters(name string, birthYear int) {
	fmt.Printf("Name: %s, Birth Year: %d\n", name, birthYear)
}

// FUNCTION FOR PART 2.2
// This function simulates named parameters in Go language
func simulateNamedParameters(params FamousCSPerson) {
	fmt.Println(params.Name)
}


//FUNCTION FOR PART 2.3
//this function simulates default value passing in Go, which actually does not exist.
func printFamousCSPeopleDefaultParameters(name string, birthYear int) {
	if name == "" {
		name = "Tim Berners-Lee"
	}
	if birthYear == 0 {
		birthYear = 1955
	}
	fmt.Printf("Name: %s, Birth Year: %d\n", name, birthYear)
}

// FUNCTION FOR PART 2.4
// this function changes birthyear and an element of the list provided.
func changeFamousCSPeopleBirthYear(birthYear *int, csPeople []string) {
	*birthYear = 1965 // uses the copy of the pointer to change data
	csPeople[0] = "Bjarne Stroustrup" // changing element in the list
}

// FUNCTION FOR PART 2.4
// This function tries to change the value of the argument.
func changeBirthYear(birthYear int) {
	birthYear = 1965
}

// FUNCTION FOR PART 2.5
//this function takes name and birthyear and prints them.
func printFamousCSPeopleNameAndBirthYear(name string, birthYear int) {
	fmt.Printf("Name: %s, Birth Year: %d\n", name, birthYear)
}

//FUNCTION FOR PART 2.5
//this function calls another function(the one above) inside and prints it in a decorative way 
func printFamousCSPeopleWithIntroduction(printFunction func(string, int), name string, birthYear int) {
	fmt.Println("------Famous CS Person Details------")
	printFunction(name, birthYear)
	fmt.Println("------------------------------------")
}

//FUNCTION FOR PART 2.5
// createFamousCSIntro creates and returns a new function that uses the captured variable "name"
func createFamousCSIntro(name string) func(int) {
    return func(birthYear int) {
        fmt.Printf("Name: %s, Birth Year: %d\n", name, birthYear)
    }
}

func main() {
	fmt.Println("*****PART 2.1*****")
	printFamousCSPeopleName("Alan Turing")

	// ERRONEOUS CODE EXAMPLE
	/*
		printFamousCSPeopleName(315) --- Function expects string parameter
	*/

	fmt.Println("\n")

	fmt.Println("*****PART 2.2*****")
	printFamousCSPeopleNamedParameters("Lars Bak", 1965)
    
    // ERRONEOUS CODE EXAMPLE
	/*
    printFamousCSPeopleNamedParameters(name="Lars Bak", birthYear=1965) --- Named parameters are not supported
	*/
    
    fmt.Print("Named Parameter Simulation: ")
    // simulating  named parameters using a struct.
	simulateNamedParameters(FamousCSPerson{Name: "Ada Lovelace"})
    
  
	fmt.Println("\n")

	fmt.Println("*****PART 2.3*****")
	printFamousCSPeopleDefaultParameters("", 0)
	printFamousCSPeopleDefaultParameters("", 1922)
	printFamousCSPeopleDefaultParameters("Barbara Liskov", 0)
	printFamousCSPeopleDefaultParameters("Barbara Liskov", 1939)

	// ERRONEOUS CODE EXAMPLE
	/*
		printFamousCSPeopleDefaultParameters(2023, 1939) --- Function expects string parameter for name
	*/
    
    // ERRONEOUS CODE EXAMPLE
    /* The following call will print "Name: Tim Berners-Lee, Birth Year: 1955",
     even though the programmer might have intended it to print "Name: , Birth Year: 0"
      printFamousCSPeopleDefaultParameters("", 0)
    */


	fmt.Println("\n")

	fmt.Println("*****PART 2.4*****")
	birthYear := 1912
	csPeople := []string{"Alan Turing", "Tim Berners-Lee"}
    
    fmt.Printf("Birth Year before function call: %d\n", birthYear) // Prints 1912
	changeBirthYear(birthYear)
	fmt.Printf("Birth Year after function call: %d\n", birthYear) // Still prints 1912

    fmt.Println("Changing birth year by passing reference...")
	changeFamousCSPeopleBirthYear(&birthYear, csPeople)

	fmt.Printf("Birth Year: %d\n", birthYear) // prints 1965 as change is reflected because of pointer
	fmt.Printf("CS People: %v\n", csPeople)   // prints ["Bjarne Stroustrup", "Tim Berners-Lee"]
    

	// ERRONEOUS CODE EXAMPLE
	/*
		bilkentCSJuniorCourses := []int{315,319,342,353}
		bilkentBirthYear := 1984
		changeFamousCSPeopleBirthYear(&bilkentBirthYear,bilkentCSJuniorCourses) --- Function expects slice of strings as second parameter
	*/

	fmt.Println("\n")

	fmt.Println("*****PART 2.5*****")
	printFamousCSPeopleWithIntroduction(printFamousCSPeopleNameAndBirthYear, "Alan Turing", 1912)
    

	// Create a new function for each famous CS person
    barbaraLiskov := createFamousCSIntro("Barbara Liskov")
    larryPage := createFamousCSIntro("Larry Page")

    // Call each function with the appropriate birth year
    barbaraLiskov(1939)
    larryPage(1973)

	fmt.Println("\n")

	fmt.Println("===END OF GO LANGUAGE CODE===")
}
