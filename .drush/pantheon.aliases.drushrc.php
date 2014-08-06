<?php
  /**
   * Pantheon drush alias file, to be placed in your ~/.drush directory or the aliases
   * directory of your local Drush home. Once it's in place, clear drush cache:
   *
   * drush cc drush
   *
   * To see all your available aliases:
   *
   * drush sa
   *
   * See http://helpdesk.getpantheon.com/customer/portal/articles/411388 for details.
   */

  $aliases['entervoid.live'] = array(
    'uri' => 'live-entervoid.gotpantheon.com',
    'db-url' => 'mysql://pantheon:918891870e9247b78d54278b4e4cfc86@dbserver.live.cab753bc-ab3a-4902-8b24-b40450421d0c.drush.in:12008/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.live.cab753bc-ab3a-4902-8b24-b40450421d0c.drush.in',
    'remote-user' => 'live.cab753bc-ab3a-4902-8b24-b40450421d0c',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
  $aliases['entervoid.dev'] = array(
    'uri' => 'dev-entervoid.gotpantheon.com',
    'db-url' => 'mysql://pantheon:4f84fbeaf80d4cf9af36b0209ba7ee80@dbserver.dev.cab753bc-ab3a-4902-8b24-b40450421d0c.drush.in:11746/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.dev.cab753bc-ab3a-4902-8b24-b40450421d0c.drush.in',
    'remote-user' => 'dev.cab753bc-ab3a-4902-8b24-b40450421d0c',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
  $aliases['entervoid.test'] = array(
    'uri' => 'test-entervoid.gotpantheon.com',
    'db-url' => 'mysql://pantheon:f9ed609b5ef346be83951a9524e1549a@dbserver.test.cab753bc-ab3a-4902-8b24-b40450421d0c.drush.in:10444/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.test.cab753bc-ab3a-4902-8b24-b40450421d0c.drush.in',
    'remote-user' => 'test.cab753bc-ab3a-4902-8b24-b40450421d0c',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
