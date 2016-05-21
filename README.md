# amycleary

Codebase for amycleary.com static site, generated with HarpJS.

## Requirements

Node/npm with globally installed NPM packages

- [harp](http://harpjs.com/)
- [bower](http://bower.io/)
- [browser-sync](https://www.browsersync.io/)

## Install

Install node/npm, make dev folder, clone package, install dependencies and run dev build (opens at http://localhost:3000/)

```
git clone https://github.com/timkinnane/amycleary.git .
npm install
bower install
npm run dev
```

## Development

Docs for (bower) included SCSS front end libraries

- [skeleton (css boilerplate)](http://getskeleton.com/)
- [include-media (media queries)](http://include-media.com/)
- [bourbon (mixins)](http://bourbon.io/)

## Content Management

TODO

## Compilation

TODO

___

NB: I used [min browser](https://minbrowser.github.io/min/) for development, because its clean and simple and so I don't have to find the site I'm working on among my Chrome tabs. To stop browser-sync from trying to open min, remove `--browser min` from the sync task in _package.json_.
