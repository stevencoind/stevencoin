Installation for ubuntu 16.04 open terminal and copy and paste

wget -q https://raw.githubusercontent.com/stevencoind/stevencoin/master/install-guide/install_stevencoin.sh

bash install_stevencoin.sh

windows wallet https://github.com/stevencoind/stevencoin/releases/download/v1.0/stevencoin-1.0-win-setup.zip

Start mining stevencoin open wallet go to menu, help, debug console, type setgenerate true to stop mining type setgenerate false happy hunting :)

watch your coins on stevencoin explorer
www.stevencoin.ga


What is Stevencoin?
================================
Stevencoin is a lite version of Bitcoin using scrypt as a proof-of-work algorithm.
 - 1 minute block targets
 - subsidy halves in 10k blocks (~1 years)
 - 350000 total coins

The rest is the same as Bitcoin.
 - 20 coins per block
 - 970 blocks to retarget difficulty


License
-------

Stevencoin is released under the terms of the MIT license. See `COPYING` for more
information or see http://opensource.org/licenses/MIT.

Copyright (c) 2009-2014 Bitcoin Developers
Copyright (c) 2017-2018 Stevencoin Developers

Development process
-------------------

Developers work in their own trees, then submit pull requests when they think
their feature or bug fix is ready.

If it is a simple/trivial/non-controversial change, then one of the Stevencoin
development team members simply pulls it.

If it is a *more complicated or potentially controversial* change, then the patch
submitter will be asked to start a discussion with the devs and community.

The patch will be accepted if there is broad consensus that it is a good thing.
Developers should expect to rework and resubmit patches if the code doesn't
match the project's coding conventions (see `doc/coding.txt`) or are
controversial.

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/stevencoin-project/stevencoin/tags) are created
regularly to indicate new official, stable release versions of Stevencoin.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test. Please be patient and help out, and
remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write unit tests for new code, and to
submit new unit tests for old code.

Unit tests for the core code are in `src/test/`. To compile and run them:

    cd src; make -f makefile.unix test

Unit tests for the GUI code are in `src/qt/test/`. To compile and run them:

    qmake BITCOIN_QT_TEST=1 -o Makefile.test bitcoin-qt.pro
    make -f Makefile.test
    ./stevencoin-qt_test

