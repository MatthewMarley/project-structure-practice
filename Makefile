# Structure of Makefile

# target: pre-req1 pre-req2 pre-req3 ...
  # recipes

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

# If venv doesn't exist it creates it, then installs dependencies via requirements.txt
# If venv exists but requirements.txt has changed it'll rebuild env + dependencies
# If venv exists and requirements.txt is unchanged, app.py will run immediately

# Pre-requisite must be completed first so target `venv/Scripts/activate` runs first
run: venv/Scripts/activate
	./venv/Scripts/python app.py

# Create virtual env, then run requirements.txt inside to download dependencies
venv/Scripts/activate: requirements.txt
	python -m venv venv
	./venv/Scripts/pip install -r requirements.txt

# Clean up pycache folder
# clean:
#	Remove-Item ./__pycache__
#	Remove-Item venv






