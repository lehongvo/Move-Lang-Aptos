// // module my_addrx::Sample
// // {
// //     use std::debug;

// //     fun sample_function()
// //     {
// //         debug::print(&12345);
// //     }

// //     #[test]
// //     fun testing()
// //     {
// //         sample_function();
// //     }
// // }

// // module my_addrx::TestData
// // {
// //     use std::debug;

// //     fun print_data() {
// //         let string_data: u8 = 1u8;
// //         let result_value = string_data + 1u8;
// //         debug::print(&result_value)
// //     }

// //     #[test]
// //     fun testing(){
// //         print_data()
// //     }
// // }

// // module 0x42::SocialNetwork {
// //     use std::debug;
// //     use std::vector;

// //     struct Friend has store, key drop {
// //         person: vector<Person>
// //     }

// //     struct Person has drop {
// //         age: u8
// //     }

// //     public fun set_age(new_age: u8): u8 {
// //         let person = Person {age: new_age};
// //         debug::print(&person.age);
// //         person.age
// //     }

// //     #[test]
// //     fun test() {
// //         let age = set_age(123);
// //         debug::print(&age);
// //     }
// // }

// // module 0x42::SocialNetwork {
// //     use std::debug;
// //     use std::vector;

// //     struct Friend has store, key, drop {
// //         persons: vector<Person>
// //     }

// //     struct Person has drop {
// //         name: vector<u8>,
// //         age: u8,
// //     }

// //     public fun create_friend(person: Person, friends: &mut Friend) : Person {
// //         let new_person = Person { name: person.name, age: person.age };
// //         let person_clone = Person { name: new_person.name, age: new_person.age };
// //         add_friend(new_person, friends);
// //         person_clone
// //     }

// //     public fun add_friend(person: Person, friends: &mut Friend) {
// //         vector::push_back(&mut friends.persons, person);
// //     }

// //     #[test]
// //     public fun test() {
// //         let person = Person { name: b"VoLeHong", age: 123 };
// //         debug::print(&person);
// //         let mut friend = Friend { persons: vector[person] },
// //         debug::print(&friend);

// //         let new_person = Person { name: b"NewPerson", age: 30 };
// //         let returned_person = create_friend(new_person, &mut friend);
// //         debug::print(&returned_person);
// //         debug::print(&friend);
// //     }
// // }

// // module my_addrx::Practice {
// //     use std::debug::print;

// //     public fun primitive_types() {
// //         let a: u8 = 10;
// //         print(&a);

// //         let b: u128 = 120_123_981;
// //         print(&b);

// //         let c: bool = true;
// //         print(&a);

// //         let d: bool = true;
// //         print(&d);

// //         let address1: address = @0x01;
// //         print(&address1);
// //     }

// //     #[test]
// //     public fun test() {
// //         primitive_types();
// //     }
// // }

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

// // module my_addrx::References {
// //     use std::debug::print;

// //     fun test01() {
// //         let a = 1u8;
// //         let b = &mut a;
// //         print(b);
// //         *b = 3u8;
// //         print(b);
// //         let c = a;
// //         print(&c);
// //     }

// //     #[test]
// //     public fun test() {
// //         test01();
// //     }
// // }

// module my_addrx::Vector {
//     // public fun practice() {
//     //     let a: vector<u64> = vector<u64>[123, 234, 456];
//     //     let index_1 = *vector::borrow(&a, 4);
//     //     print(&index_1);
//     // }

//     // Borrow_mut
//     // public fun practice() {
//     //     let a: vector<u64> = vector<u64>[123, 234, 456];
//     //     *vector::borrow_mut(&mut a, 1) = 10;
//     //     print(vector::borrow(&a, 1));
//     // }

//     // // push_back
//     // public fun practice_push_back() {
//     //     let a: vector<u64> = vector<u64>[123, 234, 456];
//     //     vector::push_back(&mut a, 10);
//     //     print(
//     //         vector::borrow(&a, vector::length(&a) - 1)
//     //     );
//     //     vector::pop_back(&mut a);
//     //     print(
//     //         vector::borrow(&a, vector::length(&a) - 1)
//     //     );
//     //     print(&a);
//     // }

