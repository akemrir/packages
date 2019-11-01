pkgfiles = $(pkg_files) $(meta_files)

pkg_files = $(sys_files) $(de_files) pkg/quark pkg/git-zero

sys_files = \
	pkg/config pkg/filesystem pkg/packages pkg/pacman-extra \
	pkg/sysinstall

de_files = pkg/dwm pkg/dmenu pkg/slock pkg/dwm-utils

meta_files = $(meta_core_files) $(meta_devel_files) $(meta_x_files)

meta_core_files = \
	meta/core/audio-meta meta/core/bluetooth-meta \
	meta/core/boot-meta meta/core/calc-meta \
	meta/core/compress-meta meta/core/config-meta \
	meta/core/core-meta meta/core/coreutils-meta \
	meta/core/crypto-meta meta/core/docs-meta \
	meta/core/editor-meta meta/core/filesystem-meta \
	meta/core/hardware-meta meta/core/init-meta \
	meta/core/kernel-meta meta/core/man-meta meta/core/markup-meta \
	meta/core/misc-meta meta/core/mount-meta meta/core/music-meta \
	meta/core/net-meta meta/core/net-download-meta \
	meta/core/pager-meta meta/core/pkg-meta meta/core/printer-meta \
	meta/core/schedule-meta meta/core/shell-meta \
	meta/core/sysinstall-meta meta/core/task-meta \
	meta/core/users-meta

meta_devel_files = \
	meta/devel/devel-autoconf-meta meta/devel/devel-awk-meta \
	meta/devel/devel-c-meta meta/devel/devel-debug-meta \
	meta/devel/devel-git-meta meta/devel/devel-graphviz-meta \
	meta/devel/devel-shell-meta meta/devel/devel-utils-meta \
	meta/devel/devel-x-meta meta/devel/devel-yacc-meta

meta_x_files = \
	meta/x/x-bluetooth-meta meta/x/x-crypto-meta meta/x/x-de-meta \
	meta/x/x-docs-meta meta/x/x-editor-meta meta/x/x-fonts-meta \
	meta/x/x-gpu-meta meta/x/x-img-meta meta/x/x-net-meta \
	meta/x/x-redshift-meta meta/x/x-scanner-meta \
	meta/x/x-theme-meta meta/x/x-torrent-meta meta/x/x-video-meta \
	meta/x/x-xdg-meta meta/x/x-xorg-meta
