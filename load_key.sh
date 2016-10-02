#!/bin/sh

git config user.name "Travis CI"
git config user.email "$COMMIT_AUTHOR_EMAIL"

ENCRYPTED_KEY_VAR="encrypted_${ENCRYPTION_LABEL}_key"
ENCRYPTED_IV_VAR="encrypted_${ENCRYPTION_LABEL}_iv"
ENCRYPTED_KEY=${!ENCRYPTED_KEY_VAR}
ENCRYPTED_IV=${!ENCRYPTED_IV_VAR}
openssl aes-256-cbc --add -K $ENCRYPTED_KEY -iv $ENCRYPTED_IV -in id_rsa_travis.enc -out ~\/.ssh/id_rsa_travis -d
