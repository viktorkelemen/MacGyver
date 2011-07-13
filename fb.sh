function fb {
  case "$1" in
    w) pushd $HOME/workspace ;;
    cookpad) pushd $HOME/work/cookpad_all ;;

    imo_skype)  pushd $HOME/workspace/imo_skype ;;
    *)           echo "no bookmark for this" ;;
  esac
}

