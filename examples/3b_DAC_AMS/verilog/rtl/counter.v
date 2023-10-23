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
* Generic Counter -- Counter with CNT_WIDTH number of bits  as output
*
* This generic counter is sensitive to a rising clock edge
* and counts from 0 to (2^CNT_WIDTH)-1.
*/

`default_nettype none

module counter #(parameter CNT_WIDTH = 3) 		// counter bit width to count from 0 to (2^CNT_WIDTH)-1
(
	// housekeeping
	input wire 						clk_i, 		// system clock
	input wire 						rst_n_i, 	// low-active reset
	// counter outputs
	output reg [CNT_WIDTH - 1 : 0] 	cnt_o 		// binary representation of counter with CNT_WIDTH bits 
);

	always @ (posedge clk_i) begin
		cnt_o <= (! rst_n_i) ? 0 : cnt_o + 1; 	// 0 if rst_n_i = 0 otherwise increment by 1
	end

endmodule  // counter

`default_nettype wire
