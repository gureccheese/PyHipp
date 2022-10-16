#!/bin/bash

echo "Number of hkl files"
find . -name "*.hkl" | grep -v -e spiketrain -e mountains | wc -l

echo "Number of mda files"
find mountains -name "firings.mda" | wc -l

echo "Start Time"
head rplspl-slurm*.out
head rplpl-slurm*.out

echo "End Time"
tail rplspl-slurm*.out
tail rplpl-slurm*.out

