xorg:
  pkg.installed:
    - pkgs:
      - xorg-server
      - xorg-server-utils
      - xf86-video-nouveau
      - mesa-libgl
      - xorg-xinit
      - i3-wm
      - rxvt-unicode

/home/jmmk/.xinitrc:
  file.managed:
    - source: salt://xinitrc
    - user: jmmk
    - group: jmmk
    - mode: 644
