# Signal Processing Memorandum

This is my note for (mainly digital) signal processing.
I hope this helps someones like students and engineers.

## Definitions

- workspace directory: the directory where this README.md file is located.
- build output directory: `<workspace directory>/build-out`. The output PDF file is generated here.

## How to compile this document

### Way 1: Using Command Line

1. Open a terminal and navigate to the workspace directory.
2. Run the following command to compile the document:

   ```bash
   bash -c "cd src; lualatex -file-line-error -synctex=1 -interaction=nonstopmode -halt-on-error -output-directory=../build-out sig_proc_memorandum.tex"
   ```

### Way 2: (recommended) Using VSCode and LaTeX Workshop

We need to install [LaTeX Workshop](https://marketplace.visualstudio.com/items?itemName=James-Yu.latex-workshop).

1. Open the workspace directory in VSCode.
2. Open the command palette (Ctrl+Shift+P) and type "LaTeX Workshop: Build with recipe".
3. Select "lualatex".

   Don't worry. `./vscode/settings.json` is already configured to use `lualatex`. It is recommended to look at the settings and you will learn how this works.

4. Wait for the build to finish.
