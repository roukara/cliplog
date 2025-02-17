# 🗉 cliplog

`cliplog` is a simple CLI tool to track clipboard history and export it as Markdown.

## 🚀 Features

- **Start monitoring** clipboard changes (`cliplog start`)
- **Export clipboard history** (last 24 hours) as a Markdown file (`cliplog export`)
- **Stop monitoring** clipboard activity (`cliplog stop`)

## 📦 Installation

### 1. Manual Installation

```bash
git clone https://github.com/roukara/cliplog.git
cd cliplog
./scripts/install.sh
```

### 2. Homebrew Installation

```bash
brew tap roukara/cliplog
brew install cliplog
```

## 🔧 Usage

```bash
cliplog start   # Start clipboard monitoring
cliplog export  # Export clipboard history as Markdown
cliplog stop    # Stop clipboard monitoring
```

The exported clipboard history will be saved in:

```bash
~/cliplog_export.md
```

## 🛠️ Development

To contribute or modify:

```bash
git clone https://github.com/roukara/cliplog.git
cd cliplog
```

## 💜 License

This project is licensed under the MIT License.
