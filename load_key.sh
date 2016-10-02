#!/bin/sh

git config user.name "Travis CI"
git config user.email "$COMMIT_AUTHOR_EMAIL"

openssl aes-256-cbc --add -K $encrypted_9ba9e0c1817c_key -iv $encrypted_9ba9e0c1817c_iv -in id_rsa_travis.enc -out ~\/.ssh/id_rsa_travis -d
