# `gh md-tag`

Forked from [git-release](https://github.com/spenserblack/git-release)
to be a `gh` extension.

## :warning: Archived

To permit Markdown (`# header`), this would change the comment character,
call git tag, then reverse the comment character. This worked, but one
can just call `git tag --cleanup=verbatim` to include lines that start
with `#`. Because a solution already exists, this isn't that useful,
so I'm archiving it.

## Motivation

I like to write release notes in an annotated tag message.
I *want* to be able to write them in Markdown format, so that
they can [easily be translated to GitHub release notes][tag-to-release].
However, there's a problem stopping me from being able to do this:
`#` to `######` are headers in Markdown, but comments in git messages.

This git extension is a shortcut to

1. Change the comment character to `;`
2. Start `git tag -a <tag name>`
3. Revert back to the previous comment character (or unset it if it wasn't set)

This pairs well with [my Tag to Release action][release-action].

## Installation

```shell
gh extension install spenserblack/gh-md-tag
```

## Usage

```
gh md-tag <tag name> [commit-ish]
```

[tag-to-release]: ./.github/workflows/release.yml
[release-action]: https://github.com/marketplace/actions/tag-to-release
