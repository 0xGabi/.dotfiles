################################################################################
#                                 Functions                                    #
# Adapted from https://github.com/sorin-ionescu/prezto/tree/master/modules/osx #
################################################################################

# Deletes .DS_Store and __MACOSX directories.
osx-rm-dir-metadata() {
    find "${@:-$PWD}" \( \
        -type f -name '.DS_Store' -o \
        -type d -name '__MACOSX' \
    \) -print0 | xargs -0 rm -rf
}
