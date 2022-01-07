namespace :php do
    desc 'Dependencies composer'
    task :composer do
        on roles(:web) do
            within release_path do
                execute :composer, :install, '--quiet --no-interaction'
            end
        end
    end
end
