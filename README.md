
## Why use `with`?
`with` makes it easy to credit everyone who contributed in a pair programming or in a mob programming. It acknowledges the team effort leveraging [`Co-authored-by` Github feature](https://docs.github.com/en/free-pro-team@latest/github/committing-changes-to-your-project/creating-a-commit-with-multiple-authors#creating-co-authored-commits-on-the-command-line) without you having to remember your team member's Github email address or worrying about spelling their last name correctly. 

By programmatically crediting everyone, Github can search commits based on users and have accurate portrayal of code contribution.

It's written in bash for minimal dependency.

## Usage

You can add your pair partner

$ `with dh`

```


Co-authored-by: Don Han <don@han.com>
```


Or add multiple co-authors

$ `with dh ag`
```


Co-authored-by: Don Han <don@han.com>
Co-authored-by: Abhishek Gayakwad <abhishek@gayakwad.com>
```

Clear all co-authors

$ `with`
```



```


## Setup Instruction

*Take a look at `setup.sh` before running to make sure it doesn't replace your pre-existing setup*

1. Clone this repo and `cd` into the repo
1. Run `bash setup.sh`
1. Populate `~/.git-with/authors.csv` with nickname, full name and email address


## Current Limitations

- Cleans git commit template everytime it's called, so if you like to have a custom git commit template, you might have to find a workaround
- If nickname cannot be found, it writes `Co-authored-by:  <>`
- Does not work with `git commit -m`
