# amycleary

Codebase for amycleary.com static site, generated with HarpJS.

## Requirements

Node/npm (recommended via [homebrew](http://brew.sh)) with globally installed packages

- [harp](http://harpjs.com/)
- [bower](http://bower.io/)
- [browser-sync](https://www.browsersync.io/)

## Install

1. Install node/npm
1. make dev folder
1. clone package
1. install dependencies
1. run dev build (opens at http://localhost:3000/)

```
# deps (optional)
brew install -g harp bower browser-sync
# repo & dev
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

Docs for template, stylesheet languages

- [harp (content/variables)](http://harpjs.com/docs/)
- [jade (templates)](http://jade-lang.com/reference/) or [this one](http://naltatis.github.io/jade-syntax-docs)
- [sass (stylesheets)](http://sass-lang.com/documentation/file.SASS_REFERENCE.html)

## Content Management

TODO

## Compiling

TODO

___

NB: I used [min browser](https://minbrowser.github.io/min/) for development, because its clean and simple and so I don't have to find the site I'm working on among my Chrome tabs. To stop browser-sync from trying to open min, remove `--browser min` from the sync task in _package.json_.
