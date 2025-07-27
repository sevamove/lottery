// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {RaffleEnums} from "./enums/RaffleEnums.sol";
import {RaffleErrors} from "./errors/RaffleErrors.sol";
import {RaffleInterface} from "./interfaces/RaffleInterface.sol";
import {Enterable} from "./contracts/Enterable.sol";
import {RaffleContructorParams} from "./structs/RaffleContructorParams.sol";
import {RaffleAttrs} from "./structs/RaffleAttrs.sol";
import {Playable} from "./contracts/Playable.sol";
import {
    PlayableConstructorParams
} from "./structs/PlayableConstructorParams.sol";
import {
    EnterableConstructorParams
} from "./structs/EnterableConstructorParams.sol";

contract Raffle is Enterable, Playable, RaffleInterface {
    constructor(
        EnterableConstructorParams memory enterableParams,
        PlayableConstructorParams memory playableParams,
        StateableConstructorParams memory stateableParams
    )
        Stateable(stateableParams)
        Enterable(enterableParams)
        Playable(playableParams)
    {}

    function enter() external payable override {
        _enter(_getPlayers(), msg.sender);
    }
}
