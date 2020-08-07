# pandora-shar
_Encrypted Unix shell archives that could contain anything..._

Idea is to make a "shell archive" (shar) that requires the right
password to run. Of course you don't know what it might do, since
you don't have the password.

It's mostly just a "here document", base64 and such, but they are a
little hard to construct, and would be nice if they are portable.

Technically, they don't have to be archives, it's just
an encrypted shell script, but they remind me of shar files.

# Usage

- Create your file for the guts to be done
- Test that like a normal shell script
- Edit the `Makefile` here
- Run make and provide the password
- Test result and iterate
- (optional) Destroy your copy of the contents
- Distribute the resulting file.
- Profit?


# Notes

- You may want to pad your contents to make them longer (add comments)
- Using Openssl here only because it's widespread.


# Dedication

This code is dedicated to everyone who is willing to pipe the output 
of curl directly into bash. May your data rest in peace.


# Example

This example can be executed using the password: `test`

```
#! /bin/sh
openssl aes-256-ecb -d -a <<^^ | sh
U2FsdGVkX18IajCjSpqV6bAyPls1j/3oHFiRueWVVP6shuAu/hOQ5ndX2EbLwfmN
IHZfIOL0RaL3qXfFH6sejG1iVpXDCdcjdMzMtNMFilyMWNZ9V0kWRXKx3prk9PQJ
^^
```

