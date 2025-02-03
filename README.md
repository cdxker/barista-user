# Barista

Don't make your servers pets. Don't make your servers cattle. Make them little Baristas.

## Rules of a Barista

A "barista" under the hood is essentially just a user account on a linux device. 

Barista's have a trick up their sleves. Their user folders are synced into github.

Typically syncing your full user folder has drawbacks in that it is hard to transfer over
single files while 


## Barista Startup Command.

For server machines, you typically only have a few standard commands you want to run
when you're doing maintainence on it.

This may be some commands like:

- sudo apt update && sudo apt upgrade
- kubectl rollout restart deployment headlamp
- htop # View resources
- k9s # View k9s
- vim commands
- shell
- sudo vim /etc/caddy/Caddyfile
- sudo systemctl restart caddy

Notice how realistically. There is no need for the shell.

All you need is just good autocomplete and search.

What is the best search. `fzf` duh. It just changes the shell
to be purly a list of commands. 

## Conventions

All lists have no file extensions.

Everything else must have a file extension. Including scripts. Must have .sh, .nu, or .python

If at all possible. Always always `chmod +x` any runnable programs, it makes it much easier to 
add a shebang to specify the exact version of python, sh or nu you want to use.

### Lists

The format of a list is just single lines.

```basic-list
item a
item b
item c
```

To make multiple items per row of the list. You have to use strings

```multi-list
"parameter 1" "parameter 2" "parameter 3"
```

## Map function over lists

Using this new list paradime.

We now can introduce a really cool function. The map function.

`map` is a wrapper around xargs. That executes some function on every file in a list.

`map "yt-dlp" download-links`.

The really nice thing about `map`, is that it will automatically run this large map operation
in the background on a differnet user.

Adding this into your `commands` folder and now you can instantly enjoy 

Very nice.

### Ability for `map` to pass arbitrary arguments.

Thinking of a `map` function but for something like this script here.

```sync-folders.sh
scp -r computerA:Photocard\ Templates/ /user/Photocard\ Templates/
scp -r computerA:Music/ /user/Music/
```

Using `map` its its now

```folders-to-sync
"computerA:Photocard\ Templates/" "/user/Photocard\ Templates/"
"computerA:Music/" "/user/Music/"
```

```commands
// ...
map scp -r $1 $2
// ...
```

## Autopull from history.

Feature not implemented yet.

## Why backup the whole home folder and not symlink?

Barista Since barista is just a user. The whole folder is the config file.

Typically backing up your whole home folder is absolutely insane. This would
mean that any secrets that you wanted to keep only on the server would be easily exposed.

Risky right.

but... its just a barista.

Just like in real life. you wouldn't allow a barista to get access to the payroll accounts.
You should not let this Barista have access to too much. They can handle the cash register,
the coffee orders, and talking to customers while the manager tells them what to do.

## Fine grained Access control

As of writting this. The barista is allowed access to everything the root user has access to.
This should change to instead manual review / approve step on the root user account. and allowing
permissions on a fine grained user level.

Issue coming soon

## Using the Barista locally.

Having a Barista when brew for you when you're away is nice. But typical users on linux also need a little barista.

Thankfully since Barista is just a user. Its just as easy as changing your identtity to a barista.

`su barista`


## Personal config for a typical basic maintainener user.

