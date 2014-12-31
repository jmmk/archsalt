/home/jmmk/build:
  file.directory:
    - user: jmmk
    - group: jmmk
    - mode: 755

/home/jmmk/.gnupg/gpg.conf:
  file.managed:
    - source: salt://gpg.conf
    - user: jmmk
    - group: jmmk
    - mode: 644

install-cower:
  cmd.script:
    - source: salt://install-cower
    - cwd: /home/jmmk/build
    - user: jmmk
    - unless: which cower
