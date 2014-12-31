/home/jmmk/build:
  file.directory:
    - user: jmmk
    - group: jmmk
    - mode: 755

install-cower:
  cmd.script:
    - source: salt://install-cower
    - cwd: /home/jmmk/build
    - user: jmmk
    - unless: which cower
