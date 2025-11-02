// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract SonicToken is ERC20 {

    // 链上存储的网站和推特地址
    string public website;
    string public twitter;

    // 部署事件，可选
    event ProjectInfo(string website, string twitter);

    /**
     * @param initialSupply 初始发行总量（整数形式，需要乘以 10^decimals）
     * @param _website 项目官网
     * @param _twitter 项目推特地址
     */
    constructor(
        uint256 initialSupply,
        string memory _website,
        string memory _twitter
    ) ERC20("RTA", "RTA") {
        _mint(msg.sender, initialSupply);
        website = _website;
        twitter = _twitter;

        emit ProjectInfo(_website, _twitter);
    }
}