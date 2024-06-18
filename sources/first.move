// module my_addrx::Sample
// {
//     use std::debug;

//     fun sample_function()
//     {
//         debug::print(&12345);
//     }

//     #[test]
//     fun testing()
//     {
//         sample_function();
//     }
// }

// module my_addrx::TestData
// {
//     use std::debug;

//     fun print_data() {
//         let string_data: u8 = 1u8;
//         let result_value = string_data + 1u8;
//         debug::print(&result_value)
//     }

//     #[test]
//     fun testing(){
//         print_data()
//     }
// }

// module 0x42::SocialNetwork {
//     use std::debug;
//     use std::vector;

//     struct Friend has store, key drop {
//         person: vector<Person>
//     }

//     struct Person has drop {
//         age: u8
//     }

//     public fun set_age(new_age: u8): u8 {
//         let person = Person {age: new_age};
//         debug::print(&person.age);
//         person.age
//     }

//     #[test]
//     fun test() {
//         let age = set_age(123);
//         debug::print(&age);
//     }
// }

// module 0x42::SocialNetwork {
//     use std::debug;
//     use std::vector;

//     struct Friend has store, key, drop {
//         persons: vector<Person>
//     }

//     struct Person has drop {
//         name: vector<u8>,
//         age: u8,
//     }

//     public fun create_friend(person: Person, friends: &mut Friend) : Person {
//         let new_person = Person { name: person.name, age: person.age };
//         let person_clone = Person { name: new_person.name, age: new_person.age };
//         add_friend(new_person, friends);
//         person_clone
//     }

//     public fun add_friend(person: Person, friends: &mut Friend) {
//         vector::push_back(&mut friends.persons, person);
//     }

//     #[test]
//     public fun test() {
//         let person = Person { name: b"VoLeHong", age: 123 };
//         debug::print(&person);
//         let mut friend = Friend { persons: vector[person] },
//         debug::print(&friend);

//         let new_person = Person { name: b"NewPerson", age: 30 };
//         let returned_person = create_friend(new_person, &mut friend);
//         debug::print(&returned_person);
//         debug::print(&friend);
//     }
// }

// module my_addrx::Practice {
//     use std::debug::print;

//     public fun primitive_types() {
//         let a: u8 = 10;
//         print(&a);

//         let b: u128 = 120_123_981;
//         print(&b);

//         let c: bool = true;
//         print(&a);

//         let d: bool = true;
//         print(&d);

//         let address1: address = @0x01;
//         print(&address1);
//     }

//     #[test]
//     public fun test() {
//         primitive_types();
//     }
// }

// module my_addrx::VisiableFunction {
//     friend my_addrx::Test;

//     public(friend) fun return_data(): u8 {
//         let string_data: u8 = 1u8;
//         let result_value = string_data + 1u8;
//         result_value
//     }
// }

// module my_addrx::Test {
//     use std::debug::print;

//     fun get_data() {
//         let value = my_addrx::VisiableFunction::return_data();
//         print(&value)
//     }

//     #[test]
//     public fun test() {
//         get_data();
//     }
// }

// module my_addrx::References {
//     use std::debug::print;

//     fun test01() {
//         let a = 1u8;
//         let b = &mut a;
//         print(b);
//         *b = 3u8;
//         print(b);
//         let c = a;
//         print(&c);
//     }

//     #[test]
//     public fun test() {
//         test01();
//     }
// }

module my_addrx::Vector {
    use std::debug::print;
    use std::vector;

    // public fun practice() {
    //     let a: vector<u64> = vector<u64>[123, 234, 456];
    //     let index_1 = *vector::borrow(&a, 4);
    //     print(&index_1);
    // }

    // Borrow_mut
    public fun practice() {
        let a: vector<u64> = vector<u64>[123, 234, 456];
        *vector::borrow_mut(&mut a, 1) = 10;
        print(vector::borrow(&a, 1));
    }

    // push_back
    public fun practice_push_back() {
        let a: vector<u64> = vector<u64>[123, 234, 456];
        let index = 0;
        while (vector::length(&a) <100) {
            vector::push_back(&mut a, 10);
            print(&a);
        }

    }

    #[test]
    public fun test() {
        practice_push_back();
    }
}
