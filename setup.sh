#!/bin/bash
set -o errexit  # エラー時にスクリプトを終了
set -o pipefail # パイプの一部が失敗したときに異常終了する
set -o xtrace   # 実行するコマンドを逐一表示する

# install homebrew(for M2 Mac)
#   https://medium.com/geekculture/error-cannot-install-in-homebrew-on-arm-processor-in-intel-default-prefix-fd2e5f5fee88
cd /opt
sudo mkdir homebrew
sudo chown $(whoami):admin homebrew
cd homebrew
curl -L https://github.com/Homebrew/brew/tarball/master | tar xz -C . --strip-componets 1
echo 'export PATH="/opt/homebrew/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

# check architecture
case "$(uname -m)" in
  x86_64) arch=x86_64 ;;
  arm64) arch=aarch64 ;;
  *) echo "unknown arch" >&2; exit 1
esac

# pull mitamae
sudo curl -fsSLo /usr/local/bin/mitamae https://github.com/itamae-kitchen/mitamae/releases/latest/download/mitamae-${arch}-darwin
sudo chmod +x /usr/local/bin/mitamae
