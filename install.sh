if ! command -v rcup &> /dev/null; then
  sudo apt update && sudo apt install rcm
fi
cd $(dirname $0)
git submodule update --init --recursive
RCRC=./rcrc rcup
