#! /bin/bash

set -e

for plot_file in *.pdf
do
    if [[ $plot_file == poster-* ]]
    then
        # Skipping images for poster that was already preseented
        continue
    fi
    project_plot_path="../../../ecoevolity-model-prior/results/plots/${plot_file}"
    cp "$project_plot_path" "$plot_file"
done
