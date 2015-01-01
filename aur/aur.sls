/home/jmmk/build:
  file.directory:
    - user: jmmk
    - group: jmmk
    - mode: 755

/home/jmmk/.gnupg/gpg.conf:
  file.managed:
    - source: salt://aur/gpg.conf
    - user: jmmk
    - group: jmmk
    - mode: 644

install-cower:
  cmd.script:
    - source: salt://aur/install-cower
    - cwd: /home/jmmk/build
    - user: jmmk
    - unless: which cower

/usr/local/bin:
  file.managed:
    - source: salt://aur/cowerd
    - user: jmmk
    - group: jmmk
    - mode: 644

install-st:
  cmd.script:
    - source: salt://aur/install-st
    - user: jmmk
    - unless: which st
