# See the project files first!

- Installation --> `install-miniconda.sh`
- Environment --> `prepare-*`


## Conda for Ansible

In a used environment the following packages were installed:

```
adal (0.4.3)
ansible (2.2.1.0)
azure (2.0.0rc5)
azure-batch (0.30.0rc5)
azure-common (1.1.4)
azure-graphrbac (0.30.0rc5)
azure-mgmt (0.30.0rc5)
azure-mgmt-authorization (0.30.0rc5)
azure-mgmt-batch (0.30.0rc5)
azure-mgmt-cdn (0.30.0rc5)
azure-mgmt-cognitiveservices (0.30.0rc5)
azure-mgmt-commerce (0.30.0rc5)
azure-mgmt-compute (0.30.0rc5)
azure-mgmt-keyvault (0.30.0rc5)
azure-mgmt-logic (0.30.0rc5)
azure-mgmt-network (0.30.0rc5)
azure-mgmt-notificationhubs (0.30.0rc5)
azure-mgmt-nspkg (1.0.0)
azure-mgmt-powerbiembedded (0.30.0rc5)
azure-mgmt-redis (0.30.0rc5)
azure-mgmt-resource (0.30.0rc5)
azure-mgmt-scheduler (0.30.0rc5)
azure-mgmt-storage (0.30.0rc5)
azure-mgmt-web (0.30.0rc5)
azure-nspkg (1.0.0)
azure-servicebus (0.20.2)
azure-servicemanagement-legacy (0.20.3)
azure-storage (0.32.0)
certifi (2016.9.26)
cffi (1.9.1)
chardet (2.3.0)
cryptography (1.7.1)
enum (0.4.6)
enum34 (1.1.6)
futures (3.0.5)
idna (2.2)
ipaddress (1.0.17)
isodate (0.5.4)
Jinja2 (2.8.1)
jmespath (0.9.0)
keyring (10.1)
MarkupSafe (0.23)
msrest (0.4.4)
msrestazure (0.4.6)
oauthlib (2.0.1)
pip (9.0.1)
pyasn1 (0.1.9)
pycparser (2.17)
pycrypto (2.6.1)
PyJWT (1.4.2)
python-dateutil (2.6.0)
PyYAML (3.12)
requests (2.12.4)
requests-oauthlib (0.7.0)
setuptools (27.2.0)
six (1.10.0)
wheel (0.29.0)
```

# records

```
bash Miniconda2-latest-MacOSX-x86_64.sh

Miniconda2 will now be installed into this location:
/Users/macraf/miniconda2

  - Press ENTER to confirm the location
  - Press CTRL-C to abort the installation
  - Or specify a different location below

[/Users/macraf/miniconda2] >>>
PREFIX=/Users/macraf/miniconda2
installing: python-2.7.12-1 ...
installing: conda-env-2.6.0-0 ...
installing: enum34-1.1.6-py27_0 ...
installing: openssl-1.0.2j-0 ...
installing: pycosat-0.6.1-py27_1 ...
installing: readline-6.2-2 ...
installing: requests-2.11.1-py27_0 ...
installing: ruamel_yaml-0.11.14-py27_0 ...
installing: sqlite-3.13.0-0 ...
installing: tk-8.5.18-0 ...
installing: yaml-0.1.6-0 ...
installing: zlib-1.2.8-3 ...
installing: conda-4.2.12-py27_0 ...
installing: pycrypto-2.6.1-py27_4 ...
installing: pip-8.1.2-py27_0 ...
installing: wheel-0.29.0-py27_0 ...
installing: setuptools-27.2.0-py27_0 ...
Python 2.7.12 :: Continuum Analytics, Inc.
creating default environment...
installation finished.
Do you wish the installer to prepend the Miniconda2 install location
to PATH in your /Users/macraf/.bash_profile ? [yes|no]
[yes] >>> yes
```


# 2018-02-22 problem with "ordinal not in range(128)"

```
EncodingError: A unicode encoding or decoding error has occurred.
Python 2 is the interpreter under which conda is running in your base environment.
Replacing your base environment with one having Python 3 may help resolve this issue.
If you still have a need for Python 2 environments, consider using 'conda create'
and 'conda activate'.  For example:

    $ conda create -n py2 python=2
    $ conda activate py2

Error details: UnicodeEncodeError('ascii', u"PS1='(py2) \\e[0;30m\\e[47m \\e[0;30m\\e[47m\ue20e  \\e[0;33m\\e[47m   \\e[0;31m\\e[47m\ue157  \\e[0;31m\\e[47m\ue858  \\e[0;31m\\e[47m   \\e[0;30m\\e[47m   \\e[0;30m\\e[47m   \\e[0;30m\\e[47m   \\e[0;31m\\e[47m    \\e[0;37m\\e[41m\ue0b0 \\e[0;37m\\e[41m\\e[0;37m\\e[41m --   --   \\e[0;37m\\e[41m(master \ue824 origin)  \\e[0;37m\\e[41m   \\e[0;31m\\e[40m\ue0b0\\e[0m\\n[\\w]# '\nexport CONDA_DEFAULT_ENV='py2'\nexport CONDA_PREFIX='/Users/macraf/miniconda2/envs/py2'\nexport CONDA_PREFIX_1='/Users/macraf/miniconda2/envs/devops'\nexport CONDA_PROMPT_MODIFIER='(py2) '\nexport CONDA_SHLVL='2'\nexport PATH='/Users/macraf/miniconda2/envs/py2/bin:/Users/macraf/miniconda2/envs/devops/bin:/Users/macraf/miniconda2/bin:/usr/local/Cellar/openssl/1.0.2j/bin:/Users/macraf/bin:/usr/local/sbin:/Users/macraf/.node_modules/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/MacGPG2/bin:/Library/Frameworks/Mono.framework/Versions/Current/Commands::::/Users/macraf/bin/imagemagick-tools:/Users/macraf/.rvm/bin'\n", 40, 41, 'ordinal not in range(128)')
```

