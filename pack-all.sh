#!/bin/bash

 pushd ../blockcore-bitcore/packages
npm run compile

 pushd bitcore-lib-city
npm pack
popd

 pushd bitcore-wallet-client
npm pack
popd

 pushd crypto-wallet-core
npm pack
popd

 popd

# Important to first install the custom libraries as they are dependencies on the two others and
# they are not published in public repository.
npm i ../blockcore-bitcore/packages/bitcore-lib-city/bitcore-lib-city-8.22.2.tgz

npm i ../blockcore-bitcore/packages/crypto-wallet-core/crypto-wallet-core-8.22.2.tgz
npm i ../blockcore-bitcore/packages/bitcore-wallet-client/bitcore-wallet-client-8.22.2.tgz
npm i
npm start