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
add('shared_dirs', ['var']);
set('clear_paths',['var/cache']);

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
    'deploy:info',
    'deploy:prepare','deploy:lock',
    'deploy:release',
    'deploy:update_code',
    'deploy:clear_paths',
    'deploy:shared',
    'rename_env',
    'deploy:vendors',
    'deploy:writable',
    'deploy:symlink',
    'deploy:unlock',
    'cleanup','success'
]);

task('force_cache',function (){    run('rm -fr {{release_path}}/var/cache');
});

task('rename_env', function () {
    run('cp {{deploy_path}}/.env {{release_path}}/.env');
});

// [Optional] if deploy fails automatically unlock.
after('deploy:failed', 'deploy:unlock');

// Migrate database before symlink new release.

before('deploy:symlink', 'database:migrate');

