
## Why use `with`?
`with` makes it easy to credit everyone who contributed in a pair programming or in a mob programming. It acknowledges the team effort leveraging [`Co-authored-by` Github feature](https://docs.github.com/en/free-pro-team@latest/github/committing-changes-to-your-project/creating-a-commit-with-multiple-authors#creating-co-authored-commits-on-the-command-line) without you having to remember your team member's email address or worrying about spelling their last name correctly. 

By programmatically crediting everyone, Github can filter commits based on each author and have accurate portrayal of code contribution.

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

Then when you are ready, `git commit` and the co-author field should be pre-populated.

### For Rdar Users

$ `with rdar://12343214 dh ag`
```
<rdar://12343214>


Co-authored-by: Don Han <don@han.com>
Co-authored-by: Abhishek Gayakwad <abhishek@gayakwad.com>
```

## Setup Instruction

*Take a look at `setup.sh` before running to make sure it doesn't replace your setup*

1. Clone this repo and `cd` into the repo
1. Run `bash setup.sh` (this moves the repo to `~/`)
1. Populate `~/.git-with/authors.csv` with nickname, full name and email address
1. (optional) Share the `authors.csv` with your team 


## Current Limitations

- Cleans git commit template everytime it's called, so if you like to have a custom git commit template, you might have to find a workaround
- If nickname cannot be found, it writes `Co-authored-by:  <>`
- Does not work with `git commit -m`
