#!/bin/bash

function download {
  local url="$1"
  local path="$2"

  rm -rf "${path}"

  git clone "${url}" "${path}"
  echo "${path}: ${url}: $(cd "${path}"; git log --oneline -n 1)" >>VERSIONS

  rm -rf "${path}/.git"
}

rm -f VERSIONS

download https://github.com/phlipper/chef-zip zip
download https://github.com/opscode-cookbooks/git.git git
download https://github.com/opscode-cookbooks/subversion.git subversion
download https://github.com/opscode-cookbooks/java.git java
download https://github.com/jtimberman/ruby-cookbook.git ruby
download https://github.com/erniebrodeur/chef-recipe-rake.git rake
download https://github.com/jtgraphic/opscode-chef-cookbook-sass.git sass
download https://github.com/opscode-cookbooks/maven maven
