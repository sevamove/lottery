// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {StateableEnums} from "../enums/StateableEnums.sol";

abstract contract StateableErrors {
    // error InvalidStateTransition(
    //     StateableEnums.State currentState,
    //     StateableEnums.State newState
    // );
    error StateNotOpen();
    error StateNotClosed();
    error StateNotCalculating();
}
