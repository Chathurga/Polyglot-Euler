# Installing Scheme

Scheme's ecosystem is very fractured (as far as I can see) so portability between compilers is difficult if you don't want to reinvent the wheel all the time. I have chosen the [Chicken Scheme](http://www.call-cc.org/) compiler as it contains libraries based on the various official specs released over the years. One spec (SFRI-1) includes invaluable procedures for dealing with lists, reduce, filter, iota (range), etc. The pro of being able to just import and use these procedures outweighs the con of non-portability for this use case (solving Euler problems).

## Ubuntu

From the terminal enter: `sudo apt-get install chicken-bin`  
You can now run Scheme files using the `csi` command
