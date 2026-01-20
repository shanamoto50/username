# README for Username Validation Script

## Author Information
- **Name:** Shandon Hanamoto
- **Course:** CPSC 298 
- **Assignment:** Username Validation
- **Date:** 20 Jan 2026

## Program Description
This script checks whether usernames follow a specific set of rules correct characters, correct starting letter, and correct length and tells you if each username is valid or invalid. Its purpose is to quickly catch bad usernames before they get used in a system or saved to a file. It works by reading usernames either from user input or from piped/file input and comparing each one to a regular expression pattern.

## Username Requirements
This script validates usernames according to the following rules:
- Must start with a lowercase letter
- Can only contain lowercase letters, digits, and underscores
- Must be between 3 and 12 characters in length (inclusive)

## Usage
To run the script interactively:
```bash
./username.sh
```

To test with the provided input file:
```bash
./username.sh < username-input
```

## How the Script Works
My script validates usernames by checking them against a regular expression stored in USERNAME_Rules. The regex requires the username to start with a lowercase letter, and then only allows lowercase letters, numbers, or underscores after that. It also enforces a length of 3–12 characters total by limiting how many characters can come after the first letter. If the username matches the rules, the script prints that it is valid otherwise it prints that it is invalid.
- The use of the `while` loop
- The `grep` command with extended regular expressions
- The meaning of the `-E` and `-v` flags
- The redirect `> /dev/null 2>&1`

## Regular Expression Pattern
The validation uses the following regular expression pattern:
```
^[a-z][a-z0-9_]{2,11}$
```
This pattern ensures that:
- The username starts with a lowercase letter `[a-z]`
- The following characters are lowercase letters, digits, or underscores `[a-z0-9_]`
- The total length is between 3 and 12 characters

## Testing Results
js - Invalid username
jsmith - Valid username
j - Invalid username
smith - Valid username
jsmith123 - Valid username
jsmith12345678 - Invalid username
jSmith - Invalid username
jsmith! - Invalid username
jsmith_2023 - Valid username
dev_user - Valid username
test123 - Valid username
admin - Valid username
user - Valid username
a - Invalid username
ab - Invalid username
john_doe - Valid username
user123456 - Valid username
test-user - Invalid username
TEST123 - Invalid username
testuser12345678 - Invalid username
_ - Invalid username
__test - Invalid username
123abc - Invalid username

## Challenges and Solutions


## Resources
ChatGPT to help a syntax error I got stuck on

## License
This project is part of coursework for Chapman University and is intended for educational purposes.
