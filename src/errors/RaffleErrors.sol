// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

abstract contract RaffleErrors {
    error TransferFailed(address to, uint256 amount);
    error UpkeepNotNeeded(
        uint256 currentBalance,
        uint256 playersNumber,
        uint256 lotteryState
    );
    error NotSufficientEntryFee();
    error LotteryNotOpen();
}
