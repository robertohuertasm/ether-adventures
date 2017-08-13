pragma solidity ^0.4.4;


contract ScoreStore {
    mapping(string => int) personScores;

    function addPersonScore(string name, int startingScore) {
        if (personScores[name]>0) {
            revert();
        } else {
            personScores[name] = startingScore;
        }
    }

    function getScore(string name) returns (int) {
        return personScores[name];
    }

}