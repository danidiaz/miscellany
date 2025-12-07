{
  # https://www.youtube.com/watch?v=VxpCgQyUXlI
  merge = {
    # https://stackoverflow.com/questions/27417656/should-diff3-be-default-conflictstyle-on-git
    conflictstyle = "diff3";
  };
  alias = {
    # TODO: find a way to identify the main branch to support both "master" for old repos and new-style "main"
    # Naming conventions
    #   r means restore
    #   e means rebase
    #   t means doing something only to already tracked files
    #   z means that we uses fzf to choose between options
    #   p means use of --patch, always combined with fzf
    #   g means doing something from the point current branch and main diverged
    # Meh aliases
    # cp = cherry-pick
    # cl = clone
    # try using switch instead
    # co = checkout
    # end meh aliases.
    c = ''commit'';
    ca = ''commit --amend'';
    b = ''branch --show-current'';
    ba = ''branch -vv --all'';
    bz = ''!"git branch --sort=-committerdate | grep '^[^*]' | fzf"'';
    sz = ''!"git switch $(git bz)"'';
    # https://stackoverflow.com/questions/29810331/is-there-a-quick-way-to-git-diff-from-the-point-or-branch-origin
    dz = ''!"git diff $(git ls-files --modified | fzf --multi)"    '';
    dg = ''!"git diff $(git merge-base main@{u} HEAD)"'';
    dgn = ''!"git diff --name-only $(git merge-base main@{u} HEAD)"'';
    dgz = ''!"git diff $(git merge-base main@{u} HEAD) -- $(git dgn | fzf)"'';
    ds = ''diff --staged'';
    dsz = ''!"git diff --staged $(git ls-files --modified | fzf --multi)"'';
    l = ''log --graph --oneline --decorate'';
    la = ''log --graph --oneline --decorate --all'';
    # This for following renames to a single file.
    # https://stackoverflow.com/a/4434056/1364288
    lf = ''log --graph --oneline --decorate --summary --follow '';
    laf = ''log --graph --oneline --decorate --summary --all --follow '';
    s = ''status -s -b'';
    st = ''status -s -b --untracked-files=no'';
    at = ''add --update'';
    atz = ''!"git add -- $(git ls-files --modified | fzf --multi)"'';
    atp = ''!"git add --patch -- $(git ls-files --modified | fzf --multi)"'';
    az = ''!"git add -- $(git ls-files --others | fzf --multi)"'';
    u = ''diff --name-only --diff-filter=U'';
    m = ''merge-base origin/main HEAD'';
    mt = ''mergetool'';
    dt = ''difftool'';
    rz = ''!"git restore -- $(git ls-files -m | fzf --multi)"'';
    rp = ''!"git restore --patch -- $(git ls-files -m | fzf --multi)"'';
    rsz = ''!"git restore --staged -- $(git diff --name-only --staged | fzf --multi)"'';
    eg = ''!"git rebase --interactive $(git merge-base main@{u} HEAD)"'';
    fm = ''fetch origin main'';
    em = ''rebase main@{u}'';
  };
  # https://git-scm.com/docs/git-push#Documentation/git-push.txt-pushautoSetupRemote

  init = {
    defaultBranch = "main";
  };

  user = {
    name = "Daniel Díaz";
    email = "diaz_carrete@yahoo.com";
  };
}
