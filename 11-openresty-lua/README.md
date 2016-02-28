![James Lewis, hipster cat](/resources/hipster-cat.png "James Lewis, hipster cat")

In the spirit of promoting an interest in system administration / web operations I decided to tackle this months challenge with infrastructure!  ...  and failed as I never actually implemented the lua bit that would solve the challenge!

What this (would have done) does:
- spins up a new VM with Debian as the OS
- provisions the VM: Chef installs Openresty with a script
- provisions the VM: Chef installs my nginx configuration
- once finished nginx will be running in a VM with an endpoint /calculate/{number-1}/plus/{number-2}
- hitting this endpoint runs a lua script that performs the calculation
- nginx returns the result

Pre reqz:
- Ruby > 1.9
- Vagrant
- Virtual Box

Tech Stack:
- Chef Solo
- Chefspec
- Serverspec
- Test Kitchen
- Openresty (nginx / lua)

Some usefull resources:
- Openresty: http://openresty.org/
- Testing bash scripts: https://github.com/realestate-com-au/bash-spec-2
- Testing Rake Tasks: https://robots.thoughtbot.com/test-rake-tasks-like-a-boss
- Chef DK: https://downloads.chef.io/chef-dk/mac/
- Berkshelf: https://github.com/berkshelf/berkshelf
- Knife docs: http://kitchen.ci/docs/getting-started/creating-cookbook
