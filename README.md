# `git release`

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
4. Push the tag to the remote repo (`remote.origin.url`)

This pairs well with [my Tag to Release action][release-action].

## Installation

```shell
curl https://raw.githubusercontent.com/spenserblack/git-release/HEAD/install.sh | sh
```

## Usage

```
git release <tag name> [commit-ish]
```

[tag-to-release]: ./.github/workflows/release.yml
[release-action]: https://github.com/marketplace/actions/tag-to-release
