fn main() {
    // Declare/create an empty list
    let mut empty_list: Vec<String> = Vec::new();
    
    // Initialize a list with some values
    let mut famousCSPeople = vec![String::from("Tim Barners-Lee"), String::from("Alan Turing"), String::from("Barbara Liskov")];

    // Check if the list is empty or not
    let is_empty_empty_list = empty_list.is_empty();
    println!("Is the empty list empty? {}", is_empty_empty_list);
    
    // Check if the list is empty or not
    let is_empty_famousCSPeople = famousCSPeople.is_empty();
    println!("Is the famousCSPeople empty? {}", is_empty_famousCSPeople);

    // Add a new element to a list
    famousCSPeople.push(String::from("Lars Bak"));

    // Check if a particular element exists in the list
    let element = "Ada Lovalace";
    let exists = famousCSPeople.contains(&element.to_string());
    println!("Does the famousCSPeople contain {}? {}", element, exists);

    // Remove a particular element from the list
     let element_to_remove = "Barbara Liskov";
    famousCSPeople.retain(|x| x != element_to_remove);

    // Get the head and the tail of a list
    if let Some(head) = famousCSPeople.first() {
        println!("Head of the famousCSPeople: {}", head);
    }
    if famousCSPeople.len() > 1 {
        let tail = &famousCSPeople[1..];
        println!("Tail of the famousCSPeople: {:?}", tail);
    }

    // Print all of the elements in the list
    println!("famousCSPeople elements: {:?}", famousCSPeople);
}

