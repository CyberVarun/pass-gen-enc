### Guide

1.**Passgen**

- Passgen is tool for generating password/passphrase using openssl tool. For now it only support base64 and hex but in future more will be added. There are two version of its v0.0 and v1.0 . version 0 is for newbie and version 1 is for who have basic knowlege of shell

2.**Passenc**

- Passenc is tool for encrypting your password/passphrase into hash for more complicated password and for hard to guess or break. There are two version of its v0.0 and v1.0 . version 0 is for newbie and version 1 is for who have basic knowlege of shell
<hr>

### Installation

```bash
sudo apt install openssl
git clone https://github.com/CyberVarun/pass-gen-enc.git
cd pass-gen-enc/
./install.sh
```
<hr>

### Usage

1.**Passgen**

```python
$ passgen -h
Passgen 1.0
Usage Passgen -s [Length of password] [Hash Type] [Passwords number]

-s                      for shortcut mode
[Length of password ]   Length of password should be only in digit.
[Hash Type]     Support base64 and hex only.
[Passwords number]      Depend how on many passwords you want. should be only in digit.
```

2.**Passenc**

```python
$ passenc -h
Passenc 1.0
Usage passenc -s [Password/Passphrase] [Hash Type]

-s                      for shortcut mode
[Password/Passphrase]   Support all in UTF-8 encoded(normal letters).
[Hash Type]     Support md5, sha, sha1, sha224, sha256, sha512 only.
```
