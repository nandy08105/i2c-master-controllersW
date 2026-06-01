# I2C Master Controller

## Overview

This project implements a simple I2C Master Controller in Verilog for the Tiny Tapeout platform. The design demonstrates basic I2C communication by generating START and STOP conditions, controlling SDA and SCL lines, and transmitting data bytes to an I2C slave device.

## Features

* I2C Master functionality
* START condition generation
* STOP condition generation
* Serial data transmission
* Clock generation for SCL
* Finite State Machine (FSM) based control
* Compatible with Tiny Tapeout interface

## Pin Mapping

| Signal       | Description           |
| ------------ | --------------------- |
| ui_in[7:0]   | Input data/control    |
| uo_out[7:0]  | Status/output data    |
| uio_in[7:0]  | Bidirectional inputs  |
| uio_out[7:0] | Bidirectional outputs |
| uio_oe[7:0]  | Output enable         |
| clk          | System clock          |
| rst_n        | Active-low reset      |

## Directory Structure

src/
└── tt_um_example.v

test/
├── Makefile
├── tb.v
└── test.py

info.yaml
README.md

## Simulation

To run the simulation:

cd test
make

## Design Description

The controller uses a finite state machine to manage:

1. Idle State
2. Start Condition
3. Address Transmission
4. Data Transmission
5. Stop Condition

The SDA line carries serial data while SCL provides synchronization between master and slave devices.

## Verification

Verification is performed using:

* Cocotb
* Icarus Verilog
* GitHub Actions

The testbench checks:

* Reset functionality
* Clock operation
* Data transmission
* Output responses

## Author

Nandhakishoore K

## License

Open-source educational project.
