import cocotb
from cocotb.triggers import Timer

@cocotb.test()
async def basic_test(dut):

    await Timer(1, unit="us")

    assert True
