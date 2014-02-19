#!/bin/bash

# all servers except staging (which updates l10n so is separate)
servers="legal-testing testing testing1 testing2 testing3 testing4 testing5"

if [[ $1 == "quick" ]]; then
    for i in staging ${servers}; do
	echo; echo "Quick update for: $i"
	$HOME/$i.creativecommons.org/scripts/update.sh quick
    done
    exit
fi

echo; echo "Full update for: staging"
$HOME/staging.creativecommons.org/scripts/update.sh update-l10n

for i in ${servers}; do
    echo; echo "Full update for: $i"
    $HOME/$i.creativecommons.org/scripts/update.sh
done
