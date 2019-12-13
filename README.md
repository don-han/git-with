
## What
`with` makes it easy to credit everyone who contributed in a pair programming or in a mob programming. It acknowledges the team effort through `co-authored-by` Github feature without you having to remember your team member's github email address or worrying about spelling their last name correctly.

It's written in bash for minimal dependency.


## Usage

Pair functionality
`with dh`

```


Co-authored-by: Don Han <don@han.com>
```


Supports multiple co-authors or mobbing
`with dh ag`
```


Co-authored-by: Don Han <don@han.com>
Co-authored-by: Abhishek Gayakwad <abhishek@gayakwad.com>
```

Clears all co-authors
`with`


## Setup

1. Move this repo into `$HOME`
1. `git config --global commit.template ~/.git-with/template`
1. `alias with="bash ~/.git-with/with.sh"`
1. Populate `~/.git-with/authors.csv` with nickname, full name and email address


## Current Limitations

- Cleans git commit template everytime it's called, so if you like to have a custom git commit template, you might have to find a workaround
- If nickname cannot be found, it writes `Co-authored-by:  <>`
- Setup could be more streamlined with a script
