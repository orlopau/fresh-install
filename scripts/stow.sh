#!/bin/bash
SCRIPTPATH="$( cd -- "$( dirname -- "${BASH_SOURCE[0]:-$0}"; )" &> /dev/null && pwd 2> /dev/null; )";

stow --dir "$SCRIPTPATH/../dotfiles/" --target ~ --adopt .
