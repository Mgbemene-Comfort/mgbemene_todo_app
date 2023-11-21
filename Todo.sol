// SPDX-License-Identifier: GPL-3.0 
pragma solidity >=0.8.0 <0.9.0; 
contract Bloc{
    struct Tasktitle{
    string taskdescription;
       bool isDonestatus;
   }
      mapping (address => Tasktitle[]) private Users;
function addTasktitle(string calldata _taskdescription) external{
      Users[msg.sender].push(Tasktitle({
          taskdescription:_taskdescription,
          isDonestatus:false
      }));
   } 
   function getTasktitle(uint _taskdescriptionIndex) external view returns (Tasktitle memory){
       Tasktitle storage taskdescription = Users[msg.sender][_taskdescriptionIndex];
       return taskdescription;
   } 
   function updateStatus(uint256 _taskdescriptionIndex,bool _status) external{
        Users[msg.sender][_taskdescriptionIndex].isDonestatus = _status;
   } 
   function deleteTasktitle(uint256 _taskdescriptionIndex) external{
       delete Users[msg.sender][_taskdescriptionIndex];
   } 
}  