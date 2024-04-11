# Personal Kali Customization

These are my customization scripts for every time I have to perform a Kali clean install.

## Requirements for the VM

- Space: 60Gi disk
- Memory: 8Gi
- Processor: >= 2 cores
- Kali installed with Xfce (default) desktop

**Note**: These scripts work in any other desktop perfectly. However, you must know how to change the desktop to bspwm at the login. Besides that, Xfce is a bit more stable than other desktops in kali.

## Steps to install

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

- From the root directory of the repository run:

```
ansible-playbook main.yml
```

- When it finishes, restart the virtual machine, and before loggin in, check on the menu in the right-top corner and select bspwm.

- Login and enjoy!

**Disclaimer**: These Ansible scripts might work on other linux flavors like Parrot, Debian or even Ubuntu, but these scripts haven't been tested on those distros yet.
