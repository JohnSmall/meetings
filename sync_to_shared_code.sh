#! /bin/bash
rsync -av --exclude-from 'rsync_exclusions.txt' . ../MinistersUnderTheInfluence/src/ruby/meetings/ --delete
