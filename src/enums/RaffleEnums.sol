// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

abstract contract RaffleEnums {
    enum State {
        OPEN,
        CLOSED,
        CALCULATING
    }

    enum Type {
        SINGLE_WINNER,
        MULTI_WINNER
    }

    enum Status {
        OPEN,
        CLOSED
    }

    enum EntryType {
        FREE,
        PAID
    }

    enum EntryStatus {
        ACTIVE,
        INACTIVE
    }
}
