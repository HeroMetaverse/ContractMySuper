pragma solidity >=0.7.0 <0.9.0;

contract Superior {
 
 
    mapping( address => address) public mySuperior;

    function setSuperior(address _superior) external {
        require(_superior != msg.sender && _superior != address(0),"can't self or address(0)");
        require( mySuperior[msg.sender] == address(0), "only once!");
        mySuperior[msg.sender] = _superior;
    }
}


