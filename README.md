# ProjectAlias Redmine Plugin

 * Original plugin: https://www.redmine.org/plugins/project_alias
 * Forked from: https://github.com/paginagmbh/redmine_project-alias

Please note changes being maintained in this fork are not directly compatible with the original works.

Only Redmine 3.1 and higher will be supported from here on out.

## Install

```
cd /path/to/redmine-3.x/plugins/
git clone https://github.com/johnzimm/redmine-plugin-project_alias.git project_alias
cd ..
bundle exec rake redmine:plugins:migrate NAME=project_alias RAILS_ENV=production
restart redmine
```

## Uninstall

```
cd /path/to/redmine-3.x
bundle exec rake redmine:plugins:migrate NAME=project_alias VERSION=0 RAILS_ENV=production
cd /path/to/redmine-3.x/plugins
rm -Rf project_alias
restart redmine
```
