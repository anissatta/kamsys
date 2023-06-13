#!/bin/sh
#   print_mdjson.sh
#   Copyright (C) 2023 anissatta
#   This program is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   This program is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with this program.  If not, see <http://www.gnu.org/licenses/>.

SERVER_UPTIME=$(uptime -p)
PHOTO_MODTIME=$(stat -c %y snap.jpg)
VIDEO_MODTIME=$(stat -c %y o.mp4)
NUM_PHOTOS=$(ls snaps|wc -l)
MAX_PHOTOS=72

echo "{"
echo "    \"serverUptime\": \"${SERVER_UPTIME}\","
echo "    \"photoLastModification\": \"${PHOTO_MODTIME}\","
echo "    \"videoLastModification\": \"${VIDEO_MODTIME}\","
echo "    \"numberOfUnprocessedPhotos\": ${NUM_PHOTOS},"
echo "    \"numberOfPhotosPerVideo\": ${MAX_PHOTOS}"
echo "}"

