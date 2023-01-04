#### 生成blockchain的本地网络
anvil
#### 部署合同到blockchain
（local）
forge c src/Number.sol:Number --private-key 0xac0974bec39a17e36ba4a6b4d238ff944bacb478cbed5efcae784d7bf4f2ff80 --
constructor-args 10
(geroli and quicknode)
forge c src/Number.sol:Number --private-key 26bb0512e9c3ab1dfa5718026ad720ae64310bee3887cd19147496588dd7a30e --constructor-args 10 --rpc-url https://late-dawn-frog.ethereum-goerli.discover.quiknode.pro/ff552ff29183de964258299d8c0def259eab1540/
#### 查看合同的abi
forge inspect Number abi

#### 从smart contract里读取数据
cast call 0x5fbdb2315678afecb367f032d93f642f64180aa3  "getNum()"
(geroli and quicknode)
cast call 0x70fE4fD118c8be93B8BffA567F8Af81F55b9BEec "getNum()" --rpc-url https://late-dawn-frog.ethereum-goerli.discover.quiknode.pro/ff552ff29183de964258299d8c0def259eab1540/

#### 向smart contract里写数据
cast send 0x5fbdb2315678afecb367f032d93f642f64180aa3  "increment()" --private-key 0x8b3a350cf5c34c9194ca85829a2df0ec3153be0318b5e2d3348e872092edffba
cast send 0x5fbdb2315678afecb367f032d93f642f64180aa3  "decrement(uint)" 2 --private-key 0x7c852118294e51e653712a81e05800f419141751be58f605c371e15141b007a6

 cast send 0x70fE4fD118c8be93B8BffA567F8Af81F55b9BEec "increment()" --private-key 26bb0512e9c3ab1dfa5718026ad720ae64310bee3887cd19147496588dd7a30e --rpc-url https://late-dawn-frog.ethereum-goerli.discover.quiknode.pro/ff552ff29183de964258299d8c0def259eab1540/
 cast send 0x70fE4fD118c8be93B8BffA567F8Af81F55b9BEec "decrement(uint)" 2 --private-key 26bb0512e9c3ab1dfa5718026ad720ae64310bee3887cd19147496588dd7a30e --rpc-url https://late-dawn-frog.ethereum-goerli.discover.quiknode.pro/ff552ff29183de964258299d8c0def259eab1540/
#### metamask 用作测试网络，存储敏感信息

https://blog.ethereum.org/2022/06/21/testnet-deprecation
