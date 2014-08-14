# plushu-git

Plugin that handles Git integration with Plushu, providing the behavior of
git-shell, and the hooks to initialize repos with Plushu hooks

## Why use hook scripts in the repository?

At first glance, this may seem to be more complicated than necessary. If this
plugin provides the commands that control all git interactions, why not just
include the hooking functionality in those commands, rather than interfering
with the layout of the git repositories themselves?

The answer: git's hooks provide functionality that couldn't be replicated from
outside the command, such as various information about the contents of the pack
being received, and the ability to cancel the operation if the hook fails.

Ideally, we'd be able to provide a hook at the command line when forwarding to
Git, but this functionality doesn't currently exist in Git. I've submitted a
[feature request][] to the Git mailing list suggesting this be added: until
such time as that feature is implemented, this is the best solution.

[feature request]: http://comments.gmane.org/gmane.comp.version-control.git/253790
