xorg:
  pkg.installed:
    - pkgs:
      - xorg-server
      - xorg-server-utils
      - xf86-video-nouveau
      - mesa-libgl
      - xorg-xinit
      - i3-wm
      - i3status
      - rxvt-unicode
      - adobe-source-code-pro-fonts

/home/jmmk/.xinitrc:
  file.managed:
    - source: salt://x11/xinitrc
    - user: jmmk
    - group: jmmk
    - mode: 644

/home/jmmk/.Xresources:
  file.managed:
    - source: salt://x11/Xresources
    - user: jmmk
    - group: jmmk
    - mode: 644
