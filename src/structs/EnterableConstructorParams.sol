// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

import {StateableEnums} from "../enums/StateableEnums.sol";

struct EnterableConstructorParams {
    uint256 entryFee;
    StateableEnums.State state;
}
