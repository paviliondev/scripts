Bash scripts for Discourse plugin development

#### Assumptions

1. .sh files are in a folder in your PATH (e.g. /usr/local/bin or ~/bin)

2. .rake files are global, e.g. they're in ~/.rake

3. You have environment variable DISCOURSE_DIR with the path to a directory containing

   ```
   discourse ## discourse/discourse repository
   plugins ## containing any plugins you're using
   ```

#### Usage

Start Discourse with one or more plugins

```
discourse_start.sh plugin1 plugin2
```

Restore a Discourse dump .sql or .tar bundle

```
discourse_restore.sh /path/to/dump
```