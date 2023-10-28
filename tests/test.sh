#!/bin/sh

echo "--- Running tests ---"

python -m unittest discover -s tests/ 

echo "--- Generating report ---"

coverage run -m unittest discover -s tests/ 

coverage report --include ui/ui.py
