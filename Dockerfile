FROM archlinux

RUN pacman -Sy && pacman-key --init \
  && curl https://mega.nz/linux/repo/Arch_Extra/x86_64/megacmd-x86_64.pkg.tar.zst \
  --output /tmp/megacmd-x86_64.pkg.tar.zst \
  && pacman -U /tmp/megacmd-x86_64.pkg.tar.zst --noconfirm

ENTRYPOINT [ "/usr/bin/mega-cmd" ]