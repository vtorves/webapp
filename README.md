# LinguÁgil webapp

[![Build Status](https://travis-ci.org/linguagil/webapp.svg?branch=master)](https://travis-ci.org/linguagil/webapp)

## Requirements

* node.js > v5.0.0

## Installation

```
npm -g install gulp
npm install
```

### Run

```
gulp
```

Open http://localhost:3000

### Deploy

```
gulp clean && gulp build && gulp service-worker && gulp manifest && gulp ghpages
```

Open: https://linguagil.github.io/webapp/