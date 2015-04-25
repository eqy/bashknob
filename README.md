bashknob
========
Shell script for automating the process of selecting the correct sound card in
amixer on systems where the order or number of cards may be dynamic. Principal
use case is with xbindkeys.

General Usage:
--------------
    ./bashknob.sh "string in card name" "amixer command options"

Example:
--------
    ./bashknob.sh FiiO set\ PCM\ 1%+

Would increase the volume on the first card that matches the name FiiO.
