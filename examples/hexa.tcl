#! /bin/sh
# -*-tcl-*- \
	exec tclsh "$0" "$@"
#
# hexa.tcl - 
#
# Copyright (c) 2011, Quoll Systems
# 
# All rights reserved.
#    
# Redistribution and use in source and binary forms, with or without
# modification, is not permitted without specific permission from:
# 	
#    Quoll Systems Pty Ltd
#        
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL QUOLL SYSTEMS OR
# CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
# PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR
# PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF
# LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
# NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
# SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

puts "d\tp\ta\tp/a"
set p 6
set a 6
for {set d 1} {$d < 4000000} {incr d} {
  puts "$d\t$p\t$a\t[expr (1.0*$p)/$a]"
  set p [expr 2 * $d]
  set a [expr $a + 3 * $p]
}
