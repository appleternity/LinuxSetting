# LinuxSetting

## Issue of Conda Python Reading `.local` 
Locate the directory for the conda environment in your terminal window by running in the terminal echo `$CONDA_PREFIX`.

Enter that directory and create these subdirectories and files:
```zsh
cd $CONDA_PREFIX
mkdir -p ./etc/conda/activate.d
mkdir -p ./etc/conda/deactivate.d
touch ./etc/conda/activate.d/env_vars.sh
touch ./etc/conda/deactivate.d/env_vars.sh
```

Edit `./etc/conda/activate.d/disable-PYTHONUSERBASE.sh` as follows:
```sh
#!/bin/sh
export PYTHONUSERBASE="intentionally-disabled"
```

Edit `./etc/conda/deactivate.d/disable-PYTHONUSERBASE.sh` as follows:
```sh
#!/bin/sh
unset PYTHONUSERBASE
```

#### Reference
1. https://conda.io/projects/conda/en/latest/user-guide/tasks/manage-environments.html#saving-environment-variables
2. https://stackoverflow.com/questions/62352699/conda-uses-local-packages
