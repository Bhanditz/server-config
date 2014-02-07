#!/bin/bash

for i in staging testing legal-testing; do
    $HOME/$i.creativecommons.org/scripts/update.sh quick
done

if [[ $1 == "quick" ]]; then
   exit
fi

$HOME/staging.creativecommons.org/scripts/update.sh update-l10n
$HOME/testing.creativecommons.org/scripts/update.sh
$HOME/legal-testing.creativecommons.org/scripts/update.sh
