// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {StateableEnums} from "../enums/StateableEnums.sol";

interface StateableInterface {
    function setState(StateableEnums.State _newState) external;
    function getState() external view returns (StateableEnums.State);
}
