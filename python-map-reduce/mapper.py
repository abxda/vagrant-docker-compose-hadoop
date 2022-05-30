#!/usr/bin/env python
"""mapper.py"""

import sys

for line in sys.stdin:
	line = line.strip()
	words = line.replace(',',' ').split(' ')
	for word in words:
		word = word.strip()
		if len(word) > 0:
			print '%s\t%s' % (word,1)

