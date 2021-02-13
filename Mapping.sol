pragma solidity ^0.6.0;

contract LearningMapping {
    // Mapping = Data Structure
    mapping(uint =>  string) public names;
    mapping(uint => Book) public books;
    mapping(address => mapping(uint => Book)) public myBooks;
    
    constructor() public {
        names[101] = "Alex";
        names[7] = "JamesBond";
    }
    
    
    struct Book {
        string title;
        string Author;
    }
    
    function addBook(uint _id, string memory _title, string memory _author) public{
        books[_id] = Book(_title,_author);
    }
    
    function addMyBooks(uint _id, string memory _title, string memory _author) public {
        myBooks[msg.sender][_id] = Book(_title,_author);
    }
    
}