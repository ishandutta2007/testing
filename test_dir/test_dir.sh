function join_by { local d=$1; shift; echo -n "$1"; shift; printf "%s" "${@/#/$d}"; }

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
echo $DIR
echo "\n"

IFS='/' read -ra PARTS <<< "$DIR"
echo "${PARTS[@]:0:7}"
echo "\n"

PARTS2=${PARTS[@]:0:6}
echo $PARTS2
echo "\n"

root_dir='/'$(join_by / $PARTS2)
echo $root_dir






