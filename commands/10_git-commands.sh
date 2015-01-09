if [[ -n "$PLUSHU_REPOS_DIR" ]]; then case "$1" in
  git-receive-pack|git-upload-pack|git-upload-archive)
    cmd=$1
    repo=${2%.git}
    repo_path=$PLUSHU_REPOS_DIR/$repo.git

    PLUSHU_REPO_NAME=$repo GIT_DIR=$repo_path "$PLUSHU_ROOT/lib/plushook" \
      git-command "$cmd" "$repo_path"

    # Mark that we handled this command
    export PLUSHU_COMMAND_HANDLED=$1
    ;;
esac fi
