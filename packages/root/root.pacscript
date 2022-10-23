name="root"
pkgname="root"
repology=("project: root")
version="6.26.06"
maintainer="Salman <salman.khurshid.malik@cern.ch>"

_ubuntuver=$(grep "VERSION_ID=" /etc/os-release | grep -o "[0-9]*" | tr -d '[:space:]')
if [[ ${_ubuntuver} -ge 2010 ]]; then
  url="https://root.cern/download/root_v6.26.06.Linux-ubuntu18-x86_64-gcc7.5.tar.gz"
elif [[ ${_ubuntuver} -lt 2010 && ${_ubuntuver} -ge 2004 ]]; then
  url="https://root.cern/download/root_v6.26.06.Linux-ubuntu20-x86_64-gcc7.5.tar.gz"
elif [[ ${_ubuntuver} -lt 2004 && ${_ubuntuver} -ge 1804 ]]; then
  url="https://root.cern/download/root_v6.26.06.Linux-ubuntu18-x86_64-gcc7.5.tar.gz"
fi

depends="dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev python libssl-dev git"

description="ROOT is an open-source data analysis framework used by high energy physics and others. This package for Ubuntu and derivatives is unofficially maintained"

install() {
           mv DESTIR="${pkgdir}" $HOME/.local/root/
}

postinst() {
      echo "Put this line in your shell"
      _shell= echo $SHELL
      if [[ ${_shell} -eq bash ]]; then
        echo "source $HOME/.local/root/bin/thisroot.sh"
      elif [[ ${_shell} -eq zsh ]]; then
        echo "source $HOME/.local/root/bin/thisroot.zsh"
      elif [[ ${_shell} -eq fish ]]; then
        echo "source $HOME/.local/root/bin/thisroot.fish"
      fi
}
