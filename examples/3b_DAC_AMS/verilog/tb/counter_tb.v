/*
* SPDX-FileCopyrightText: 2023 Patrick Fath
* Johannes Kepler University, Institute for Integrated Circuits
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
* SPDX-License-Identifier: Apache-2.0
*
* Generic Counter Testbench -- Testbench for the Generic Counter
*
* This generic counter testbench resets the generic counter and 
* verifies its ramp output.
*/

`default_nettype none

// definition of assert function to simplify the testbench
`define assert(signal, value, error_message) \
        if (signal !== value) begin \
            $display("ASSERTION FAILED with value %b in module %m", value); \
			$display(error_message); \
        end

`timescale 100ns/10ns
`include "counter.v"

module counter_tb #(parameter CNT_WIDTH = 3);  // counter bit width to count from 0 to (2^CNT_WIDTH)-1

	reg clk;  // stimuli for clock
	reg rst_n;  // stimuli for reset (low-active)
	wire [CNT_WIDTH - 1 : 0] cnt;  // binary representation of counter with CNT_WIDTH bits 
	integer i;  // counter variable for loops

	counter	 #(.CNT_WIDTH(CNT_WIDTH)) counter_inst (
													.clk_i(clk),
													.rst_n_i(rst_n),
													.cnt_o(cnt)
													);
	
	always #5 clk = ~clk;  // clock with 1us period

	initial begin  // dump selected variables to file dump.vcd
   	$dumpfile("dump.vcd");
   	$dumpvars(0,
   		clk,
   		rst_n,
   		cnt);
	end

	initial begin
		clk <= 0;
		rst_n <= 1;

		// verify reset
		#10 rst_n <= 0;
		#10 `assert(cnt, 0, "Reset of cnt failed")
			rst_n <= 1;

		// loop 0 to verify counter value from 0 to (2**CNT_WIDTH)-1
		for (i = 0; i < 2**CNT_WIDTH; i = i + 1) begin
			`assert(cnt, i, "Counter failed at loop 0")
			#10;
		end

		// loop 1 to verify counter value from 0 to (2**CNT_WIDTH)-1
		for (i = 0; i < 2**CNT_WIDTH; i = i + 1) begin
			`assert(cnt, i, "Counter failed at loop 1")
			#10;
		end
		
		#10 $finish;
	end

endmodule  // counter_tb

`default_nettype wire

