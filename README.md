## EDE.18
Erlang(18) Development Environment

EDE prepare erlang.18 development tools. If you have old erlang project, maybe it helps you.

## How to use
- Clone this repository:
 `git clone https://github.com/mohsenmoqadam/EDE.18.git`
- Change directory:
  `cd EDE.18`
- Use docker to build it:
  `docker build --tag=ede.18 . `
- Use docker to run it:
  `docker run -it ede.18`
- Create and test erlang project:
  ```
   cd SEPC
   ./sepc my_project 1.0.0
   cd my_project
   make rel-dev
   make console-dev
  ```
  
 Congratulate, now you have erlang 18 and emacs and tmux and enjoy it.
