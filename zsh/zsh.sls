zsh:
  pkg.installed

/home/jmmk/.zshrc:
  file.managed:
    - source: salt://zsh/zshrc
    - user: jmmk
    - group: jmmk
    - mode: 644
