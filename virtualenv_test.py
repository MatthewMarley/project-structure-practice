# Output to check current environment
# These will match unless i'm in a venv in which case sys.prefix will be the
# virtual environment, and base prefix will revert to global python version
import sys

print(f'sys.prefix: {sys.prefix}')
print(f'sys.base_prefix: {sys.base_prefix}')