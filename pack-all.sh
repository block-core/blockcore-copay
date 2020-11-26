#!/bin/bash

 pushd ../blockcore-bitcore/packages
npm run compile

 pushd bitcore-wallet-client
npm pack
popd

 pushd crypto-wallet-core
npm pack
popd

 pushd bitcore-lib
npm pack
popd

 pushd bitcore-p2p
npm pack
popd

 pushd bitcore-mnemonic
npm pack
popd

 popd

npm i ../blockcore-bitcore/packages/crypto-wallet-core/crypto-wallet-core-8.22.2.tgz
npm i ../blockcore-bitcore/packages/bitcore-wallet-client/bitcore-wallet-client-8.22.2.tgz
npm i ../blockcore-bitcore/packages/bitcore-lib/bitcore-lib-8.22.2.tgz
npm i ../blockcore-bitcore/packages/bitcore-p2p/bitcore-p2p-8.22.2.tgz
npm i ../blockcore-bitcore/packages/bitcore-mnemonic/bitcore-mnemonic-8.22.2.tgz
npm i
npm start