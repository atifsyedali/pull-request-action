FROM jnewland/git-and-stuff

# docker build -t vanessa/pull-request-action .

LABEL "com.github.actions.name"="Pull Request on Branch Push"
LABEL "com.github.actions.description"="Create a pull request when a branch is created or updated"
LABEL "com.github.actions.icon"="activity"
LABEL "com.github.actions.color"="yellow"

COPY pull-request.sh /pull-request.sh

RUN chmod u+x /pull-request.sh
ENTRYPOINT ["/pull-request.sh"]
