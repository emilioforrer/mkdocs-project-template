# mkdocs-project-template

Is a template that takes a code-first approach to document projects

## Set up

Clone the repo and open the project's root folder in vscode, then click on green button on the bottom left corner

![open-remote-window](assets/vscode-devcontainers/remote-window-btn.png)

and select 

![reopen-in-container](assets/vscode-devcontainers/reopen-in-container.png)

## Commands

The template has multiple commands that you can execute from the vscode terminal

### Run

This command start the server if you are inside the container

e.g.
```bash
make run
```
**Note:** If you are not using VsCode just run `docker-compose up`

after running the command, can visit http://localhost:8000/ to preview the documentation
