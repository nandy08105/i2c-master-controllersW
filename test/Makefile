# Simulator
SIM ?= icarus
TOPLEVEL_LANG ?= verilog

# Source files
VERILOG_SOURCES = $(PWD)/../src/tt_um_example.v
VERILOG_SOURCES += $(PWD)/tb.v

# Top module in tb.v
TOPLEVEL = tb

# Python test file (test.py)
MODULE = test

# Include Cocotb rules
include $(shell cocotb-config --makefiles)/Makefile.sim
