pragma solidity ^0.4.11;

contract ManagerMock {
    bool denied;

    function deny() {
        denied = true;
    }

    function isAllowed(address _actor, bytes32 _role) constant returns(bool) {
        if (denied) {
            denied = false;
            return false;
        }
        return true;
    }

    function hasAccess(address _actor) constant returns(bool) {
        return true;
    }
}
