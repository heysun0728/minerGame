pragma solidity ^ 0.4 .24;
contract Miner {
    struct Map {
        uint bet;
        bool[5][5] Miner;
        address winner;
    }
    Map[] mapList;
    address private owner;

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    constructor() public {
        owner = msg.sender;
    }

    function showRoom(uint roomNum) public view returns(uint, address) {
        return (mapList[roomNum].bet, mapList[roomNum].winner);
    }

    function getRoomAmount() public view returns(uint) {
        return mapList.length;
    }

    function bury(uint x1, uint y1, uint x2, uint y2, uint x3, uint y3) external payable {
        require(msg.value > 1 ether);
        Map memory myMap;
        myMap.winner = msg.sender;
        myMap.bet = msg.value;
        myMap.Miner[x1][y1] = true;
        myMap.Miner[x2][y2] = true;
        myMap.Miner[x3][y3] = true;
        mapList.push(myMap);
    }

    function playGame(uint roomNum, uint x1, uint y1, uint x2, uint y2, uint x3, uint y3) external payable {
        require(msg.value >= mapList[roomNum].bet);
        Map storage m = mapList[roomNum];
        if ((m.Miner[x1][y1] == true) && (m.Miner[x2][y2] == true) && (m.Miner[x3][y3] = true)) m.winner = msg.sender;
        distributePrize(roomNum);
    }

    function distributePrize(uint roomNum) public {
        Map storage m = mapList[roomNum];
// ! error: Member "transfer" not found or not visible after argument-dependent lookup in address.
        m.winner.transfer(m.bet * 2 * 8 / 10);
        owner.transfer(m.bet * 2 * 2 / 10);
        delete mapList[roomNum];
    }
}