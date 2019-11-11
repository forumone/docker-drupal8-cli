# About this Image

Images built from this repository are used as bases for working with Drupal 8 sites via the command line. They are roughly equivalent to images such as `drush/drush`, and intended to be used as companion images to `forumone/drupal8`.

1. Neither Drush nor Drupal Console are included. It is expected that users will either install or bind-mount the necessary scripts to use.
2. These images include a small utility, `f1-ext-install`, to simplify the task of installing common extensions. For example, to install Memcached, one only needs to add this to their Dockerfile:

   ```sh
   f1-ext-install pecl:memcached
   ```

## PHP Versions and Tags

- Currently supported by PHP:
  - `7.3`
  - `7.2`
  - `7.1`

- End-of-life for legacy projects:
  - `7.0`
  - `5.6`

The tags `7` and `5` are available for quick testing when a specific version isn't needed.

# License

Like the [base PHP image](https://github.com/docker-library/php) we use, this project is available under the terms of the MIT license. See [LICENSE](LICENSE) for more details.
