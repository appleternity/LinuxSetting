# LinuxSetting

## Something worth trying
**Oh-My-Posh**
1. https://ohmyposh.dev/
2. https://github.com/jandedobbeleer/oh-my-posh

## Nerd Fonts
I am using "UbuntuMono NF" one. (https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Ubuntu.zip)

This is the setting for my own `WSL`.
```json
"font": {
    "face": "UbuntuMono NF",
    "size": 15,
    "weight": "normal"
},
```


#### Reference: 
https://www.nerdfonts.com/

## Change default shell to zsh without root
Add the following to the `~/.bashrc` or `~/.profile`. 
```sh
if [[ ($- == *i*) && ($SSH_TTY) ]];
then
 export SHELL=bin/zsh
 exec bin/zsh -l
fi
```

The `bin/zsh` might need to change if you install that from source or conda.
```sh
if [[ ($- == *i*) && ($SSH_TTY) ]];
then
    export SHELL=/dgxhome/czh5679/anaconda3/bin/zsh
    exec /dgxhome/czh5679/anaconda3/bin/zsh -l
fi
```

#### Reference
1. https://medium.com/@ritvikmarwaha/change-your-shell-to-zsh-on-a-remote-server-with-or-without-root-access-c4339804caab


## Issue of Conda Python Reading `.local` 
**Better Solution**
```sh
conda env config vars set PYTHONUSERBASE="intentionally-disabled" --name <env_name>
```

**Old Solution**
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
