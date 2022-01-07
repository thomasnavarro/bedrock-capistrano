namespace :yarn do
    desc 'Yarn Install'
    task :install do
        on roles(:web) do
            within release_path do
                execute :yarn, :install, '--silent'
            end
        end
    end

    desc 'Yarn build'
    task :build do
        on roles(:web) do
            within release_path do
                execute :yarn, :run, :build, '--silent'
            end
        end
    end
end
