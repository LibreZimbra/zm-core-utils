# SPDX-License-Identifier: AGPL-3.0-or-later

all:
	echo -n

include build.mk

install:
	$(call mk_install_dir, bin)
	$(call mk_install_dir, libexec/scripts)
	$(call mk_install_dir, contrib)

	$(call install_conf, conf/dhparam.pem.zcs)
	$(call install_conf, conf/zmlogrotate)
	$(call install_conf, conf/zmconfigd.cf)
	$(call install_conf, conf/zmconfigd.log4j.properties)

	cp src/bin/*                             $(INSTALL_DIR)/bin
	cp src/contrib/*                         $(INSTALL_DIR)/contrib
	cp src/libexec/*                         $(INSTALL_DIR)/libexec
	cp src/perl/migrate20131014-removezca.pl $(INSTALL_DIR)/libexec/scripts

clean:
	echo -n
