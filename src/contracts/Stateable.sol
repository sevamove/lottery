// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {StateableEnums} from "../enums/StateableEnums.sol";
import {StateableErrors} from "../errors/StateableErrors.sol";
import {StateableAttrs} from "../structs/StateableAttrs.sol";
import {
    StateableConstructorParams
} from "../structs/StateableConstructorParams.sol";

abstract contract Stateable is StateableEnums, StateableErrors {
    StateableAttrs private _attrs;

    constructor(StateableConstructorParams memory params) {
        _attrs.state = params.initialState;
    }

    function _setState(State _newState) internal {
        _attrs.state = _newState;
    }

    function _getState() internal view returns (State) {
        return _attrs.state;
    }

    function _mustBeCalculating() internal view {
        if (_attrs.state != State.CALCULATING) {
            revert StateNotCalculating();
        }
    }

    function _mustBeClosed() internal view {
        if (_attrs.state != State.CLOSED) {
            revert StateNotClosed();
        }
    }

    function _mustBeOpen() internal view {
        if (_attrs.state != State.OPEN) {
            revert StateNotOpen();
        }
    }
}
