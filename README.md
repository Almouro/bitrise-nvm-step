# Bitrise NVM step

Install NVM and select Node version.

This step will install a specific node.js version using NVM, and will make it available for all your other steps.

NVM (Node Version Manager) is a simple bash script to manage multiple active node.js versions. See [here](https://github.com/nvm-sh/nvm) for more details.

## How to use this Step

Can be run directly with the [bitrise CLI](https://github.com/bitrise-io/bitrise),
just `git clone` this repository, `cd` into it's folder in your Terminal/Command Line
and call `bitrise run test`.

_Check the `bitrise.yml` file for required inputs which have to be
added to your `.bitrise.secrets.yml` file!_
