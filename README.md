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


更新 .env重启
 source .env

部署
  forge create --private-key ${OWNER_PRIVATE_KEY} src/LuLuCoin.sol:LuLuCoin --constructor-args ${OWNER_ADDRESS}

   cast to-dec ${OWNER_ADDRESS} (0xf39)

查看合约地址
    forge create --private-key ${OWNER_PRIVATE_KEY}  --broadcast  src/LuLuCoin.sol:LuLuCoin --constructor-args ${OWNER_ADDRESS}


更新 .env重启
 source .env
      forge create --private-key ${USER1_PRIVATE_KEY}  --broadcast  src/LuLuCoin.sol:LuLuCoin --constructor-args ${USER1_ADDRESS}


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



     cast send ${CONTRACT_ADDRESS} "burn(uint256)" 105000000000000000000 --private-key ${USER1_PRIVATE_KEY}

     100000000000000000000
     5000000000000000000


###  传入10eth 给用户
 cast send ${CONTRACT_ADDRESS}  "transfer(address,uint256)"  ${USER_ADDRESS} 10000000000000000000 --private-key ${OWNER_PRIVATE_KEY}
 
### 查看错误
 forge selectors find 0x59c6995



 ##  4. 编写前端页面
 
#### npx create-next-app@latest

安装时，您将看到以下提示：
What is your project named? my-app
Would you like to use TypeScript? No / Yes   （no）
Would you like to use ESLint? No / Yes  (yes)
Would you like to use Tailwind CSS? No / Yes   (yes)
Would you like your code inside a `src/` directory? No / Yes  (no)
Would you like to use App Router? (recommended) No / Yes   (yes)
Would you like to use Turbopack for `next dev`?  No / Yes (no)
Would you like to customize the import alias (`@/*` by default)? No / Yes (yes)
What import alias would you like configured? @/* 

###  "tailwindcss": "^3.4.17" 使用3.4版本，不然会不生效
