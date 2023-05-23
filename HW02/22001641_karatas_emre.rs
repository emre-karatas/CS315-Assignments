fn main() {
    println!("---5.1---");
    fn print_details(name: &str, birth_year: i32) {
        println!("Name: {}, Birth Year: {}", name, birth_year);
    }
    
    

    print_details("Alan Turing", 1912); // Correct
    //print_details(1912, "Alan Turing"); // This would cause a compile time error

    println!("---5.2---");
    // Named Parameters Example: Rust does not support named parameters
    //However, one could simulate named parameters
    struct FamousCSParams {
    name: String,
    birth_year: i32,
    }

    fn simulate_named_params(params: FamousCSParams) {
        println!("Birth Year: {}, Name: {}", params.birth_year, params.name);
    }

    simulate_named_params(FamousCSParams {
        name: "Jeff Bezos".to_string(),
        birth_year: 1964,
    });


    println!("---5.3---");
    // Default Parameters Example: Rust does not support default parameters
    // one could simulate default parameters in Rust by struct type.
    #[derive(Default)]
     struct FamousCSParams2 {
    name: String,
    birth_year: i32,
    }
    impl FamousCSParams2 {
    fn new() -> Self {
        Self {
            name: "Ada Lovelace".to_string(),
            birth_year: 1815,
            ..Default::default()
            }
        }
    }
    fn simulate_default_params(params: FamousCSParams2) {
    println!("Name: {}, Birth Year: {}", params.name, params.birth_year);
    }

    simulate_default_params(FamousCSParams2::new());

    println!("---5.4---");
    fn change_famous_cs_people_value(mut name: String, mut birth_year: i32) {
        name = "Bjarne Stroustrup".to_string();
        birth_year = 1950;
        // changes to name and birth_year are local to this function
    }

    fn change_famous_cs_people_reference(name: &mut String, birth_year: &mut i32) {
        *name = "Bjarne Stroustrup".to_string();
        *birth_year = 1950;
        // changes to name and birth_year will affect the original variables
    }

    let mut name = "Elon Musk".to_string();
    let mut birth_year = 1971;

    change_famous_cs_people_value(name.clone(), birth_year); // pass by value
    println!("Name: {}, Birth Year: {}", name, birth_year); // Prints "Name: Elon Musk, Birth Year: 1971"

    change_famous_cs_people_reference(&mut name, &mut birth_year); // pass by reference
    println!("Name: {}, Birth Year: {}", name, birth_year); // Prints "Name: Bjarne Stroustrup, Birth Year: 1950"

    println!("---5.5---");
    // Subprograms as Parameters Example
    fn print_with_introduction(print_func: fn(&str, i32), name: &str, birth_year: i32) {
        println!("---Famous CS Person---");
        print_func(name, birth_year);
        println!("-----------------------");
    }

    print_with_introduction(print_details, "Larry Page", 1973);
}
