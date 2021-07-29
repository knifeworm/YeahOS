.SUFFIXES:
.DEFAULT_GOAL := all

export PATH := $(shell toolchain/use-it.sh):$(PATH)
export PATH := $(shell meta/utils/use-it.sh):$(PATH)
export LC_ALL=C

DIRECTORY_GUARD=@mkdir -p $(@D)

include meta/configs/defaults.mk

BUILD_SYSTEM?=YEAHOS
