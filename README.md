# Homebrew Tap for samwisely75

This is a Homebrew tap for samwisely75's tools.

## Installation

```bash
brew tap samwisely75/tap
brew install quot
```

## Available Packages

### quot

A fast and flexible command-line tool that converts text input into escaped string literals.

- **Source**: https://github.com/samwisely75/quot
- **Documentation**: https://github.com/samwisely75/quot#readme

## Usage

After installation, you can use the tools directly:

```bash
# Quote text interactively
quot

# Quote from file
quot input.txt

# Quote from pipe with different styles
echo "Hello World" | quot --single
cat file.txt | quot --raw
```
