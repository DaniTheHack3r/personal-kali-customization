# Personal Kali Customization

These are my customization scripts for every time I have to perform a Kali clean install.

> [!WARNING]
>
> This customization is mostly in sync with the latest stable version of Kali Linux. Using it with previous versions of Kali Linux is discouraged.

## Requirements for the VM

- Space: 60GB disk
- Memory: 8GB
- Processor: >= 2 cores
- Kali installed with Xfce (default) desktop

**Note**: These scripts work in any other desktop perfectly. However, you must know how to change the desktop to bspwm at the login. Besides that, Xfce is a bit more stable than other desktops in kali.

> [!WARNING]
>
> Consider using only one partition for the whole system, this customization is thought for a disposable Virtual Machine and not for a host system. If you are using it for a host system, allocate more storage than the recommended 60GB. 

## Steps to customize Kali with this script

- From a freshly installed Kali machine, update all packages by running:

```
sudo apt update
sudo apt full-upgrade -y
```

- Install Ansible:

```
sudo apt install ansible-core
```

- Clone the repository:

```
git clone https://github.com/DaniTheHack3r/personal-kali-customization.git

cd personal-kali-customization
```

- Run a command as sudo to cache the sudo authentication, for example:

```
sudo whoami
```

- From the personal-kali-customization directory run:

```
ansible-playbook main.yml
```

> [!WARNING]
>
> Avoid the use of sudo while running `ansible-playbook` as it will throw several errors as the ansible needs the context from your user, not from root. In case of doing it so, the next time you run it without sudo, you must make sure to delete any directory created with sudo permissions that could collide with your regular user permissions when creating them. 

- When it finishes, restart the virtual machine, and before logging in, check the menu on the right-top corner and select bspwm.

- Log in and enjoy!

**Disclaimer**: These Ansible scripts might work on other linux flavors like Parrot, Debian or even Ubuntu, but these scripts haven't been tested on those distros yet.
