"""
blocklist.py

This file just contains the blocklist of the JWT tokens. It will be imported by app and the logout
resource so that tokens can be added to the blocklist when the user logs out.

Will be changing this to use Redis later on, instead of a python set()
as the set() does not persist after app reload.
"""

BLOCKLIST = set()