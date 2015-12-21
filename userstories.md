As a developer, I want my basic development environment to be the same across
platforms so that I can focus on learning how to use one set of tools.

As a developer for Windows-based users, I want to execute files that have to 
run under Windows so that I can test what I'm developing.

As a developer, I want to work in a Linux environment so that I gain
experience with open-source tools that work everywhere.

As a developer, I want to be able to edit files on a host's filesystem
directly, so that I can avoid file duplication.

As a developer, I want to start with training wheels-style solutions, so that 
I at least can begin working on real problems.

# Idea
Develop on a VM that syncs/mounts some part of the host filesystem. Run tests
on the host.

I tried all day to justify running my whole basic development environment
inside of a Docker container, but it's not defensible, no matter how much fun I
had yesterday downloading Ubuntu just to run cowsay. So instead I decided to
learn how to use Vagrant.

# More stories

As a developer, I want my VM to be ready to go after a single command, so that 
I don't need to reconfigure it each time I get a new machine.
