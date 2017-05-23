#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [[ -x "$DIR/local-setup.sh" ]]; then
  . "$DIR/local-setup.sh"
fi

read -r -d '' MARKDOWN_MAYHEM <<'END_OF_JSON'
{
  "remotes": {
    "github": {
      "service-name": "GitHub",
      "clone-url": "git@github.com:Klortho/markdown-mayhem.git"
    },
    "bitbucket": {
      "service-name": "BitBucket.org",
      "clone-url": "git@bitbucket.org:klortho/markdown-mayhem.git"
    }
  }
}
END_OF_JSON
export MARKDOWN_MAYHEM

echo $MARKDOWN_MAYHEM
