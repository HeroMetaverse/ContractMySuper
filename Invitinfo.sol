pragma solidity >=0.7.0 <0.9.0;

contract WhoIsTheInviter {
 
 
    mapping( address => address) public inviter;
    mapping( address => address[]) public invites;
    uint256 public totalInvited = 0;

    function autoIncrea() private {
        totalInvited += 1;
    }



    function setInvitinfo(address _inviter) external {
        require(_inviter != msg.sender && _inviter != address(0),"can't self or address(0)");
        require( inviter[msg.sender] == address(0), "only once!");
        require(inviter[_inviter] != address(0) || _inviter == address(0xb14eA34AF3D090bbB4f7Ebb8048dbAa1eC0AfC65),"not 0, or xxx");
        require(inviter[_inviter] != msg.sender, "ya");
        inviter[msg.sender] = _inviter;
        invites[_inviter].push(msg.sender);
        autoIncrea();
    }

}


