# Mastermind Game

[Mastermind](https://en.wikipedia.org/wiki/Mastermind_(board_game)) is a code breaking game. The computer starts a new game by inventing a random secret code, composed of 4 digits from 1 to 6. The player must deduce what is the secret code by trying guesses. If the code is '5414' and the player guess is 1234, for instance, the computer will answer '-+'. It means that one number is right and it is in the right position (+) and another number is present in the secret code but in a different position (-). Of course, the player don’t know which! It can then try more guesses, until it have enough clues to guess right.

The player get a score for each completed game, that is equal to the number of guesses.
Of course, the lower the score, the better. It will earn a score that is the
average of all the games he or she completed.

## Usage

### Installing
```
$ git clone https://github.com/dawsonfi/ana-mastermind-game
$ cd ana-mastermind-game
$ gem install bundler
$ bundle install
```

### Running
```
$ rails server
```

### Running Tests
```
$ rspec
```
