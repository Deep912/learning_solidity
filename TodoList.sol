//SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract toDo{
    struct Task {
        uint256 id;
        string content;
    }

    Task[] public tasks;

    mapping (uint256 => uint256) private taskIndex;

    uint256 private nextId = 0;

     error TaskNotFound(uint256 taskId);

    //new task added event
    event taskAdded(uint256 indexed id, string content );

    //event for when task is completed

    event taskCompleted(uint256 indexed id , string content);

    function addTask(string memory _content) public {
        tasks.push(Task(nextId, _content));
        emit taskAdded(nextId, _content);
        nextId++;
    }

    function removeTask(uint256 id) public {
        require(Task[id].id == id , "task does not exist");
        
    }

    function getAllTask() public view returns (Task[]  memory ){
        return tasks;
    }


}