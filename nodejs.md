# Nodejs and NVM

## Installing nvm and nodejs

NVM homepage: https://github.com/creationix/nvm

Folow instructions there, then run

```bash
nvm ls-remote --lts

```

Chose the desired version and run

```bash
nvm install v6.11.2
nvm use v6.11.2
```

If you want to set default nodejs version as default run 

```bash
 nvm alias default v6.11.2
```


## Interesting packages and utils

### markdown 2 pdf

Nice markdown to pdf converter

Homepage: https://github.com/alanshaw/markdown-pdf

Install 

```bash
npm install -g markdown-pdf
```

Basic usage

```bash
markdown-pdf nodejs.md
```