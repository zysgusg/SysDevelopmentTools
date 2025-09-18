#!/usr/bin/env python
import signal, time

def handler(signum, time):
	print("\nGot a SIGINT")
signal.signal(signal.SIGINT , handler)
i=0
while True:
	time.sleep(.1)
	print("\r{}".format(i),end="")
	i+=1
