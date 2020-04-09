# Node.js

[Node.js](https://nodejs.org) is a runtime that's powered by JavaScipt under the hood. To get started with Node.js, check out [the Node.js documentation](https://nodejs.org/en/docs). Often times a version manager is used to run multiple versions of Node.js on the same system, so you might want to take a look at something like [asdf](https://github.com/asdf-vm/asdf), [nodenv](https://github.com/nodenv/nodenv), [nvm](https://github.com/creationix/nvm), or [n](https://github.com/tj/n) too.

## npm

npm is the default package manager for Node.js, so you'll want to get familiar with it by going to [the npm website](https://www.npmjs.com).

### Configuration

You can save some default npm configuration values using the `npm config set <key> <value>` command. Many of these values will be used when initializing the [`package.json`](#packagejson) file for a new project (using the `npm init` or `npm init --yes` command). Here are some common ones:

- Use `npm config set init-author-email "YOUR_EMAIL_ADDRESS"` to save your email address.
- Use `npm config set init-author-name "YOUR NAME"` to save your name.
- Use `npm config set init-author-url "YOUR_WEBSITE_URL"` to save the URL for your website.
- Use `npm config set init-license "PROJECT_LICENSE"` to save the default license for a project.
- Use `npm config set init-version "INITIAL_PROJECT_VERSION"` to save the initial version for a project.
- Use `npm config set scripts-prepend-node-path true` to "include the path for the node binary npm was executed with" when running npm scripts.
- Use `npm login` and enter your npm account credentials to sign in to the npm registry (used by the `npm publish` command).

## Yarn

Yarn is another popular dependency and package manager for Node.js, so you might want to get familiar with it by going to [the Yarn website](https://yarnpkg.com). The CLI commands are very similar to npm, which makes it very easy to transition from npm to Yarn.

### Configuration

You can save some default Yarn configuration values using the `yarn config set <key> <value>` command. Many of these values will be used when initializing the [`package.json`](#packagejson) file for a new project (using the `yarn init` or `yarn init --yes` command). Here are some common ones:

- Use `yarn config set init-author-email "YOUR_EMAIL_ADDRESS"` to save your email address.
- Use `yarn config set init-author-name "YOUR NAME"` to save your name.
- Use `yarn config set init-author-url "YOUR_WEBSITE_URL"` to save the URL for your website.
- Use `yarn config set init-license "PROJECT_LICENSE"` to save the default license for a project.
- Use `yarn config set init-version "INITIAL_PROJECT_VERSION"` to save the initial version for a project.
- Use `yarn login` and enter your npm account credentials (used by the `yarn publish` command).

## `package.json`

An important file for a Node.js project is the `package.json` file. This file contains a lot of project details like the package version/name/description/license, author/contributor information, project dependencies, and much more. You can generate it by running the command `npm init` or `yarn init` from the top-level of your project folder, or you can just create a file named `package.json` in the top-level of your project and add the necessary fields. [The `package.json` docs](https://docs.npmjs.com/files/package.json) can be helpful for filling in fields you're not sure about.
