// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;
contract greatestnum{

    uint a;
    address admin;

    constructor(){
        admin = msg.sender;
    }

    modifier onlyadmin { 
        require (admin == msg.sender, "only admin can access");
        _;
    }

    function set (uint _a) public onlyadmin{
        a = _a;
    }

    function iseven() public view onlyadmin returns(bool){
        if(a%2==0){
            return (true);

        }
        else{
            return (false);
        }
        
    }
}
