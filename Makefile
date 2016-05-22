PACKER = /usr/local/bin/packer

all: centos-6-i386.opennebula centos-6-x86_64.opennebula centos-7-x86_64.opennebula \
	cloudlinux-7-x86_64.opennebula
test-system: cloudlinux-6-i686.ts cloudlinux-6-x86_64.ts cloudlinux-7-x86_64.ts \
	centos-6-i686.ts centos-6-x86_64.ts centos-7-x86_64.ts

centos-6-i386.opennebula:
	$(PACKER) build -only centos-6-i386.opennebula centos-6-i386.opennebula.json

centos-6-x86_64.opennebula:
	$(PACKER) build -only centos-6-x86_64.opennebula centos-6-x86_64.opennebula.json

centos-7-x86_64.opennebula:
	$(PACKER) build -only centos-7-x86_64.opennebula centos-7-x86_64.opennebula.json

cloudlinux-7-x86_64.opennebula:
	$(PACKER) build -only cloudlinux-7-x86_64.opennebula cloudlinux-7-x86_64.opennebula.json

cloudlinux-6-i686.ts:
	$(PACKER) build -only cloudlinux-6-i686.ts cloudlinux-6-i686.TS.json

cloudlinux-6-x86_64.ts:
	$(PACKER) build -only cloudlinux-6-x86_64.ts cloudlinux-6-x86_64.TS.json

cloudlinux-7-x86_64.ts:
	$(PACKER) build -only cloudlinux-7-x86_64.ts cloudlinux-7-x86_64.TS.json

centos-6-i686.ts:
	$(PACKER) build -only centos-6-i686.ts centos-6-i686.TS.json

centos-6-x86_64.ts:
	$(PACKER) build -only centos-6-x86_64.ts centos-6-x86_64.TS.json

centos-7-x86_64.ts:
	$(PACKER) build -only centos-7-x86_64.ts centos-7-x86_64.TS.json

clean:
	rm -fr builds
