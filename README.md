## About
The **notels** utility was developed as a compliment to the [notemk](https://ragingtiger.github.io/notemk). It allows for quick and easy
viewing of all your notes in order by most recent.

## Installation
To configure your environment to use the script follow the below steps. First
clone and cd into the **notels** repository:

```
git clone https://github.com/RagingTiger/notels
cd notels/
```

Next you're going to append the shell script path to your .bashrc or .zshrc:

```
echo "# alias for notels" >> "$HOME/.`basename $SHELL`rc"
echo "alias notels=$PWD/notels.sh" >> "$HOME/.`basename $SHELL`rc"
source "$HOME/.`basename $SHELL`rc"
```

To check that it worked, run the tail command:

```
tail "$HOME/.`basename $SHELL`rc"
```

You should get output like this:

```
.
.
.
# alias for notels
alias notels=/path/to/your/repository/notels/notels.sh
```

## Usage
Since **notels** is made to work with [notemk](https://ragingtiger.github.io/notemk/),
when you run **notels** it will check to see if there is a `.notes/` directory.
If one does exist, it will open all of the notes, in order of most recent, in
a scrollable session. For example:

```
cd YourProject/data/
notels
```

This will access the notes in the `YourProject/data/.notes/` directory if it
exists.
