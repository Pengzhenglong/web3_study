// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0

 
// 这个代码定义了一个名为 `LuLuCoin` 的智能合约，它是一个基于 ERC20 标准的代币合约，并且实现了 `Ownable` 合约。

// ### 代码结构
// - **许可证声明**: 使用 MIT 许可证。
// - **兼容性声明**: 兼容 OpenZeppelin Contracts ^5.0.0。
// - **Solidity 版本**: 使用 Solidity 0.8.20。
// - **导入**: 导入了 OpenZeppelin 的 ERC20 和 Ownable 合约。

// ### 合约定义
// - **事件**:
//   - `Mint`: 当代币被铸造时触发，记录铸造的数量。
//   - `Burn`: 当代币被销毁时触发，记录销毁的数量。
// - **常量**:
//   - `_name`: 代币名称，设为 "LuLuCoin"。
//   - `_symbol`: 代币符号，设为 "LLC"。
// - **构造函数**: 初始化合约，设置代币名称和符号，并指定初始所有者。
// - **函数**:
//   - `mint`: 只有合约所有者可以调用，用于铸造指定数量的代币，并触发 `Mint` 事件。
//   - `burn`: 只有合约所有者可以调用，用于销毁指定数量的代币，并触发 `Burn` 事件。

// 这个合约允许所有者铸造和销毁代币，并通过事件记录这些操作。
        
pragma solidity ^0.8.20;

import {ERC20} from "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract LuLuCoin is ERC20, Ownable {
    event Mint(uint256 indexed amount);
    event Burn(uint256 indexed amount);

    string public constant _name = "LuLuCoin";
    string public constant _symbol = "LLC";

    constructor(
        address initialOwner
    ) ERC20(_name, _symbol) Ownable(initialOwner) {}

    function mint(uint256 _amount) public onlyOwner {
        _mint(msg.sender, _amount);
        emit Mint(_amount);
    }

    function burn(uint256 _amount) public onlyOwner {
        _burn(msg.sender, _amount);
        emit Burn(_amount);
    }
}
