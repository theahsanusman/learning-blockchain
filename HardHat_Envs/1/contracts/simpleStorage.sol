//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

contract TodoList {
    struct Todo {
        string text;
        bool completed;
    }

    Todo[] public todos;

    function create(string calldata _text) external {
        todos.push(Todo(_text, false));
    }

    function update(uint256 _index, string calldata _text) external {
        todos[_index].text = _text;
        // Other Way
        // Todo storage todo = todos[_index];
        // todo.text = _text;
    }

    function toggle(uint256 _index) external {
        todos[_index].completed = !todos[_index].completed;
    }

    function get(uint256 _index) public view returns (string memory, bool) {
        Todo storage todo = todos[_index];
        return (todo.text, todo.completed);
    }
}
