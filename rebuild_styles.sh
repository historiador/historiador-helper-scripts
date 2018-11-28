#!/bin/bash

    # This program is free software: you can redistribute it and/or modify
    # it under the terms of the GNU General Public License as published by
    # the Free Software Foundation, either version 3 of the License, or
    # (at your option) any later version.

    # This program is distributed in the hope that it will be useful,
    # but WITHOUT ANY WARRANTY; without even the implied warranty of
    # MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    # GNU General Public License for more details.

    # You should have received a copy of the GNU General Public License
    # along with this program.  If not, see <http://www.gnu.org/licenses/>.

# NOTE this is no longer needed, as gulp has a task for this purpose.

if [ -f gulpfile.js ]; then
	# Run the 'gulp style' job, defined in gulpfile.js
	gulp style

	# Process the output.  We need to clean up the exclamation mark `!`
	# from the first line and then introduce a line break at the end of
	# the top block comment.  The CSS styles must start after the
	# newline.
	# TODO simplify this
	sed -i '1 s/!// ; s,\(^\*/\)\(.*\),\1\n\2,' style.css
fi
