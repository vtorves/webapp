#!/bin/sh

git config user.name "Travis CI"
git config user.email "$COMMIT_AUTHOR_EMAIL"

openssl aes-256-cbc -K $encrypted_9ba9e0c1817c_key -iv $encrypted_9ba9e0c1817c_iv -in id_rsa_travis.enc -out id_rsa_travis -d
chmod 600 id_rsa_travis
eval `ssh-agent -s`
ssh-add id_rsa_travis
