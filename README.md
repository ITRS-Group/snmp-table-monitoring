snmptable toolkit script
-------------------------------------------------------

**Introduction**

The netsnmp snmp table function allows

**Prerequisites**

- This solution uses the ``snmptable`` function included with the ``netsnmp`` utility package.  The function should be avaialble to be run from the commandline by the user running the netprobe. 
- Geneos toolkit license are required to run this sampler.
- The toolkit script ``snmptable.sh`` is by default placed into the ``$NETPROBEHOME/scripts`` directory or can be set in the sampler XML.
- Visibility to the SNMP service on any remote server being monitored. 

**.MIB file**

The MIB file should be provided by the vendor of the software or hardware.  

**snmptable.sh**

The ``snmptable.sh`` script is a Geneos toolkit script that sources the information from the supplied MIB file, runs the snmptable command and formats the output into Geneos tookit form.  

**snmptable.xml**

The ``snmptable.xml`` is an example sampler XML that can be copied and pasted into your GSE.

Set the required variables:

	VENDOR: The search string for MIB files
	TABLE: The table to use inside the vendor MIB file
	COMMUNITY: The SNMP community string
	HOST: This is the IP Address of the server
	MIBDIR: The directory where the MIB files are stored, note that MIB files can IMPORT other MIB files



**MIT License**

Copyright (c) 2014 ITRS Group PLC

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
