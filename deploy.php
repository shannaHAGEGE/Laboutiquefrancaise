<?php
namespace Deployer;

require 'recipe/symfony.php';

// Project name
set('application', 'boutiquefrancaise');

// Project repository
set('repository', 'git@github.com:shannaHAGEGE/Laboutiquefrancaise.git');

// [Optional] Allocate tty for git clone. Default value is false.
set('git_tty', true); 

// Shared files/dirs between deploys 
add('shared_files', []);
add('shared_dirs', []);

// Writable dirs by web server 
add('writable_dirs', []);
set('allow_anonymous_stats', false);

// Hosts

host('51.103.78.117')
    ->user('azureuser')
    ->addSshOption('UserKnownHostsFile', '/dev/null')
    ->addSshOption('StrictHostKeyChecking', 'no')
    ->set('deploy_path', '~/{{application}}');
    
// Tasks

task('deploy', [
    'deploy:unlock',
    'deploy:info',
    'deploy:prepare','deploy:lock',
    'deploy:release',
    'deploy:update_code',
    'deploy:clear_paths',
    'deploy:shared',
    'deploy:rename_env',
    'deploy:vendors',
    'force_cache',
    'deploy:writable',
    'deploy:symlink',
    'deploy:unlock',
    'cleanup','success'
]);

task('force_cache',function (){    run('rm -fr {{release_path}}/cache');
});

task('rename_env', function(){
    run('cp ~/.env ~/{{application}}/');
});
// [Optional] if deploy fails automatically unlock.
after('deploy:failed', 'deploy:unlock');

// Migrate database before symlink new release.

before('deploy:symlink', 'database:migrate');

