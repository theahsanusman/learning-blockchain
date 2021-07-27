// function Student(name,age){
// this.name = name;
// this.age = age;
// this.getName = _=>this.name;
// this.info = _=> `Name: ${this.name}\nAge: ${this.age}`;
// }

// const students = [new Student('Ahsan',18)];

// console.log(students[0].info())

function User(email, pw){
    this.email = email;
    this.pw = pw;
    this.logIn = (e,pw)=>{
            if(e==this.email && this.pw == pw) return true;
            else return "Wrong Credentials!"
    }
}

User.prototype.logOut = function (e) {
    if(e == this.email) return "Loged Out!"
    else return "Wrong Email"
}
const users = [];

users.push(new User('info@',1234))

console.log(users[0].logOut('info@'))