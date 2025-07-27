// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

abstract contract StateableEnums {
    enum State {
        OPEN,
        CLOSED,
        CALCULATING
    }
}
