/**
 * Fastly Insights.js
 * Build generated: 2019-04-30
 * https://github.com/fastly/insights.js
 *
 * Copyright (c) 2019, Fastly, Inc. All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in all
 * copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */

!function(){"use strict";function t(t,e){return e.split(".").every(function(e){return"object"===(void 0===t?"undefined":o(t))&&null!==t&&e in t&&void 0!==t[e]&&(t=t[e],!0)})}function e(){var t=document.getElementsByTagName("script")[0],e=document.createElement("script");e.src=n.build,e.onload=function(){"function"==typeof window.FASTLY.init&&window.FASTLY.init(n)},t.parentNode.insertBefore(e,t)}var n={apiKey:"17272cd8-82ee-4eb5-b5a3-b3cd5403f7c5",session:"eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxNzI3MmNkOC04MmVlLTRlYjUtYjVhMy1iM2NkNTQwM2Y3YzUiLCJleHAiOjE1NTk2NDk5NjAsImlhdCI6MTU1OTY0OTkwMH0.-2c48gKuLhSVJNWOd3gfLbHU7BXYCRrY5SORwSiC4Do",settings:{"hosts": {"host": "www.fastly-insights.com","lookup": "eu.u.fastly-insights.com","pop": "pops.fastly-insights.com",},"sample":0.500},build:"https://www.fastly-insights.com/static/lib.9e97b13076eb75bda7508b2090d1d87333178223.js",server:{"datacenter": "CDG"},tasks:[{"id": "pdata","type": "fetch","host": "pdata.pops.fastly-insights.com"},{"id": "anycast","type": "fetch","host": "any-v4.pops.fastly-insights.com"},{"id": "anycast2","type": "fetch","host": "any2-v4.pops.fastly-insights.com"}],pops:['CDG', 'LCY', 'LHR', 'FRA', 'HHN', 'AMS', 'MXP', 'MAD', 'CPH', 'OSL', 'BMA', 'HEL', 'LGA', 'JFK', 'EWR', 'BOS', 'IAD', 'BWI', 'DCA', 'YUL', 'CMH', 'YYZ', 'ORD', 'MDW', 'CHI', 'FTY', 'PDK', 'ATL', 'MSP', 'MIA', 'DFW', 'DAL', 'IAH', 'DEN', 'FJR', 'BUR', 'LAX', 'SEA', 'SJC', 'PAO', 'YVR', 'CPT', 'BOM', 'JNB', 'DEL', 'GRU', 'MAA', 'GIG', 'SIN', 'CWB', 'SCL', 'EZE', 'HND', 'QPG', 'TYO', 'NRT', 'ITM', 'HKG', 'AKL', 'WLG', 'BNE', 'SYD', 'MEL', 'PER']},o="function"==typeof Symbol&&"symbol"==typeof Symbol.iterator?function(t){return typeof t}:function(t){return t&&"function"==typeof Symbol&&t.constructor===Symbol&&t!==Symbol.prototype?"symbol":typeof t},i=n.ctm=t(window,"Promise")&&t(window,"Set")&&t(window,"fetch")&&t(window,"performance.getEntries");i&&function(t){return parseFloat(Math.random().toFixed(2))<=t}(n.settings.sample)&&function(t){"complete"!==document.readyState?document.addEventListener("readystatechange",function(){"complete"===document.readyState&&t()}):t()}(function(){return setTimeout(e,n.settings.delay||0)}),window.FASTLY=window.FASTLY||{},window.FASTLY.ctm=i,window.FASTLY.config=n}();