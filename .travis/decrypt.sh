#!/usr/bin/env bash

# Ensure .snapcraft/ directory exists
mkdir .snapcraft/

# Decrypt snapcraft credentials
openssl aes-256-cbc \
  -K $encrypted_63324a0044f0_key \
  -iv $encrypted_63324a0044f0_iv \
  -in .travis/snapcraft.cfg \
  -out .snapcraft/snapcraft.cfg -d
