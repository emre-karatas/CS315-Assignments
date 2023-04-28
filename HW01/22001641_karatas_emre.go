package main

import (
	"container/list"
	"fmt"
)

func main() {

    //creating empty list
	emptyList := list.New()
    
    //creating famousCSPeople list.
	famousCSPeople := list.New()
    
    //populating famousCSPeople list by elements
	famousCSPeople.PushBack("Tim Berners-Lee")
	famousCSPeople.PushBack("Alan Turing")
	famousCSPeople.PushBack("Barbara Liskov")
    
    //getting the length of the famousCSPeople list to determine whether it is empty or not
	famousCSPeopleChecking := famousCSPeople.Len() == 0
    
    //getting the length of the emptyList list to determine whether it is empty or not
	emptyListChecking := emptyList.Len() == 0
    
     //printing results for emptyList
	if emptyListChecking {
		fmt.Println("The emptylist is empty.")
	} else {
		fmt.Println("The emptylist is not empty.")
	}

    //printing results for famousCSPeople
	if famousCSPeopleChecking {
		fmt.Println("The famousCSPeople list is empty.")
	} else {
		fmt.Println("The famousCSPeople list is not empty.")
	}

    // adding new element to famousCSPeople list
	famousCSPeople.PushBack("Lars Bak")

    //checking whether the particular element exists in the famousCSPeople list or not.
	element := "Ada Lovelace"
	containsAdaLovalace := false

	for e := famousCSPeople.Front(); e != nil; e = e.Next() {
		if e.Value == element {
			containsAdaLovalace = true
			break
		}
	}

    // printing results for element existing result for the famousCSPeople list.
	if containsAdaLovalace {
		fmt.Println("famousCSPeople contains Ada Lovalace")
	} else {
		fmt.Println("famousCSPeople does not contain Ada Lovalace")
	}

    //removing particular element from the famousCSPeople list
	elementToRemove := "Barbara Liskov"

	for e := famousCSPeople.Front(); e != nil; e = e.Next() {
		if e.Value == elementToRemove {
			famousCSPeople.Remove(e)
			break
		}
	}

   //getting head of the famousCSPeople list and printing it
   if famousCSPeople.Len() > 0 {
    head := famousCSPeople.Front().Value
    fmt.Println("Head is:", head)
    }

    //getting tail slice of the famousCSPeople list and printing it
    // slicing is used to get tail list of the famousCSPeople list.
    if famousCSPeople.Len() > 1 {
    tail := make([]interface{}, 0)
        for e := famousCSPeople.Front().Next(); e != nil; e = e.Next() {
            tail = append(tail, e.Value)
        }
    fmt.Println("Tail is:", tail)
    }

    
    //printing all elements in the famousCSPeople list
	for e := famousCSPeople.Front(); e != nil; e = e.Next() {
		fmt.Println(e.Value)
	}

}
