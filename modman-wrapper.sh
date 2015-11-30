#!/bin/bash -x

if [ ! -d $MAGE_ROOT_DIR/.modman ] ; then
    cd $MAGE_ROOT_DIR && modman init
fi
cd $MAGE_ROOT_DIR && modman $@