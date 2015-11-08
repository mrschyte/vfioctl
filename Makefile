all: vfioctl

clean: vfioctl
	rm vfioctl

install: vfioctl
	cp vfioctl /usr/bin/vfioctl
	chown root:kvm /usr/bin/vfioctl
	chmod 4755 /usr/bin/vfioctl

vfioctl: vfioctl.c
	clang -O3 vfioctl.c -o vfioctl