//     // public fun while_funciton() {
//     //     let new_vector: vector<u64> = vector<u64>[123, 345, 4352];
//     //     std::debug::print(
//     //         &b"-------------------------------00"
//     //     );
//     //     std::debug::print(&new_vector);
//     //     let i = 0;
//     //     while (!vector::is_empty(&new_vector)) {
//     //         vector::remove(&mut new_vector, i);
//     //     };
//     //     std::debug::print(
//     //         &b"-------------------------------01"
//     //     );
//     //     std::debug::print(&new_vector);
//     // }

//     // public fun loop_function() {
//     //     let new_vector: vector<u64> = vector<u64>[123, 345, 4352];
//     //     let i = 0;
//     //     let vector_length = vector::length(&new_vector);
//     //     loop {
//     //         if (i >= vector_length) { break };
//     //         let value = vector::borrow(&new_vector, i);
//     //         print(value);
//     //         i = i + 1;
//     //     };
//     // }

//     // public fun for_each_function() {
//     //     let new_vector: vector<u64> = vector<u64>[123, 345, 4352];
//     //     vector::for_each_mut(&mut new_vector,|value| {});
//     //     print(&new_vector);
//     // }

//     // public fun test_string() {
//     //     let string_data = b"hello";
//     //     std::debug::print(&string_data);
//     // }

//     // public fun test_if_else(masks: bool) {
//     //     if (masks) {
//     //         std::debug::print(&utf8(b"-----------------01"));
//     //     } else {
//     //         std::debug::print(&utf8(b"-----------------02"));
//     //     }
//     // }

//     // public fun handle_error_come(number_value: u128) {
//     //     // if (number_value % 2 == 0) {
//     //     //     std::debug::print(&utf8(b"-----------------01"));
//     //     // } else {
//     //     //     abort 1;
//     //     // }
//     //     assert!(number_value % 2 == 1, 1);
//     // }

//     use std::debug::print;
//     // use std::vector;
//     // use std::string::utf8;

//     public fun main(x: u64): u64 {
//         let new_value = x + 1;
//         return new_value
//     }

//     #[test]
//     public fun test() {
//         let value = main(10);
//         print(&value);
//     }
// }

// module my_addrx::Lib {
//     friend my_addrx::Test;

//     public(friend) fun big_number(): u64 {
//          12123
//     }
// }
// module my_addrx::Test {
//     use std::debug::print;

//     struct Example has copy, drop {
//         i: u64
//     }

//     const ONE: u64 = 1;

//     public fun print_data(x: u64) : Example {
//         let value = my_addrx::Lib::big_number();
//         if(value > x) {
//             value = x;
//         };

//         let example = Example { i: value };

//         return example
//     }

//     #[test]
//     public fun test() {
//         let value = print_data(10);
//         print(&value);
//     }
// }

// module my_addrx::Test_Vector {
//     use std::vector;

//     public fun print_data() {
//         let new_vector: vector<u64> = vector<u64>[1, 2, 3];
//         vector::push_back(&mut new_vector, 4);
//         vector::push_back(&mut new_vector, 5);
//         assert!(vector::length(&new_vector) == 5, 42);

//         *vector::borrow_mut(&mut new_vector, 1) = 121;

//         std::debug::print(&new_vector);

//         vector::remove(&mut new_vector, 0);

//         vector::insert(&mut new_vector, 2, 1212321321);

//         std::debug::print(&new_vector);
//     }

//     #[test]
//     public fun test() {
//         print_data();
//     }
// }

// module my_addrx::Tuples {
//     use std::debug::print;
//     use std::string::utf8;

//     public fun return_value(): (&u64, &u64) {
//         let x: u64 = 0;
//         let y: &mut u64 = 1;
//         let (a, b): (&u64, &u64) = (x, y);
//         (a, b)
//     }

//     public fun view_return_mutiple_value(): (u64, address, bool) {
//         return(1, @0x01, true)
//     }

//     #[test]
//     public fun test() {
//         let (value1, value2, value3): (u64, address, bool) = view_return_mutiple_value();
//         print(&value1);
//         print(&value2);
//         print(&value3);
//     }
// }

// module my_addrx::Local_Scope {
//     use std::debug::print;

//     const VALUE_EXE: u256 = 100;

//     struct Example has copy, drop {
//         index1: u64,
//         index2: u64
//     }

//     public fun test() {
//         let b: vector<u8> = b"hello";
//         let (x, y): (&u64, &mut u64) = (&0, &mut 1);
//         print(&b);
//         let v2: vector<u64> = vector::empty();

//     }

//     #[test]
//     public fun test2() {
//         test();
//     }
// }
