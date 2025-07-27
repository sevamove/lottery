// SPDX-License-Identifier: Apache-2.0
pragma solidity 0.8.29;

abstract contract EnterableEvents {
    event Entered(address indexed player, uint256 entryFee, uint256 timestamp);

    // event EntryRefunded(
    //	 address indexed player,
    //	 uint256 refundAmount,
    //	 uint256 timestamp
    // );

    function _logEntered(address player, uint256 entryFee) internal virtual {
        emit Entered(player, entryFee, block.timestamp);
    }

    // function _logEntryRefunded(
    //     address player,
    //     uint256 refundAmount
    // ) internal virtual {
    //     emit EntryRefunded(player, refundAmount, block.timestamp);
    // }
}
