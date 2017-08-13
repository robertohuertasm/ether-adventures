pragma solidity ^0.4.6;


contract FoodSafe {
    struct Location {
        string name;
        uint locationId;
        uint previousLocationId;
        uint timeStamp;
        string secret;
    }

    mapping (uint=>Location) trail;
    uint8 trailCount = 0;

    function addNewLocation(uint locationId, string name, string secret) {
        Location memory newLocation;
        newLocation.locationId = locationId;
        newLocation.name = name;
        newLocation.secret = secret;
        newLocation.timeStamp = now;

        if (trailCount != 0) {
            newLocation.previousLocationId = trail[trailCount].locationId;
        }
        trail[trailCount] = newLocation;
        trailCount++;
    }

    function getTrailcount() returns (uint8) {
        return trailCount;
    }

    function getLocation(uint8 trailNo) returns (string, uint, uint, uint, string) {
        return (trail[trailNo].name, trail[trailNo].locationId, trail[trailNo].previousLocationId, trail[trailNo].timeStamp, trail[trailNo].secret);
    }
}