# 2018-02-22 problem with `gem install inspec`


SOLUTION:
```
conda install clangxx_osx-64
```

```
Building native extensions.  This could take a while...
ERROR:  Error installing inspec:
    ERROR: Failed to build gem native extension.

    current directory: /Users/macraf/miniconda2/lib/ruby/gems/2.4.0/gems/ffi-1.9.21/ext/ffi_c
/Users/macraf/miniconda2/bin/ruby -r ./siteconf20180222-31242-194expt.rb extconf.rb
checking for ffi.h... *** extconf.rb failed ***
Could not create Makefile due to some reason, probably lack of necessary
libraries and/or headers.  Check the mkmf.log file for more details.  You may
need configuration options.

Provided configuration options:
    --with-opt-dir
    --without-opt-dir
    --with-opt-include
    --without-opt-include=${opt-dir}/include
    --with-opt-lib
    --without-opt-lib=${opt-dir}/lib
    --with-make-prog
    --without-make-prog
    --srcdir=.
    --curdir
    --ruby=/Users/macraf/miniconda2/bin/$(RUBY_BASE_NAME)
    --with-ffi_c-dir
    --without-ffi_c-dir
    --with-ffi_c-include
    --without-ffi_c-include=${ffi_c-dir}/include
    --with-ffi_c-lib
    --without-ffi_c-lib=${ffi_c-dir}/lib
    --with-libffi-config
    --without-libffi-config
    --with-pkg-config
    --without-pkg-config
/Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:457:in `try_do': The compiler failed to generate an executable file. (RuntimeError)
You have to install development tools first.
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:588:in `try_cpp'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:1095:in `block in have_header'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:945:in `block in checking_for'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:351:in `block (2 levels) in postpone'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:321:in `open'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:351:in `block in postpone'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:321:in `open'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:347:in `postpone'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:944:in `checking_for'
    from /Users/macraf/miniconda2/lib/ruby/2.4.0/mkmf.rb:1094:in `have_header'
    from extconf.rb:16:in `<main>'

To see why this extension failed to compile, please check the mkmf.log which can be found here:

  /Users/macraf/miniconda2/lib/ruby/gems/2.4.0/extensions/x86_64-darwin-13/2.4.0/ffi-1.9.21/mkmf.log

extconf failed, exit code 1

Gem files will remain installed in /Users/macraf/miniconda2/lib/ruby/gems/2.4.0/gems/ffi-1.9.21 for inspection.
Results logged to /Users/macraf/miniconda2/lib/ruby/gems/2.4.0/extensions/x86_64-darwin-13/2.4.0/ffi-1.9.21/gem_make.out
```


```
"pkg-config --exists libffi"
dyld: Symbol not found: _iconv
  Referenced from: /usr/lib/libcups.2.dylib
  Expected in: /Users/macraf/miniconda2/lib/libiconv.2.dylib
 in /usr/lib/libcups.2.dylib
package configuration for libffi is not found
have_header: checking for ffi.h... -------------------- no

"x86_64-apple-darwin13.4.0-clang -o conftest -I/Users/macraf/miniconda2/include/ruby-2.4.0/x86_64-darwin13 -I/Users/macraf/miniconda2/include/ruby-2.4.0/ruby/backward -I/Users/macraf/miniconda2/include/ruby-2.4.0 -I. -D_FORTIFY_SOURCE=2 -mmacosx-version-min=10.9 -D_XOPEN_SOURCE -D_DARWIN_C_SOURCE -D_DARWIN_UNLIMITED_SELECT -D_REENTRANT   -march=core2 -mtune=haswell -mssse3 -ftree-vectorize -fPIC -fPIE -fstack-protector-strong -O2 -pipe -fno-common conftest.c  -L. -L/Users/macraf/miniconda2/lib -L. -Wl,-pie -Wl,-headerpad_max_install_names -Wl,-rpath,/Users/macraf/miniconda2/lib -fstack-protector -L/Users/macraf/miniconda2/lib/clang/4.0.1/lib     -lruby.2.4.1  -lpthread -ldl -lobjc "
checked program was:
/* begin */
1: #include "ruby.h"
2:
3: int main(int argc, char **argv)
4: {
5:   return 0;
6: }
/* end */
```
