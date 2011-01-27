import sys
import time
from Quartz import *

def createMouseEvent(type, posx, posy):
	theEvent = CGEventCreateMouseEvent(None, type, (posx,posy), kCGMouseButtonLeft)
	CGEventPost(kCGHIDEventTap, theEvent)

if __name__ == '__main__':
	x = int(sys.argv[1])
	y = int(sys.argv[2])

	createMouseEvent(kCGEventLeftMouseDown, x, y);
	createMouseEvent(kCGEventLeftMouseUp, x, y);