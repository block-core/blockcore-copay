#!/bin/bash

pushd ../blockcore-bitcore/packages
npm run compile

pushd bitcore-wallet-client
npm pack
popd

pushd crypto-wallet-core
npm pack
popd

popd

npm i ../blockcore-bitcore/packages/crypto-wallet-core/blockcore-crypto-wallet-core-8.22.2.tgz
npm i ../blockcore-bitcore/packages/bitcore-wallet-client/blockcore-bitcore-wallet-client-8.22.2.tgz
npm i
npm start
