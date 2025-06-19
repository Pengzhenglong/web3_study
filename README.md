# web3_Dapp

## forge init
 - 初始化项目
## forge build
 - 编译合约
## forge create
 - 部署合约
## forge test
 - 测试合约
## forge verify-contract
 - 验证合约
## forge help
 - 查看帮助文档

 ## forge install OpenZeppelin/openzeppelin-contracts
 - 安装合约库 (https://docs.openzeppelin.com/contracts/5.x/)


 ### 3. 合约部署与使用 cast 进行调用
 anvil

 source .env

  forge create --private-key ${OWNER_PRIVATE_KEY} src/LuLuCoin.sol:LuLuCoin --constructor-args ${OWNER_ADDRESS}

   cast to-dec ${OWNER_ADDRESS} (0xf39)

    forge create --private-key ${OWNER_PRIVATE_KEY}  --broadcast  src/LuLuCoin.sol:LuLuCoin --constructor-args ${OWNER_ADDRESS}
### 更新env文件
     source .env 
### 铸币
     cast send ${CONTRACT_ADDRESS} "mint(uint256)" 100000000000000000000 --private-key ${OWNER_PRIVATE_KEY}

### 查询余额
     
     cast call  ${CONTRACT_ADDRESS} "balanceOf(address)"  ${OWNER_ADDRESS}

      cast call  ${CONTRACT_ADDRESS} "balanceOf(address)"  ${USER_ADDRESS}  
###  余额转换
  cast to-dec 0x0000000000000000000000000000000000000000000000000de0b6b3a7640000

### 销毁一半代币

     cast send ${CONTRACT_ADDRESS} "burn(uint256)" 5000000000000000000 --private-key ${OWNER_PRIVATE_KEY}

     100000000000000000000
     5000000000000000000


###  传入10eth 给用户
 cast send ${CONTRACT_ADDRESS}  "transfer(address,uint256)"  ${USER_ADDRESS} 10000000000000000000 --private-key ${OWNER_PRIVATE_KEY}
 
### 查看错误
 forge selectors find 0x59c6995



 ##  4. 编写前端页面
 