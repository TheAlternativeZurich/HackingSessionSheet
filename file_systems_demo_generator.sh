#!/usr/bin/env bash

pushd .
cd ./HackingSessionExercises/fileSystems/
fallocate -l 16M TestDisk
fallocate -l 1M partition1
fallocate -l 1M partition2
fallocate -l 1M image.iso
echo "You successfully wrote an image to fake disk!" > image.iso
popd
