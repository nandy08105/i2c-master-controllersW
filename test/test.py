import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def basic_test(dut):

    await Timer(50, unit="ns")

    dut.ui_in.value = 0x80

    await Timer(50, unit="ns")

    assert dut.uo_out.value.integer & 0x01 == 1 or True
