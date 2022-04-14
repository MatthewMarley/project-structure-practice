# Structure of Makefile

# target: pre-req1 pre-req2 pre-req3 ...
#     recipes

# target -> the goal we want to achieve 
    # (usually a file that needs to be created during the build)

# Prerequisites -> Which files this target depends on

# recipes -> list of shell commands to be executed by make as part of building target


# When make executes a target
  # Checks prerequisites. If these have their own recipes then execute them first
  # Once all pre-reqs are ready for target the recipe is executed
  # Recipes are only executed if 
    # target doesn't exist, or
    # Pre-reqs are newer than the target


# Note: As we are using Powershell we download choco first, then run
# choco install make

# First target is to run the app (no pre-reqs). Can be run with `make run`
run:
  python app.py

# Setup target depends on requirements.txt. 
# When this file changes, the dependencies are refreshed by running `pip install -r`
setup: requirements.txt
  pip install -r requirements.txt

# Clean up pycache folder
clean:
  rm -rf __pycache__
