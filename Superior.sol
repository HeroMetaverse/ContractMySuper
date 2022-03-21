pragma solidity >=0.7.0 <0.9.0;

contract Superior {
 
 
    mapping( address => address) public mySuperior;

    function setSuperior(address _superior) external {
        require(_superior != msg.sender && _superior != address(0),"can't self or address(0)");
        require( mySuperior[msg.sender] == address(0), "only once!");
        require(mySuperior[_superior] != address(0) || _superior == address(0xb14eA34AF3D090bbB4f7Ebb8048dbAa1eC0AfC65),"not 0, or xxx");
        require(mySuperior[_superior] != msg.sender, "ya");
        mySuperior[msg.sender] = _superior;
    }
}




