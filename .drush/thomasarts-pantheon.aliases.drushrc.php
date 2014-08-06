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

  $aliases['edgelms.live'] = array(
    'uri' => 'live-edgelms.gotpantheon.com',
    'db-url' => 'mysql://pantheon:570cae3a978d4f75b4d8b43946eae53b@dbserver.live.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08.drush.in:13359/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.live.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08.drush.in',
    'remote-user' => 'live.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
  $aliases['edgelms.dev'] = array(
    'uri' => 'dev-edgelms.gotpantheon.com',
    'db-url' => 'mysql://pantheon:bf5eb98313c34718a3128705857536ae@dbserver.dev.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08.drush.in:14043/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.dev.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08.drush.in',
    'remote-user' => 'dev.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
  $aliases['edgelms.test'] = array(
    'uri' => 'test-edgelms.gotpantheon.com',
    'db-url' => 'mysql://pantheon:39b34a3538d34245a2a8d5c3a4977f6e@dbserver.test.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08.drush.in:13886/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.test.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08.drush.in',
    'remote-user' => 'test.3de5b469-7051-4c87-8c5c-2d7e0b5b1d08',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
  $aliases['bankcarduniversity-com.test'] = array(
    'uri' => 'test-bankcarduniversity-com.gotpantheon.com',
    'db-url' => 'mysql://pantheon:244750c26db445239fdd4b1f96e5bd2b@dbserver.test.0496b8be-d8f8-400c-b757-ffab2390cbe9.drush.in:13939/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.test.0496b8be-d8f8-400c-b757-ffab2390cbe9.drush.in',
    'remote-user' => 'test.0496b8be-d8f8-400c-b757-ffab2390cbe9',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
  $aliases['bankcarduniversity-com.dev'] = array(
    'uri' => 'dev-bankcarduniversity-com.gotpantheon.com',
    'db-url' => 'mysql://pantheon:23ae9f03dc00499a8f73724f3a477ddc@dbserver.dev.0496b8be-d8f8-400c-b757-ffab2390cbe9.drush.in:13338/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.dev.0496b8be-d8f8-400c-b757-ffab2390cbe9.drush.in',
    'remote-user' => 'dev.0496b8be-d8f8-400c-b757-ffab2390cbe9',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
  $aliases['bankcarduniversity-com.live'] = array(
    'uri' => 'live-bankcarduniversity-com.gotpantheon.com',
    'db-url' => 'mysql://pantheon:4ab6543cdafd4633b628aef4efe24af5@dbserver.live.0496b8be-d8f8-400c-b757-ffab2390cbe9.drush.in:13833/pantheon',
    'db-allows-remote' => TRUE,
    'remote-host' => 'appserver.live.0496b8be-d8f8-400c-b757-ffab2390cbe9.drush.in',
    'remote-user' => 'live.0496b8be-d8f8-400c-b757-ffab2390cbe9',
    'ssh-options' => '-p 2222 -o "AddressFamily inet"',
    'path-aliases' => array(
      '%files' => 'code/sites/default/files',
      '%drush-script' => 'drush',
     ),
  );
