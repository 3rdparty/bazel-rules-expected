"""Adds repositories/archives."""

########################################################################
# DO NOT EDIT THIS FILE unless you are inside the
# https://github.com/3rdparty/bazel-rules-expected repository. If you
# encounter it anywhere else it is because it has been copied there in
# order to simplify adding transitive dependencies. If you want a
# different version of bazel-rules-expected follow the Bazel build
# instructions at https://github.com/3rdparty/bazel-rules-expected.
########################################################################

load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def repos(external = True, repo_mapping = {}):
    if external:
        maybe(
            git_repository,
            name = "com_github_3rdparty_expected",
            remote = "https://github.com/3rdparty/bazel-rules-expected",
            commit = "fa03b08f155282f0b575b27052a53a0f3c516381",
            shallow_since = "1654115793 +0300",
            repo_mapping = repo_mapping,
        )
