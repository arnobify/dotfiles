#!/usr/bin/bash
# User Name
git config --global user.name "Arnob Karmokar"

# Default mail address, change to --local if special repository
# git config --global user.email ""

# Aliases
git config --global alias.st 'status'
git config --global alias.ci 'commit -v'
git config --global alias.co 'checkout'
git config --global alias.br 'branch'

# Vim related configuration
git config --global core.editor 'vim' # Sets the default Git text editor to 'vim' globally.
git config --global diff.tool 'vimdiff' # Sets the default Git diff tool to 'vimdiff' globally.

# Conflict merge settings
git config --global merge.tool 'vimdiff' # Sets 'vimdiff' as the global merge tool in Git configuration.
git config --global merge.conflictstyle 'diff3' # Configures conflict style during merging to 'diff3'.
git config --global merge.mergetool 'vimdiff' # Specifies 'vimdiff' as the mergetool for Git.
git config --global merge.prompt 'false' # Disables the merge prompt globally in Git configuration.

# Push/Pull related settings
git config --global push.default 'simple' # Sets the global Git push behavior to 'simple'. Pushes the current branch with the same name on the remote.
git config --global pull.rebase true # Enables global Git pull with rebase instead of merge.
