pragma solidity ^0.4.4;


contract IScoreStore {
    function getScore(string name) returns (int);
}


contract MyGame {
    function showScore(string name) returns (int) {
        IScoreStore scoreStore = IScoreStore(0x0077da8e3c15d7818da9a7da7424d73010a58e96a2);
        return scoreStore.getScore(name);
    }
}