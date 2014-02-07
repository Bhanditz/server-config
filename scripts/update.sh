#!/bin/bash

if [[ $1 == "quick" ]]; then
    for i in staging testing legal-testing; do
	echo; echo "Quick update for: $i"
	$HOME/$i.creativecommons.org/scripts/update.sh quick
    done
    exit
fi

echo; echo "Full update for: staging"
$HOME/staging.creativecommons.org/scripts/update.sh update-l10n

for i in testing legal-testing; do
    echo; echo "Full update for: $i"
    $HOME/$i.creativecommons.org/scripts/update.sh
done
