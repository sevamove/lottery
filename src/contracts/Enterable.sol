// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {EnterableErrors} from "../errors/EnterableErrors.sol";
import {Stateable} from "./Stateable.sol";
import {EnterableEvents} from "../events/EnterableEvents.sol";
import {EnterableInterface} from "../interfaces/EnterableInterface.sol";
import {EnterableAttrs} from "../structs/EnterableAttrs.sol";
import {
    EnterableConstructorParams
} from "../structs/EnterableConstructorParams.sol";

abstract contract Enterable is
    Stateable,
    EnterableErrors,
    EnterableEvents,
    EnterableInterface
{
    EnterableAttrs private _attrs;

    constructor(EnterableConstructorParams memory params) {
        _attrs.entryFee = params.entryFee;
    }

    function _enter(
        address[] storage players,
        address player
    ) internal virtual {
        _mustHaveSufficientEntryFee();
        _mustBeOpen();

        players.push(player);

        _logEntered(player, _attrs.entryFee);
    }

    function _mustHaveSufficientEntryFee() internal view {
        if (msg.value < _attrs.entryFee) {
            revert NotSufficientEntryFee();
        }
    }
}
