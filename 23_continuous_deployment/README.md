# Continuous Deployment

## CI & CD implemented for CircleCI

I have created config for CircleCI >>> [CircleCI file](.circleci/config.yml)

That config uses docksal/ci-agent:1.8-php image for PHP projects like Drupal or Symfony.
The ci-agent run composer installs then push changes via ssh.
In the CircleCI we should provide next Environment Variables: PRIVATE_KEY, PANTHEON_SITE_URL, TERMINUS_SITE.
Also, add ssh key.

In the config we have tests:
- visual regression testing 
- code sniffer test (standards and security)

On each PR creating build for testing.