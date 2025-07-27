// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {PlayableAttrs} from "../structs/PlayableAttrs.sol";
import {
    PlayableConstructorParams
} from "../structs/PlayableConstructorParams.sol";

abstract contract Playable {
    PlayableAttrs private _attrs;

    constructor(PlayableConstructorParams memory params) {
        _attrs.players = params.players;
    }

    function getPlayers() external view returns (address[] memory) {
        return _getPlayers();
    }

    function _addPlayer(address player) internal {
        _attrs.players.push(player);
    }

    function _getPlayers() internal view returns (address[] storage) {
        return _attrs.players;
    }

    function _getPlayersCount() internal view returns (uint256) {
        return _attrs.players.length;
    }
}
