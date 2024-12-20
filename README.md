# Personal Kali Customization

These are my customization scripts for every time I have to perform a Kali clean install.

## Requirements for the VM

- Space: 60Gi disk
- Memory: 8Gi
- Processor: >= 2 cores
- Kali installed with Xfce (default) desktop

**Note**: These scripts work in any other desktop perfectly. However, you must know how to change the desktop to bspwm at the login. Besides that, Xfce is a bit more stable than other desktops in kali.

## Steps to run

- Clone the repository:

```
git clone https://github.com/DaniTheHack3r/personal-kali-customization.git
```

- From a freshly installed Kali machine, update all packages by running:

```
sudo apt update
sudo apt full-upgrade -y
```

- Install Ansible:

```
sudo apt install ansible-core
```

- Run a command as sudo to cache the sudo authentication, for example:

```
sudo whoami
```

- From the repository directory run:

```
ansible-playbook main.yml
```
> [!WARNING]
>
> Avoid the use of sudo while running `ansible-playbook` as it will throw several errors as the ansible needs the context from your user, not from root. In case of doing it so, the next time you run it without sudo, you must make sure to delete any directory created with sudo permissions that could collide with your regular user permissions when creating them. 

- When it finishes, restart the virtual machine, and before logging in, check the menu on the right-top corner and select bspwm.

- Log in and enjoy!

**Disclaimer**: These Ansible scripts might work on other linux flavors like Parrot, Debian or even Ubuntu, but these scripts haven't been tested on those distros yet.
