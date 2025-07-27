// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {RaffleEnums} from "../enums/RaffleEnums.sol";

abstract contract RaffleEvents {
    event RaffleCreated(
        address indexed owner,
        uint256 entryFee,
        RaffleEnums.Type raffleType
    );
    event EntryAdded(address indexed player, uint256 amount);
    event RaffleClosed();
    event WinnerSelected(address indexed winner, uint256 prizeAmount);
    event EntryRefunded(address indexed player, uint256 amount);
    event RaffleStateChanged(RaffleEnums.State newState);
}
