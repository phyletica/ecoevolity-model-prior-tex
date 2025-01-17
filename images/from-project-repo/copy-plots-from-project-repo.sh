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
    project_gekko_plot_path="../../../ecoevolity-model-prior/results/gekkonid-plots/tex-plot-grids/${plot_file}"
    if [[ -e "$project_plot_path" ]]
    then
        cp "$project_plot_path" "$plot_file"
    elif [[ -e "$project_gekko_plot_path" ]]
    then
        cp "$project_gekko_plot_path" "$plot_file"
    else
        echo "WARNING: Could not find path to \"$plot_file\" in project repo"
    fi
done
