pyenv init --path
pyenv init - | source

set -x WORKON_HOME "(HOME)/.virtualenvs"
set -x PROJECT_HOME "/Users/elijah.verdoorn/robinhood"
set -x PYENV_VIRTUALENVWRAPPER_PREFER_PYVENV "true"
pyenv virtualenvwrapper_lazy


alias bonfire "RUN_LOCALLY=1 python scripts/run/bonfire_cli.py"

vf addplugins compat_aliases projects environment

function __node_binpath_cwd -v PWD
  set -l node_modules_path "$PWD/node_modules/.bin"
  if test -e "$node_modules_path"
    set -g __node_binpath "$node_modules_path"
    set -x PATH $PATH $__node_binpath
  else
    set -q __node_binpath
      and set -l index (contains -i -- $__node_binpath $PATH)
      and set -e PATH[$index]
      and set -e __node_binpath
  end
end

__node_binpath_cwd $PWD

