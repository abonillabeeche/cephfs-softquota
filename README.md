# cephfs-softquota

- Modify usermap by adding user/homedirectories, the script assumes the e-mail address and home-dir are the same.

	USERMAP[abonilla]=1024

	The variable is the homedir and the value a byte based soft-quota.

- Modify usage.sh to add an admin e-mail and modify the user e-mail domain.

- Run usage.sh in a cronjob as often as you'd like to validate the quota allocation.
