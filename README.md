# 🚀 ilitools – INTERLIS CLI Tool Manager

`ilitools` is a lightweight command-line utility for installing and managing INTERLIS-based tools like `ili2c` and `ilivalidator`.

### ✅ Features

- Install any released version of `ili2c` or `ilivalidator`
- Switch between versions easily
- Automatically updates your `PATH`
- Works similarly to [SDKMAN](https://sdkman.io/) but for INTERLIS tools

---

### 📦 Installation

Run this command in your terminal:

```bash
curl -s https://gist.githubusercontent.com/edigonzales/320ba6b6407a4989c644a687759ce592/raw/install-ilitools.sh | bash
```

Then either restart your terminal or run:

```bash
source ~/.bashrc     # or ~/.zshrc depending on your shell
```
Dependencies:

- curl
- xmllint (e.g. `libxml2-utils`)

### 🛠 Usage

Install and use a specific version:

```bash
ilitools i ili2c 5.6.3           # Install ili2c version 5.6.3
ilitools u ili2c 5.6.3           # Set version 5.6.3 as active
ilitools l ili2c                 # List available versions of ili2c
```

Now you can just run:

```bash
ili2c --help
```

Same applies to ilivalidator:

```bash
ilitools i ilivalidator 1.14.6
ilitools u ilivalidator 1.14.6
ilivalidator --help
```

### 📂 Where it's installed

Scripts and jars are stored in:

```
~/.ilitools/
```

Add this to your shell config manually if needed:

```bash
export PATH="$HOME/.ilitools/bin:$PATH"
```