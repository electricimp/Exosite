// MIT License

// Copyright 2019 Exosite

// SPDX-License-Identifier: MIT

// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:

// The above copyright notice and this permission notice shall be
// included in all copies or substantial portions of the Software.

// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
// EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO
// EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES
// OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
// ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
// OTHER DEALINGS IN THE SOFTWARE.

#require "Exosite.agent.lib.nut:1.0.0"

local productId = "c449gfcd11ky00000";
local deviceId  = "feed123";
local password   = "123456789ABCDEabcdeF";

exositeAgent <- Exosite(productId, deviceId, password);
exositeAgent.provision();

//Enable debugMode that was defaulted to false
exositeAgent.debugMode = true;
//Change number of seconds between config_io refreshes that was defaulted to 60 seconds
exositeAgent.configIORefreshTime = 15;

device.on("reading.sent", exositeAgent.writeData.bindenv(exositeAgent));
