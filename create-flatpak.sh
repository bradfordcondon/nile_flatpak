#!/bin/bash

~/work/flatpak-builder-tools/pip/flatpak-pip-generator --runtime='org.gnome.Sdk//45' pycryptodome
~/work/flatpak-builder-tools/pip/flatpak-pip-generator --runtime='org.gnome.Sdk//45' pyjson5
~/work/flatpak-builder-tools/pip/flatpak-pip-generator --runtime='org.gnome.Sdk//45' zstandard
~/work/flatpak-builder-tools/pip/flatpak-pip-generator --runtime='org.gnome.Sdk//45' requests
~/work/flatpak-builder-tools/pip/flatpak-pip-generator --runtime='org.gnome.Sdk//45' charset-normalizer

flatpak-builder nile  flatpak.yaml --force-clean  
flatpak-builder --user --install --force-clean nile flatpak.yaml
flatpak build-bundle ~/.local/share/flatpak/repo nile.flatpak com.github.imLinguin.nile