#!/usr/local/bin/zsh

# create bugs
http :3000/users/1/bugs title='toolbelt maintenance' description='this thing does not work'
http :3000/users/2/bugs title='cape maintenance' description='this thing does not fly'
http :3000/users/3/bugs title='katana maintenance' description='this thing is dull'

# change priority of user 2 bug 2
http PATCH :3000/users/2/bugs/2 priority='high'

# change issue_type for user 2 bug 2
http PATCH :3000/users/2/bugs/2 issue_type='enhancement'
