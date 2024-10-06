Here’s a sample `README.md` for your project:

---

# 🔄💻 Upgradable UUPS Proxy

This project demonstrates the implementation of an **upgradable smart contract** using the **UUPS (Universal Upgradeable Proxy Standard)** pattern with two example implementations. It leverages the **Foundry** framework.

## 🚀 Features

- **UUPS Proxy**: A proxy that allows you to upgrade the implementation contract while preserving the contract’s state.
- **Versioning**: Each implementation includes a `version()` function to check which implementation the proxy is currently using.
- **Deployment and Upgrade Scripts**:
  - `DeployBox.s.sol` - Deploy the UUPS proxy and the initial implementation (version 1).
  - `UpgradeBox.s.sol` - Upgrade the proxy to a new implementation.

## 📜 How It Works

- **Proxy Contract**: A UUPS proxy is deployed to delegate calls to an implementation contract. The implementation can be upgraded later on.
- **Implementation Contracts**: There are two example implementations that demonstrate the upgradability. The current version can be checked using the `version()` function.

## 📄 License

This project is licensed under the **MIT License**.
Feel free to customize this to your project as needed!
## ⬇️ Installation

### Clone the repository:
```bash
git clone https://github.com/VasilGrozdanov/foundry-proxy.git
```

## 🛠️ Usage

### 🔨 Build
Use the [Makefile](https://github.com/VasilGrozdanov/foundry-proxy/blob/main/Makefile) commands **(📝 note: Make sure you have GNU Make installed and add the necessary environment variables in a `.env` file)**, or alternatively foundry commands:
```shell
$ forge build
```

### 🧪 Test

```shell
$ forge test
```

### 🎨 Format

```shell
$ forge fmt
```

### ⛽ Gas Snapshots

```shell
$ forge snapshot
```

### 🔧 Anvil

```shell
$ anvil
```

### 🚀 Deploy

```shell
$ forge script script/DeployBox.s.sol --rpc-url <your_rpc_url> --private-key <your_private_key> --broadcast
```
> ⚠️ **Warning: Using your private key on a chain associated with real money must be avoided!**

 OR
```shell
$ forge script script/DeployBox.s.sol --rpc-url <your_rpc_url> --account <your_account> --broadcast
```
> 📝 **Note: Using your --account requires adding wallet first, which is more secure than the plain text private key!**

### ⏫ Upgrade

```shell
$ forge script script/UpgradeBox.s.sol --rpc-url <your_rpc_url> --private-key <your_private_key> --broadcast
```
 OR
```shell
$ forge script script/UpgradeBox.s.sol --rpc-url <your_rpc_url> --account <your_account> --broadcast
```
> 📝 **Note: Same private key safety concerns apply here, as with deploy scripts.**

### 🛠️ Cast

```shell
$ cast <subcommand>
```

### ❓ Help

```shell
$ forge --help
$ anvil --help
$ cast --help
```
