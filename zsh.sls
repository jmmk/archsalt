zsh:
  pkg.installed

/home/jmmk/.zshrc:
  file.managed:
    - source: salt://zshrc
    - user: jmmk
    - group: jmmk
    - mode: 644
