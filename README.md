Plugins
=======


Updating plugins
================

When you attach a module, it gets attach to the exact commit it currently has, so I have to update them from time to time:

    git submodule -q foreach git pull -q origin master
    
And then commit changes to the repository.

Fresh installation
==================

Clone submodule repositories
    git submodule init
    git submodule update

And inside vi
    :BundleInstall

