// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

contract TodoList {
    uint taskCount = 0;

    struct Task {
        uint id;
        string content;
        bool completed;
    }

    constructor() {
        createTask("Test Task");
    }

    mapping(uint => Task) public tasks;

    function createTask(string memory _content) public {
        taskCount++;
        tasks[taskCount] = Task(taskCount, _content, false);
    }
}
