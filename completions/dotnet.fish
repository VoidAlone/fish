# fish completions for dotnet

function _dotnet
    set -l tokens (commandline -opc)
    
    set -l state 0
    set -l i 2
    while test $i -le (count $tokens)
        set -l word $tokens[$i]
        switch $state
            case 0
                switch $word
                    case build
                        set state 1
                    case build-server
                        set state 2
                    case clean
                        set state 4
                    case format
                        set state 5
                    case fsi
                        set state 6
                    case msbuild
                        set state 7
                    case new
                        set state 8
                    case nuget
                        set state 16
                    case pack
                        set state 31
                    case package
                        set state 32
                    case project
                        set state 39
                    case publish
                        set state 41
                    case reference
                        set state 42
                    case restore
                        set state 46
                    case run
                        set state 47
                    case solution sln
                        set state 48
                    case store
                        set state 53
                    case test
                        set state 54
                    case tool
                        set state 55
                    case vstest
                        set state 64
                    case help
                        set state 65
                    case sdk
                        set state 66
                    case workload
                        set state 68
                    case completions
                        set state 80
                end
            case 1
                switch $word
                    case --framework -f --configuration -c --version-suffix --interactive --verbosity -v --v -verbosity /v /verbosity --output -o --artifacts-path --self-contained --sc --runtime -r --arch -a --os
                        set i (math $i + 1)
                end
            case 2
                switch $word
                    case shutdown
                        set state 3
                end
            case 4
                switch $word
                    case --framework -f --runtime -r --configuration -c --interactive --verbosity -v --output -o --artifacts-path
                        set i (math $i + 1)
                end
            case 8
                switch $word
                    case create
                        set state 9
                    case install
                        set state 10
                    case uninstall
                        set state 11
                    case update
                        set state 12
                    case search
                        set state 13
                    case list
                        set state 14
                    case details
                        set state 15
                    case --output -o --name -n --dry-run --force --no-update-check --project --verbosity -v
                        set i (math $i + 1)
                end
            case 9
                switch $word
                    case --output -o --name -n --dry-run --force --no-update-check --project --verbosity -v
                        set i (math $i + 1)
                end
            case 10
                switch $word
                    case --interactive --force --verbosity -v
                        set i (math $i + 1)
                    case --add-source --nuget-source
                        set -l skip_max 99
                        set -l skipped 0
                        while test $skipped -lt $skip_max -a (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                            set skipped (math $skipped + 1)
                        end
                end
            case 11
                switch $word
                    case --verbosity -v
                        set i (math $i + 1)
                end
            case 12
                switch $word
                    case --interactive --verbosity -v
                        set i (math $i + 1)
                    case --add-source --nuget-source
                        set -l skip_max 99
                        set -l skipped 0
                        while test $skipped -lt $skip_max -a (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                            set skipped (math $skipped + 1)
                        end
                end
            case 13
                switch $word
                    case --author --language -lang --type --tag --package --verbosity -v
                        set i (math $i + 1)
                    case --columns
                        set -l skip_max 4
                        set -l skipped 0
                        while test $skipped -lt $skip_max -a (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                            set skipped (math $skipped + 1)
                        end
                end
            case 14
                switch $word
                    case --author --language -lang --type --tag --output -o --project --verbosity -v
                        set i (math $i + 1)
                    case --columns
                        set -l skip_max 4
                        set -l skipped 0
                        while test $skipped -lt $skip_max -a (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                            set skipped (math $skipped + 1)
                        end
                end
            case 15
                switch $word
                    case --interactive --verbosity -v
                        set i (math $i + 1)
                    case --add-source --nuget-source
                        set -l skip_max 99
                        set -l skipped 0
                        while test $skipped -lt $skip_max -a (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                            set skipped (math $skipped + 1)
                        end
                end
            case 16
                switch $word
                    case delete
                        set state 17
                    case locals
                        set state 18
                    case push
                        set state 19
                    case verify
                        set state 20
                    case trust
                        set state 21
                    case sign
                        set state 29
                    case why
                        set state 30
                    case --verbosity -v
                        set i (math $i + 1)
                end
            case 17
                switch $word
                    case --source -s --api-key -k
                        set i (math $i + 1)
                end
            case 19
                switch $word
                    case --source -s --symbol-source -ss --timeout -t --api-key -k --symbol-api-key -sk --configfile
                        set i (math $i + 1)
                end
            case 20
                switch $word
                    case --verbosity -v
                        set i (math $i + 1)
                    case --certificate-fingerprint
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 21
                switch $word
                    case list
                        set state 22
                    case author
                        set state 23
                    case repository
                        set state 24
                    case source
                        set state 25
                    case certificate
                        set state 26
                    case remove
                        set state 27
                    case sync
                        set state 28
                    case --configfile --verbosity -v
                        set i (math $i + 1)
                end
            case 22
                switch $word
                    case --configfile --verbosity -v
                        set i (math $i + 1)
                end
            case 23
                switch $word
                    case --configfile --verbosity -v
                        set i (math $i + 1)
                end
            case 24
                switch $word
                    case --configfile --verbosity -v --owners
                        set i (math $i + 1)
                end
            case 25
                switch $word
                    case --configfile --verbosity -v --owners --source-url
                        set i (math $i + 1)
                end
            case 26
                switch $word
                    case --configfile --verbosity -v --algorithm
                        set i (math $i + 1)
                end
            case 27
                switch $word
                    case --configfile --verbosity -v
                        set i (math $i + 1)
                end
            case 28
                switch $word
                    case --configfile --verbosity -v
                        set i (math $i + 1)
                end
            case 29
                switch $word
                    case --output -o --certificate-path --certificate-store-name --certificate-store-location --certificate-subject-name --certificate-fingerprint --certificate-password --hash-algorithm --timestamper --timestamp-hash-algorithm --verbosity -v
                        set i (math $i + 1)
                end
            case 30
                switch $word
                    case --framework -f
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 31
                switch $word
                    case --output -o --artifacts-path --interactive --verbosity -v --v -verbosity /v /verbosity --version-suffix --version --configuration -c --runtime -r
                        set i (math $i + 1)
                end
            case 32
                switch $word
                    case search
                        set state 33
                    case add
                        set state 34
                    case list
                        set state 35
                    case remove
                        set state 36
                    case update
                        set state 37
                    case download
                        set state 38
                end
            case 33
                switch $word
                    case --take --skip --configfile --format --verbosity
                        set i (math $i + 1)
                    case --source
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 34
                switch $word
                    case --version -v --framework -f --source -s --package-directory --project --file
                        set i (math $i + 1)
                end
            case 35
                switch $word
                    case --verbosity -v --config --configfile --format --output-version --project --file
                        set i (math $i + 1)
                    case --framework -f --source -s
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 36
                switch $word
                    case --project --file
                        set i (math $i + 1)
                end
            case 37
                switch $word
                    case --project --file --vulnerable --interactive --verbosity -v
                        set i (math $i + 1)
                end
            case 38
                switch $word
                    case --configfile --interactive --output -o --verbosity -v
                        set i (math $i + 1)
                    case --source -s
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 39
                switch $word
                    case convert
                        set state 40
                end
            case 40
                switch $word
                    case --output -o --interactive
                        set i (math $i + 1)
                end
            case 41
                switch $word
                    case --output -o --artifacts-path --self-contained --sc --framework -f --configuration -c --version-suffix --interactive --verbosity -v --v -verbosity /v /verbosity --runtime -r --arch -a --os
                        set i (math $i + 1)
                    case --manifest
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 42
                switch $word
                    case add
                        set state 43
                    case list
                        set state 44
                    case remove
                        set state 45
                    case --project
                        set i (math $i + 1)
                end
            case 43
                switch $word
                    case --framework -f --file --project
                        set i (math $i + 1)
                end
            case 44
                switch $word
                    case --file --project
                        set i (math $i + 1)
                end
            case 45
                switch $word
                    case --framework -f --file --project
                        set i (math $i + 1)
                end
            case 46
                switch $word
                    case --packages --configfile --verbosity -v --interactive --artifacts-path --lock-file-path --arch -a --os
                        set i (math $i + 1)
                    case --source -s --runtime -r
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 47
                switch $word
                    case --configuration -c --framework -f --project --file --launch-profile -lp --device --interactive --self-contained --sc --verbosity -v --v -verbosity /v /verbosity --runtime -r --arch -a --os --artifacts-path
                        set i (math $i + 1)
                    case --environment -e
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 48
                switch $word
                    case add
                        set state 49
                    case list
                        set state 50
                    case remove
                        set state 51
                    case migrate
                        set state 52
                end
            case 49
                switch $word
                    case --in-root --solution-folder -s --include-references
                        set i (math $i + 1)
                end
            case 53
                switch $word
                    case --framework-version --output -o --working-dir -w --framework -f --runtime -r --verbosity -v --v -verbosity /v /verbosity
                        set i (math $i + 1)
                    case --manifest -m
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 54
                switch $word
                    case --settings -s --filter --output -o --artifacts-path --diag -d --results-directory --blame-crash-dump-type --blame-hang-dump-type --blame-hang-timeout --configuration -c --framework -f --interactive --verbosity -v --v -verbosity /v /verbosity --runtime -r --arch -a --os
                        set i (math $i + 1)
                    case --environment -e --test-adapter-path --logger -l --collect
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 55
                switch $word
                    case install
                        set state 56
                    case uninstall
                        set state 57
                    case update
                        set state 58
                    case list
                        set state 59
                    case run
                        set state 60
                    case search
                        set state 61
                    case restore
                        set state 62
                    case execute exec
                        set state 63
                end
            case 56
                switch $word
                    case --tool-path --version --configfile --tool-manifest --framework --verbosity -v --arch -a --create-manifest-if-needed
                        set i (math $i + 1)
                    case --add-source --source
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 57
                switch $word
                    case --tool-path --tool-manifest
                        set i (math $i + 1)
                end
            case 58
                switch $word
                    case --tool-path --version --configfile --tool-manifest --framework --verbosity -v
                        set i (math $i + 1)
                    case --add-source --source
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 59
                switch $word
                    case --tool-path --format
                        set i (math $i + 1)
                end
            case 61
                switch $word
                    case --skip --take
                        set i (math $i + 1)
                end
            case 62
                switch $word
                    case --configfile --tool-manifest --verbosity -v
                        set i (math $i + 1)
                    case --add-source
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 63
                switch $word
                    case --version --configfile --verbosity -v
                        set i (math $i + 1)
                    case --source --add-source
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 64
                switch $word
                    case --Platform --Framework
                        set i (math $i + 1)
                    case --logger
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 66
                switch $word
                    case check
                        set state 67
                end
            case 68
                switch $word
                    case install
                        set state 69
                    case update
                        set state 70
                    case list
                        set state 71
                    case search
                        set state 72
                    case uninstall
                        set state 74
                    case repair
                        set state 75
                    case restore
                        set state 76
                    case clean
                        set state 77
                    case config
                        set state 78
                    case history
                        set state 79
                end
            case 69
                switch $word
                    case --temp-dir --verbosity -v --configfile --include-previews
                        set i (math $i + 1)
                    case --source -s --version
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 70
                switch $word
                    case --temp-dir --verbosity -v --configfile --include-previews --from-previous-sdk --from-history --manifests-only
                        set i (math $i + 1)
                    case --source -s --version
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 72
                switch $word
                    case version
                        set state 73
                end
            case 73
                switch $word
                    case --format --take --include-previews
                        set i (math $i + 1)
                end
            case 74
                switch $word
                    case --verbosity -v
                        set i (math $i + 1)
                end
            case 75
                switch $word
                    case --configfile --verbosity -v
                        set i (math $i + 1)
                    case --source -s
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 76
                switch $word
                    case --temp-dir --verbosity -v --configfile --include-previews
                        set i (math $i + 1)
                    case --source -s --version
                        while test (math $i + 1) -le (count $tokens)
                            set -l next $tokens[(math $i + 1)]
                            if string match -q -- '-*' $next
                                break
                            end
                            set i (math $i + 1)
                        end
                end
            case 77
                switch $word
                    case --all
                        set i (math $i + 1)
                end
            case 78
                switch $word
                    case --update-mode
                        set i (math $i + 1)
                end
            case 80
                switch $word
                    case script
                        set state 81
                end
        end
        set i (math $i + 1)
    end
    
    set -l opt_index 0
    if test (count $tokens) -ge 2
        for j in (seq (count $tokens) -1 2)
            if string match -q -- '-*' $tokens[$j]
                set opt_index $j
                break
            end
        end
    end
    
    if test $opt_index -gt 0
        set -l opt $tokens[$opt_index]
        set -l values_after (math (count $tokens) - $opt_index)
        switch $state
            case 1
                switch $opt
                    case --framework -f
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --configuration -c
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --version-suffix
                        if test $values_after -lt 1
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v --v -verbosity /v /verbosity
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --artifacts-path
                        if test $values_after -lt 1
                            return
                        end
                    case --self-contained --sc
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --runtime -r
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --arch -a
                        if test $values_after -lt 1
                            return
                        end
                    case --os
                        if test $values_after -lt 1
                            return
                        end
                end
            case 4
                switch $opt
                    case --framework -f
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --runtime -r
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --configuration -c
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --artifacts-path
                        if test $values_after -lt 1
                            return
                        end
                end
            case 8
                switch $opt
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --name -n
                        if test $values_after -lt 1
                            return
                        end
                    case --dry-run
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --force
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --no-update-check
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 9
                switch $opt
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --name -n
                        if test $values_after -lt 1
                            return
                        end
                    case --dry-run
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --force
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --no-update-check
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 10
                switch $opt
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --add-source --nuget-source
                        if test $values_after -lt 99
                            return
                        end
                    case --force
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 11
                switch $opt
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 12
                switch $opt
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --add-source --nuget-source
                        if test $values_after -lt 99
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 13
                switch $opt
                    case --author
                        if test $values_after -lt 1
                            return
                        end
                    case --language -lang
                        if test $values_after -lt 1
                            return
                        end
                    case --type
                        if test $values_after -lt 1
                            return
                        end
                    case --tag
                        if test $values_after -lt 1
                            return
                        end
                    case --package
                        if test $values_after -lt 1
                            return
                        end
                    case --columns
                        if test $values_after -lt 4
                            printf '%s\n' 'author'
                            printf '%s\n' 'language'
                            printf '%s\n' 'tags'
                            printf '%s\n' 'type'
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 14
                switch $opt
                    case --author
                        if test $values_after -lt 1
                            return
                        end
                    case --language -lang
                        if test $values_after -lt 1
                            return
                        end
                    case --type
                        if test $values_after -lt 1
                            return
                        end
                    case --tag
                        if test $values_after -lt 1
                            return
                        end
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                    case --columns
                        if test $values_after -lt 4
                            printf '%s\n' 'author'
                            printf '%s\n' 'language'
                            printf '%s\n' 'tags'
                            printf '%s\n' 'type'
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 15
                switch $opt
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --add-source --nuget-source
                        if test $values_after -lt 99
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 16
                switch $opt
                    case --verbosity -v
                        if test $values_after -lt 1
                            return
                        end
                end
            case 17
                switch $opt
                    case --source -s
                        if test $values_after -lt 1
                            return
                        end
                    case --api-key -k
                        if test $values_after -lt 1
                            return
                        end
                end
            case 19
                switch $opt
                    case --source -s
                        if test $values_after -lt 1
                            return
                        end
                    case --symbol-source -ss
                        if test $values_after -lt 1
                            return
                        end
                    case --timeout -t
                        if test $values_after -lt 1
                            return
                        end
                    case --api-key -k
                        if test $values_after -lt 1
                            return
                        end
                    case --symbol-api-key -sk
                        if test $values_after -lt 1
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                end
            case 20
                switch $opt
                    case --certificate-fingerprint
                        return
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 21
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 22
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 23
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 24
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --owners
                        if test $values_after -lt 1
                            return
                        end
                end
            case 25
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --owners
                        if test $values_after -lt 1
                            return
                        end
                    case --source-url
                        if test $values_after -lt 1
                            return
                        end
                end
            case 26
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --algorithm
                        if test $values_after -lt 1
                            printf '%s\n' 'SHA256'
                            printf '%s\n' 'SHA384'
                            printf '%s\n' 'SHA512'
                            return
                        end
                end
            case 27
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 28
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 29
                switch $opt
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --certificate-path
                        if test $values_after -lt 1
                            return
                        end
                    case --certificate-store-name
                        if test $values_after -lt 1
                            return
                        end
                    case --certificate-store-location
                        if test $values_after -lt 1
                            return
                        end
                    case --certificate-subject-name
                        if test $values_after -lt 1
                            return
                        end
                    case --certificate-fingerprint
                        if test $values_after -lt 1
                            return
                        end
                    case --certificate-password
                        if test $values_after -lt 1
                            return
                        end
                    case --hash-algorithm
                        if test $values_after -lt 1
                            return
                        end
                    case --timestamper
                        if test $values_after -lt 1
                            return
                        end
                    case --timestamp-hash-algorithm
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 30
                switch $opt
                    case --framework -f
                        return
                end
            case 31
                switch $opt
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --artifacts-path
                        if test $values_after -lt 1
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v --v -verbosity /v /verbosity
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --version-suffix
                        if test $values_after -lt 1
                            return
                        end
                    case --version
                        if test $values_after -lt 1
                            return
                        end
                    case --configuration -c
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --runtime -r
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                end
            case 33
                switch $opt
                    case --source
                        return
                    case --take
                        if test $values_after -lt 1
                            return
                        end
                    case --skip
                        if test $values_after -lt 1
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --format
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity
                        if test $values_after -lt 1
                            return
                        end
                end
            case 34
                switch $opt
                    case --version -v
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --framework -f
                        if test $values_after -lt 1
                            return
                        end
                    case --source -s
                        if test $values_after -lt 1
                            return
                        end
                    case --package-directory
                        if test $values_after -lt 1
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                    case --file
                        if test $values_after -lt 1
                            return
                        end
                end
            case 35
                switch $opt
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --framework -f
                        return
                    case --config --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --source -s
                        return
                    case --format
                        if test $values_after -lt 1
                            printf '%s\n' 'console'
                            printf '%s\n' 'json'
                            return
                        end
                    case --output-version
                        if test $values_after -lt 1
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                    case --file
                        if test $values_after -lt 1
                            return
                        end
                end
            case 36
                switch $opt
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                    case --file
                        if test $values_after -lt 1
                            return
                        end
                end
            case 37
                switch $opt
                    case --project --file
                        if test $values_after -lt 1
                            return
                        end
                    case --vulnerable
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 38
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --source -s
                        return
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 40
                switch $opt
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                end
            case 41
                switch $opt
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --artifacts-path
                        if test $values_after -lt 1
                            return
                        end
                    case --manifest
                        return
                    case --self-contained --sc
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --framework -f
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --configuration -c
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --version-suffix
                        if test $values_after -lt 1
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v --v -verbosity /v /verbosity
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --runtime -r
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --arch -a
                        if test $values_after -lt 1
                            return
                        end
                    case --os
                        if test $values_after -lt 1
                            return
                        end
                end
            case 42
                switch $opt
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                end
            case 43
                switch $opt
                    case --framework -f
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --file
                        if test $values_after -lt 1
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                end
            case 44
                switch $opt
                    case --file
                        if test $values_after -lt 1
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                end
            case 45
                switch $opt
                    case --framework -f
                        if test $values_after -lt 1
                            return
                        end
                    case --file
                        if test $values_after -lt 1
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                end
            case 46
                switch $opt
                    case --source -s
                        return
                    case --packages
                        if test $values_after -lt 1
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --artifacts-path
                        if test $values_after -lt 1
                            return
                        end
                    case --lock-file-path
                        if test $values_after -lt 1
                            return
                        end
                    case --runtime -r
                        command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                        return
                    case --arch -a
                        if test $values_after -lt 1
                            return
                        end
                    case --os
                        if test $values_after -lt 1
                            return
                        end
                end
            case 47
                switch $opt
                    case --configuration -c
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --framework -f
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --project
                        if test $values_after -lt 1
                            return
                        end
                    case --file
                        if test $values_after -lt 1
                            return
                        end
                    case --launch-profile -lp
                        if test $values_after -lt 1
                            return
                        end
                    case --device
                        if test $values_after -lt 1
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --self-contained --sc
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v --v -verbosity /v /verbosity
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --runtime -r
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --arch -a
                        if test $values_after -lt 1
                            return
                        end
                    case --os
                        if test $values_after -lt 1
                            return
                        end
                    case --artifacts-path
                        if test $values_after -lt 1
                            return
                        end
                    case --environment -e
                        return
                end
            case 49
                switch $opt
                    case --in-root
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --solution-folder -s
                        if test $values_after -lt 1
                            return
                        end
                    case --include-references
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                end
            case 53
                switch $opt
                    case --manifest -m
                        return
                    case --framework-version
                        if test $values_after -lt 1
                            return
                        end
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --working-dir -w
                        if test $values_after -lt 1
                            return
                        end
                    case --framework -f
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --runtime -r
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --verbosity -v --v -verbosity /v /verbosity
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 54
                switch $opt
                    case --settings -s
                        if test $values_after -lt 1
                            return
                        end
                    case --environment -e
                        return
                    case --filter
                        if test $values_after -lt 1
                            return
                        end
                    case --test-adapter-path
                        return
                    case --logger -l
                        return
                    case --output -o
                        if test $values_after -lt 1
                            return
                        end
                    case --artifacts-path
                        if test $values_after -lt 1
                            return
                        end
                    case --diag -d
                        if test $values_after -lt 1
                            return
                        end
                    case --results-directory
                        if test $values_after -lt 1
                            return
                        end
                    case --collect
                        return
                    case --blame-crash-dump-type
                        if test $values_after -lt 1
                            printf '%s\n' 'full'
                            printf '%s\n' 'mini'
                            return
                        end
                    case --blame-hang-dump-type
                        if test $values_after -lt 1
                            printf '%s\n' 'full'
                            printf '%s\n' 'mini'
                            printf '%s\n' 'none'
                            return
                        end
                    case --blame-hang-timeout
                        if test $values_after -lt 1
                            return
                        end
                    case --configuration -c
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --framework -f
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --interactive
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --verbosity -v --v -verbosity /v /verbosity
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --runtime -r
                        if test $values_after -lt 1
                            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
                            return
                        end
                    case --arch -a
                        if test $values_after -lt 1
                            return
                        end
                    case --os
                        if test $values_after -lt 1
                            return
                        end
                end
            case 56
                switch $opt
                    case --tool-path
                        if test $values_after -lt 1
                            return
                        end
                    case --version
                        if test $values_after -lt 1
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --tool-manifest
                        if test $values_after -lt 1
                            return
                        end
                    case --add-source
                        return
                    case --source
                        return
                    case --framework
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --arch -a
                        if test $values_after -lt 1
                            return
                        end
                    case --create-manifest-if-needed
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                end
            case 57
                switch $opt
                    case --tool-path
                        if test $values_after -lt 1
                            return
                        end
                    case --tool-manifest
                        if test $values_after -lt 1
                            return
                        end
                end
            case 58
                switch $opt
                    case --tool-path
                        if test $values_after -lt 1
                            return
                        end
                    case --version
                        if test $values_after -lt 1
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --tool-manifest
                        if test $values_after -lt 1
                            return
                        end
                    case --add-source
                        return
                    case --source
                        return
                    case --framework
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 59
                switch $opt
                    case --tool-path
                        if test $values_after -lt 1
                            return
                        end
                    case --format
                        if test $values_after -lt 1
                            printf '%s\n' 'json'
                            printf '%s\n' 'table'
                            return
                        end
                end
            case 61
                switch $opt
                    case --skip
                        if test $values_after -lt 1
                            return
                        end
                    case --take
                        if test $values_after -lt 1
                            return
                        end
                end
            case 62
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --add-source
                        return
                    case --tool-manifest
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 63
                switch $opt
                    case --version
                        if test $values_after -lt 1
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --source
                        return
                    case --add-source
                        return
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 64
                switch $opt
                    case --Platform
                        if test $values_after -lt 1
                            return
                        end
                    case --Framework
                        if test $values_after -lt 1
                            return
                        end
                    case --logger
                        return
                end
            case 69
                switch $opt
                    case --temp-dir
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --source -s
                        return
                    case --include-previews
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --version
                        return
                end
            case 70
                switch $opt
                    case --temp-dir
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --source -s
                        return
                    case --include-previews
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --version
                        return
                    case --from-previous-sdk
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --from-history
                        if test $values_after -lt 1
                            return
                        end
                    case --manifests-only
                        if test $values_after -lt 1
                            return
                        end
                end
            case 73
                switch $opt
                    case --format
                        if test $values_after -lt 1
                            return
                        end
                    case --take
                        if test $values_after -lt 1
                            return
                        end
                    case --include-previews
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                end
            case 74
                switch $opt
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 75
                switch $opt
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --source -s
                        return
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                end
            case 76
                switch $opt
                    case --temp-dir
                        if test $values_after -lt 1
                            return
                        end
                    case --verbosity -v
                        if test $values_after -lt 1
                            printf '%s\n' 'd'
                            printf '%s\n' 'detailed'
                            printf '%s\n' 'diag'
                            printf '%s\n' 'diagnostic'
                            printf '%s\n' 'm'
                            printf '%s\n' 'minimal'
                            printf '%s\n' 'n'
                            printf '%s\n' 'normal'
                            printf '%s\n' 'q'
                            printf '%s\n' 'quiet'
                            return
                        end
                    case --configfile
                        if test $values_after -lt 1
                            return
                        end
                    case --source -s
                        return
                    case --include-previews
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                    case --version
                        return
                end
            case 77
                switch $opt
                    case --all
                        if test $values_after -lt 1
                            printf '%s\n' 'False'
                            printf '%s\n' 'True'
                            return
                        end
                end
            case 78
                switch $opt
                    case --update-mode
                        if test $values_after -lt 1
                            printf '%s\n' 'manifests'
                            printf '%s\n' 'workload-set'
                            return
                        end
                end
        end
    end
    
    switch $state
        case 0
            printf '%s\t%s\n' 'build' '.NET Builder'
            printf '%s\t%s\n' 'build-server' 'Interact with servers started from a build.'
            printf '%s\t%s\n' 'clean' '.NET Clean Command'
            printf '%s\n' 'format'
            printf '%s\n' 'fsi'
            printf '%s\t%s\n' 'msbuild' '.NET Builder'
            printf '%s\t%s\n' 'new' 'Template Instantiation Commands for .NET CLI.'
            printf '%s\n' 'nuget'
            printf '%s\t%s\n' 'pack' '.NET Core NuGet Package Packer'
            printf '%s\n' 'package'
            printf '%s\n' 'project'
            printf '%s\t%s\n' 'publish' 'Publisher for the .NET Platform'
            printf '%s\t%s\n' 'reference' '.NET Remove Command'
            printf '%s\t%s\n' 'restore' '.NET dependency restorer'
            printf '%s\t%s\n' 'run' '.NET Run Command'
            printf '%s\t%s\n' 'solution' '.NET modify solution file command'
            printf '%s\t%s\n' 'store' 'Stores the specified assemblies for the .NET Platform. By default, these will be optimized for the target runtime and framework.'
            printf '%s\t%s\n' 'test' '.NET Test Command for VSTest. To use Microsoft.Testing.Platform, opt-in to the Microsoft.Testing.Platform-based command via global.json. For more information, see https://aka.ms/dotnet-test.'
            printf '%s\t%s\n' 'tool' 'Install or work with tools that extend the .NET experience.'
            printf '%s\n' 'vstest'
            printf '%s\t%s\n' 'help' '.NET CLI help utility'
            printf '%s\t%s\n' 'sdk' '.NET SDK Command'
            printf '%s\t%s\n' 'workload' 'Install or work with workloads that extend the .NET experience.'
            printf '%s\t%s\n' 'completions' 'Commands for generating and registering completions for supported shells'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            printf '%s\t%s\n' '--diagnostics' 'Enable diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enable diagnostic output.'
            printf '%s\n' '--version'
            printf '%s\n' '--info'
            printf '%s\n' '--list-sdks'
            printf '%s\n' '--list-runtimes'
        case 1
            printf '%s\t%s\n' '--use-current-runtime' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--ucr' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--framework' 'The target framework to build for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '-f' 'The target framework to build for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '--configuration' 'The configuration to use for building the project. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '-c' 'The configuration to use for building the project. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '--version-suffix' 'Set the value of the $(VersionSuffix) property to use when building the project.'
            printf '%s\t%s\n' '--no-restore' 'Do not restore the project before building.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--output' 'The output directory to place built artifacts in.'
            printf '%s\t%s\n' '-o' 'The output directory to place built artifacts in.'
            printf '%s\t%s\n' '--artifacts-path' 'The artifacts path. All output from the project, including build, publish, and pack output, will go in subfolders under the specified path.'
            printf '%s\t%s\n' '--no-incremental' 'Do not use incremental building.'
            printf '%s\t%s\n' '--no-dependencies' 'Do not build project-to-project references and only build the specified project.'
            printf '%s\t%s\n' '--no-logo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '-nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '/nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--self-contained' 'Publish the .NET runtime with your application so the runtime doesn\'t need to be installed on the target machine. The default is \'false.\' However, when targeting .NET 7 or lower, the default is \'true\' if a runtime identifier is specified.'
            printf '%s\t%s\n' '--sc' 'Publish the .NET runtime with your application so the runtime doesn\'t need to be installed on the target machine. The default is \'false.\' However, when targeting .NET 7 or lower, the default is \'true\' if a runtime identifier is specified.'
            printf '%s\t%s\n' '--no-self-contained' 'Publish your application as a framework dependent application. A compatible .NET runtime must be installed on the target machine to run your application.'
            printf '%s\t%s\n' '--runtime' 'The target runtime to build for.'
            printf '%s\t%s\n' '-r' 'The target runtime to build for.'
            printf '%s\t%s\n' '--arch' 'The target architecture.'
            printf '%s\t%s\n' '-a' 'The target architecture.'
            printf '%s\t%s\n' '--os' 'The target operating system.'
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 2
            printf '%s\t%s\n' 'shutdown' 'Shuts down build servers that are started from dotnet. By default, all servers are shut down.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 3
            printf '%s\t%s\n' '--msbuild' 'Shut down the MSBuild build server.'
            printf '%s\t%s\n' '--vbcscompiler' 'Shut down the VB/C# compiler build server.'
            printf '%s\t%s\n' '--razor' 'Shut down the Razor build server.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 4
            printf '%s\t%s\n' '--framework' 'The target framework to clean for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '-f' 'The target framework to clean for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '--runtime' 'The target runtime to clean for.'
            printf '%s\t%s\n' '-r' 'The target runtime to clean for.'
            printf '%s\t%s\n' '--configuration' 'The configuration to clean for. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '-c' 'The configuration to clean for. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--output' 'The directory containing the build artifacts to clean.'
            printf '%s\t%s\n' '-o' 'The directory containing the build artifacts to clean.'
            printf '%s\t%s\n' '--artifacts-path' 'The artifacts path. All output from the project, including build, publish, and pack output, will go in subfolders under the specified path.'
            printf '%s\t%s\n' '--no-logo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '-nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '/nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 5
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 6
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 7
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 8
            printf '%s\t%s\n' 'create' 'Instantiates a template with given short name. An alias of \'dotnet new <template name>\'.'
            printf '%s\t%s\n' 'install' 'Installs a template package.'
            printf '%s\t%s\n' 'uninstall' 'Uninstalls a template package.'
            printf '%s\t%s\n' 'update' 'Checks the currently installed template packages for update, and install the updates.'
            printf '%s\t%s\n' 'search' 'Searches for the templates on NuGet.org.'
            printf '%s\t%s\n' 'list' 'Lists templates containing the specified template name. If no name is specified, lists all templates.'
            printf '%s\t%s\n' 'details' '       Provides the details for specified template package.       The command checks if the package is installed locally, if it was not found, it searches the configured NuGet feeds.'
            printf '%s\t%s\n' '--output' 'Location to place the generated output.'
            printf '%s\t%s\n' '-o' 'Location to place the generated output.'
            printf '%s\t%s\n' '--name' 'The name for the output being created. If no name is specified, the name of the output directory is used.'
            printf '%s\t%s\n' '-n' 'The name for the output being created. If no name is specified, the name of the output directory is used.'
            printf '%s\t%s\n' '--dry-run' 'Displays a summary of what would happen if the given command line were run if it would result in a template creation.'
            printf '%s\t%s\n' '--force' 'Forces content to be generated even if it would change existing files.'
            printf '%s\t%s\n' '--no-update-check' 'Disables checking for the template package updates when instantiating a template.'
            printf '%s\t%s\n' '--project' 'The project that should be used for context evaluation.'
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 9
            printf '%s\t%s\n' '--output' 'Location to place the generated output.'
            printf '%s\t%s\n' '-o' 'Location to place the generated output.'
            printf '%s\t%s\n' '--name' 'The name for the output being created. If no name is specified, the name of the output directory is used.'
            printf '%s\t%s\n' '-n' 'The name for the output being created. If no name is specified, the name of the output directory is used.'
            printf '%s\t%s\n' '--dry-run' 'Displays a summary of what would happen if the given command line were run if it would result in a template creation.'
            printf '%s\t%s\n' '--force' 'Forces content to be generated even if it would change existing files.'
            printf '%s\t%s\n' '--no-update-check' 'Disables checking for the template package updates when instantiating a template.'
            printf '%s\t%s\n' '--project' 'The project that should be used for context evaluation.'
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 10
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--add-source' 'Specifies a NuGet source to use.'
            printf '%s\t%s\n' '--nuget-source' 'Specifies a NuGet source to use.'
            printf '%s\t%s\n' '--force' 'Allows installing template packages from the specified sources even if they would override a template package from another source.'
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 11
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 12
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--add-source' 'Specifies a NuGet source to use.'
            printf '%s\t%s\n' '--nuget-source' 'Specifies a NuGet source to use.'
            printf '%s\t%s\n' '--check-only' 'Only checks for updates and display the template packages to be updated without applying update.'
            printf '%s\t%s\n' '--dry-run' 'Only checks for updates and display the template packages to be updated without applying update.'
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 13
            printf '%s\t%s\n' '--author' 'Filters the templates based on the template author.'
            printf '%s\t%s\n' '--language' 'Filters templates based on language.'
            printf '%s\t%s\n' '-lang' 'Filters templates based on language.'
            printf '%s\t%s\n' '--type' 'Filters templates based on available types. Predefined values are "project" and "item".'
            printf '%s\t%s\n' '--tag' 'Filters the templates based on the tag.'
            printf '%s\t%s\n' '--package' 'Filters the templates based on NuGet package ID.'
            printf '%s\t%s\n' '--columns-all' 'Displays all columns in the output.'
            printf '%s\t%s\n' '--columns' 'Specifies the columns to display in the output. '
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 14
            printf '%s\t%s\n' '--author' 'Filters the templates based on the template author.'
            printf '%s\t%s\n' '--language' 'Filters templates based on language.'
            printf '%s\t%s\n' '-lang' 'Filters templates based on language.'
            printf '%s\t%s\n' '--type' 'Filters templates based on available types. Predefined values are "project" and "item".'
            printf '%s\t%s\n' '--tag' 'Filters the templates based on the tag.'
            printf '%s\t%s\n' '--ignore-constraints' 'Disables checking if the template meets the constraints to be run.'
            printf '%s\t%s\n' '--output' 'Location to place the generated output.'
            printf '%s\t%s\n' '-o' 'Location to place the generated output.'
            printf '%s\t%s\n' '--project' 'The project that should be used for context evaluation.'
            printf '%s\t%s\n' '--columns-all' 'Displays all columns in the output.'
            printf '%s\t%s\n' '--columns' 'Specifies the columns to display in the output. '
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 15
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--add-source' 'Specifies a NuGet source to use.'
            printf '%s\t%s\n' '--nuget-source' 'Specifies a NuGet source to use.'
            printf '%s\t%s\n' '--verbosity' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Sets the verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], and diag[nostic].'
            printf '%s\t%s\n' '--diagnostics' 'Enables diagnostic output.'
            printf '%s\t%s\n' '-d' 'Enables diagnostic output.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 16
            printf '%s\n' 'delete'
            printf '%s\n' 'locals'
            printf '%s\n' 'push'
            printf '%s\n' 'verify'
            printf '%s\n' 'trust'
            printf '%s\n' 'sign'
            printf '%s\t%s\n' 'why' 'Shows the dependency graph for a particular package for a given project or solution.'
            printf '%s\n' '--version'
            printf '%s\n' '--verbosity'
            printf '%s\n' '-v'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 17
            printf '%s\n' '--force-english-output'
            printf '%s\n' '--source'
            printf '%s\n' '-s'
            printf '%s\n' '--non-interactive'
            printf '%s\n' '--api-key'
            printf '%s\n' '-k'
            printf '%s\n' '--no-service-endpoint'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 18
            printf '%s\n' '--force-english-output'
            printf '%s\n' '--clear'
            printf '%s\n' '-c'
            printf '%s\n' '--list'
            printf '%s\n' '-l'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            printf '%s\n' 'all'
            printf '%s\n' 'global-packages'
            printf '%s\n' 'http-cache'
            printf '%s\n' 'plugins-cache'
            printf '%s\n' 'temp'
        case 19
            printf '%s\n' '--force-english-output'
            printf '%s\n' '--source'
            printf '%s\n' '-s'
            printf '%s\n' '--symbol-source'
            printf '%s\n' '-ss'
            printf '%s\n' '--timeout'
            printf '%s\n' '-t'
            printf '%s\n' '--api-key'
            printf '%s\n' '-k'
            printf '%s\n' '--symbol-api-key'
            printf '%s\n' '-sk'
            printf '%s\n' '--disable-buffering'
            printf '%s\n' '-d'
            printf '%s\n' '--no-symbols'
            printf '%s\n' '-n'
            printf '%s\n' '--no-service-endpoint'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\n' '--skip-duplicate'
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 20
            printf '%s\n' '--all'
            printf '%s\n' '--certificate-fingerprint'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 21
            printf '%s\n' 'list'
            printf '%s\n' 'author'
            printf '%s\n' 'repository'
            printf '%s\n' 'source'
            printf '%s\n' 'certificate'
            printf '%s\n' 'remove'
            printf '%s\n' 'sync'
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 22
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 23
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\n' '--allow-untrusted-root'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 24
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\n' '--allow-untrusted-root'
            printf '%s\n' '--owners'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 25
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\n' '--owners'
            printf '%s\n' '--source-url'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 26
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\n' '--allow-untrusted-root'
            printf '%s\n' '--algorithm'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 27
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 28
            printf '%s\n' '--configfile'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 29
            printf '%s\n' '--output'
            printf '%s\n' '-o'
            printf '%s\n' '--certificate-path'
            printf '%s\n' '--certificate-store-name'
            printf '%s\n' '--certificate-store-location'
            printf '%s\n' '--certificate-subject-name'
            printf '%s\n' '--certificate-fingerprint'
            printf '%s\n' '--certificate-password'
            printf '%s\n' '--hash-algorithm'
            printf '%s\n' '--timestamper'
            printf '%s\n' '--timestamp-hash-algorithm'
            printf '%s\n' '--overwrite'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 30
            printf '%s\t%s\n' '--framework' 'The target framework(s) for which dependency graphs are shown.'
            printf '%s\t%s\n' '-f' 'The target framework(s) for which dependency graphs are shown.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 31
            printf '%s\t%s\n' '--output' 'The output directory to place built packages in.'
            printf '%s\t%s\n' '-o' 'The output directory to place built packages in.'
            printf '%s\t%s\n' '--artifacts-path' 'The artifacts path. All output from the project, including build, publish, and pack output, will go in subfolders under the specified path.'
            printf '%s\t%s\n' '--no-build' 'Do not build the project before packing. Implies --no-restore.'
            printf '%s\t%s\n' '--include-symbols' 'Include packages with symbols in addition to regular packages in output directory.'
            printf '%s\t%s\n' '--include-source' 'Include PDBs and source files. Source files go into the \'src\' folder in the resulting nuget package.'
            printf '%s\t%s\n' '--serviceable' 'Set the serviceable flag in the package. See https://aka.ms/nupkgservicing for more information.'
            printf '%s\t%s\n' '-s' 'Set the serviceable flag in the package. See https://aka.ms/nupkgservicing for more information.'
            printf '%s\t%s\n' '--no-logo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '-nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '/nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--no-restore' 'Do not restore the project before building.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--version-suffix' 'Set the value of the $(VersionSuffix) property to use when building the project.'
            printf '%s\t%s\n' '--version' 'The version of the package to create'
            printf '%s\t%s\n' '--configuration' 'The configuration to use for building the package. The default is \'Release\'.'
            printf '%s\t%s\n' '-c' 'The configuration to use for building the package. The default is \'Release\'.'
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--use-current-runtime' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--ucr' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--runtime' 'The target runtime to build for.'
            printf '%s\t%s\n' '-r' 'The target runtime to build for.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 32
            printf '%s\t%s\n' 'search' 'Searches one or more package sources for packages that match a search term. If no sources are specified, all sources defined in the NuGet.Config are used.'
            printf '%s\t%s\n' 'add' 'Add a NuGet package reference to the project.'
            printf '%s\t%s\n' 'list' 'List all package references of the project or solution.'
            printf '%s\t%s\n' 'remove' 'Remove a NuGet package reference from the project.'
            printf '%s\t%s\n' 'update' 'Update referenced packages in a project or solution.'
            printf '%s\t%s\n' 'download' 'Downloads a NuGet package to a local folder without requiring a project file.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 33
            printf '%s\t%s\n' '--source' 'The package source to search. You can pass multiple `--source` options to search multiple package sources. Example: `--source https://api.nuget.org/v3/index.json`.'
            printf '%s\t%s\n' '--take' 'Number of results to return. Default 20.'
            printf '%s\t%s\n' '--skip' 'Number of results to skip, to allow pagination. Default 0.'
            printf '%s\t%s\n' '--exact-match' 'Require that the search term exactly match the name of the package. Causes `--take` and `--skip` options to be ignored.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--prerelease' 'Include prerelease packages.'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file. If specified, only the settings from this file will be used. If not specified, the hierarchy of configuration files from the current directory will be used. For more information, see https://docs.microsoft.com/nuget/consume-packages/configuring-nuget-behavior'
            printf '%s\t%s\n' '--format' 'Format the output accordingly. Either `table`, or `json`. The default value is `table`.'
            printf '%s\t%s\n' '--verbosity' 'Display this amount of details in the output: `normal`, `minimal`, `detailed`. The default is `normal`'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 34
            printf '%s\t%s\n' '--version' 'The version of the package to add.'
            printf '%s\t%s\n' '-v' 'The version of the package to add.'
            printf '%s\t%s\n' '--framework' 'Add the reference only when targeting a specific framework.'
            printf '%s\t%s\n' '-f' 'Add the reference only when targeting a specific framework.'
            printf '%s\t%s\n' '--no-restore' 'Add the reference without performing restore preview and compatibility check.'
            printf '%s\t%s\n' '-n' 'Add the reference without performing restore preview and compatibility check.'
            printf '%s\t%s\n' '--source' 'The NuGet package source to use during the restore.'
            printf '%s\t%s\n' '-s' 'The NuGet package source to use during the restore.'
            printf '%s\t%s\n' '--package-directory' 'The directory to restore packages to.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--prerelease' 'Allows prerelease packages to be installed.'
            printf '%s\t%s\n' '--project' 'The project file to operate on. If a file is not specified, the command will search the current directory for one.'
            printf '%s\t%s\n' '--file' 'The file-based app to operate on.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
        case 35
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--outdated' 'Lists packages that have newer versions. Cannot be combined with \'--deprecated\' or \'--vulnerable\' options.'
            printf '%s\t%s\n' '--deprecated' 'Lists packages that have been deprecated. Cannot be combined with \'--vulnerable\' or \'--outdated\' options.'
            printf '%s\t%s\n' '--vulnerable' 'Lists packages that have known vulnerabilities. Cannot be combined with \'--deprecated\' or \'--outdated\' options.'
            printf '%s\t%s\n' '--framework' 'Chooses a framework to show its packages. Use the option multiple times for multiple frameworks.'
            printf '%s\t%s\n' '-f' 'Chooses a framework to show its packages. Use the option multiple times for multiple frameworks.'
            printf '%s\t%s\n' '--include-transitive' 'Lists transitive and top-level packages.'
            printf '%s\t%s\n' '--include-prerelease' 'Consider packages with prerelease versions when searching for newer packages. Requires the \'--outdated\' option.'
            printf '%s\t%s\n' '--highest-patch' 'Consider only the packages with a matching major and minor version numbers when searching for newer packages. Requires the \'--outdated\' option.'
            printf '%s\t%s\n' '--highest-minor' 'Consider only the packages with a matching major version number when searching for newer packages. Requires the \'--outdated\' option.'
            printf '%s\t%s\n' '--config' 'The path to the NuGet config file to use. Requires the \'--outdated\', \'--deprecated\' or \'--vulnerable\' option.'
            printf '%s\t%s\n' '--configfile' 'The path to the NuGet config file to use. Requires the \'--outdated\', \'--deprecated\' or \'--vulnerable\' option.'
            printf '%s\t%s\n' '--source' 'The NuGet sources to use when searching for newer packages. Requires the \'--outdated\', \'--deprecated\' or \'--vulnerable\' option.'
            printf '%s\t%s\n' '-s' 'The NuGet sources to use when searching for newer packages. Requires the \'--outdated\', \'--deprecated\' or \'--vulnerable\' option.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--format' 'Specifies the output format type for the list packages command.'
            printf '%s\t%s\n' '--output-version' 'Specifies the version of machine-readable output. Requires the \'--format json\' option.'
            printf '%s\t%s\n' '--no-restore' 'Do not restore before running the command.'
            printf '%s\t%s\n' '--project' 'The project file to operate on. If a file is not specified, the command will search the current directory for one.'
            printf '%s\t%s\n' '--file' 'The file-based app to operate on.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 36
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--project' 'The project file to operate on. If a file is not specified, the command will search the current directory for one.'
            printf '%s\t%s\n' '--file' 'The file-based app to operate on.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 37
            printf '%s\t%s\n' '--project' 'Path to a project or solution file or file-based app, or a project directory.'
            printf '%s\t%s\n' '--file' 'Path to a project or solution file or file-based app, or a project directory.'
            printf '%s\t%s\n' '--vulnerable' 'Upgrade packages with known vulnerabilities.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--verbosity' 'Set the verbosity level of the command. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the verbosity level of the command. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 38
            printf '%s\t%s\n' '--allow-insecure-connections' 'Allows downloading from HTTP (non-HTTPS) package sources.'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file. If specified, only the settings from this file will be used. If not specified, the hierarchy of configuration files from the current directory will be used. For more information, see https://docs.microsoft.com/nuget/consume-packages/configuring-nuget-behavior.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--output' 'Directory where the package will be placed. Defaults to the current working directory.'
            printf '%s\t%s\n' '-o' 'Directory where the package will be placed. Defaults to the current working directory.'
            printf '%s\t%s\n' '--prerelease' 'Allows prerelease packages to be installed.'
            printf '%s\t%s\n' '--source' 'Specifies one or more NuGet package sources to use.'
            printf '%s\t%s\n' '-s' 'Specifies one or more NuGet package sources to use.'
            printf '%s\t%s\n' '--verbosity' 'Set the verbosity level of the command. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the verbosity level of the command. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 39
            printf '%s\t%s\n' 'convert' 'Convert a file-based program to a project-based program.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 40
            printf '%s\t%s\n' '--output' 'Location to place the generated output.'
            printf '%s\t%s\n' '-o' 'Location to place the generated output.'
            printf '%s\t%s\n' '--force' 'Force conversion even if there are malformed directives.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--dry-run' 'Determines changes without actually modifying the file system'
            printf '%s\t%s\n' '--delete-source' 'Delete all source files after conversion'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 41
            printf '%s\t%s\n' '--use-current-runtime' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--ucr' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--output' 'The output directory to place the published artifacts in.'
            printf '%s\t%s\n' '-o' 'The output directory to place the published artifacts in.'
            printf '%s\t%s\n' '--artifacts-path' 'The artifacts path. All output from the project, including build, publish, and pack output, will go in subfolders under the specified path.'
            printf '%s\t%s\n' '--manifest' 'The path to a target manifest file that contains the list of packages to be excluded from the publish step.'
            printf '%s\t%s\n' '--no-build' 'Do not build the project before publishing. Implies --no-restore.'
            printf '%s\t%s\n' '--self-contained' 'Publish the .NET runtime with your application so the runtime doesn\'t need to be installed on the target machine. The default is \'false.\' However, when targeting .NET 7 or lower, the default is \'true\' if a runtime identifier is specified.'
            printf '%s\t%s\n' '--sc' 'Publish the .NET runtime with your application so the runtime doesn\'t need to be installed on the target machine. The default is \'false.\' However, when targeting .NET 7 or lower, the default is \'true\' if a runtime identifier is specified.'
            printf '%s\t%s\n' '--no-self-contained' 'Publish your application as a framework dependent application. A compatible .NET runtime must be installed on the target machine to run your application.'
            printf '%s\t%s\n' '--no-logo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '-nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '/nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--framework' 'The target framework to publish for. The target framework has to be specified in the project file.'
            printf '%s\t%s\n' '-f' 'The target framework to publish for. The target framework has to be specified in the project file.'
            printf '%s\t%s\n' '--configuration' 'The configuration to publish for. The default is \'Release\' for NET 8.0 projects and above, but \'Debug\' for older projects.'
            printf '%s\t%s\n' '-c' 'The configuration to publish for. The default is \'Release\' for NET 8.0 projects and above, but \'Debug\' for older projects.'
            printf '%s\t%s\n' '--version-suffix' 'Set the value of the $(VersionSuffix) property to use when building the project.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--no-restore' 'Do not restore the project before building.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--runtime' 'The target runtime to publish for. This is used when creating a self-contained deployment. The default is to publish a framework-dependent application.'
            printf '%s\t%s\n' '-r' 'The target runtime to publish for. This is used when creating a self-contained deployment. The default is to publish a framework-dependent application.'
            printf '%s\t%s\n' '--arch' 'The target architecture.'
            printf '%s\t%s\n' '-a' 'The target architecture.'
            printf '%s\t%s\n' '--os' 'The target operating system.'
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 42
            printf '%s\t%s\n' 'add' 'Add a project-to-project reference to the project.'
            printf '%s\t%s\n' 'list' 'List all project-to-project references of the project.'
            printf '%s\t%s\n' 'remove' 'Remove a project-to-project reference from the project.'
            printf '%s\t%s\n' '--project' 'The project file to operate on. If a file is not specified, the command will search the current directory for one.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 43
            printf '%s\t%s\n' '--framework' 'Add the reference only when targeting a specific framework.'
            printf '%s\t%s\n' '-f' 'Add the reference only when targeting a specific framework.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--file' 'The file-based app to operate on.'
            printf '%s\t%s\n' '--project' 'The project file to operate on. If a file is not specified, the command will search the current directory for one.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 44
            printf '%s\t%s\n' '--file' 'The file-based app to operate on.'
            printf '%s\t%s\n' '--project' 'The project file to operate on. If a file is not specified, the command will search the current directory for one.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 45
            printf '%s\t%s\n' '--framework' 'Remove the reference only when targeting a specific framework.'
            printf '%s\t%s\n' '-f' 'Remove the reference only when targeting a specific framework.'
            printf '%s\t%s\n' '--file' 'The file-based app to operate on.'
            printf '%s\t%s\n' '--project' 'The project file to operate on. If a file is not specified, the command will search the current directory for one.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
        case 46
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--source' 'The NuGet package source to use for the restore.'
            printf '%s\t%s\n' '-s' 'The NuGet package source to use for the restore.'
            printf '%s\t%s\n' '--packages' 'The directory to restore packages to.'
            printf '%s\t%s\n' '--use-current-runtime' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--ucr' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--no-http-cache' 'Disable Http Caching for packages.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--force' 'Force all dependencies to be resolved even if the last restore was successful. This is equivalent to deleting project.assets.json.'
            printf '%s\t%s\n' '-f' 'Force all dependencies to be resolved even if the last restore was successful. This is equivalent to deleting project.assets.json.'
            printf '%s\t%s\n' '--no-dependencies' 'Do not restore project-to-project references and only restore the specified project.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--artifacts-path' 'The artifacts path. All output from the project, including build, publish, and pack output, will go in subfolders under the specified path.'
            printf '%s\t%s\n' '--use-lock-file' 'Enables project lock file to be generated and used with restore.'
            printf '%s\t%s\n' '--locked-mode' 'Don\'t allow updating project lock file.'
            printf '%s\t%s\n' '--lock-file-path' 'Output location where project lock file is written. By default, this is \'PROJECT_ROOT\\packages.lock.json\'.'
            printf '%s\t%s\n' '--force-evaluate' 'Forces restore to reevaluate all dependencies even if a lock file already exists.'
            printf '%s\t%s\n' '--no-logo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '-nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '/nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--runtime' 'The target runtime to restore packages for.'
            printf '%s\t%s\n' '-r' 'The target runtime to restore packages for.'
            printf '%s\t%s\n' '--arch' 'The target architecture.'
            printf '%s\t%s\n' '-a' 'The target architecture.'
            printf '%s\t%s\n' '--os' 'The target operating system.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 47
            printf '%s\t%s\n' '--configuration' 'The configuration to run for. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '-c' 'The configuration to run for. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '--framework' 'The target framework to run for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '-f' 'The target framework to run for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '--project' 'Defines the path of the project file to run. Use path to the project file, or path to the directory containing the project file. If not specified, it defaults to the current directory.'
            printf '%s\t%s\n' '--file' 'The path to the file-based app to run (can be also passed as the first argument if there is no project in the current directory).'
            printf '%s\t%s\n' '--launch-profile' 'The name of the launch profile (if any) to use when launching the application.'
            printf '%s\t%s\n' '-lp' 'The name of the launch profile (if any) to use when launching the application.'
            printf '%s\t%s\n' '--no-launch-profile' 'Do not attempt to use launchSettings.json or [app].run.json to configure the application.'
            printf '%s\t%s\n' '--device' 'The device identifier to use for running the application.'
            printf '%s\t%s\n' '--list-devices' 'List available devices for running the application.'
            printf '%s\t%s\n' '--no-build' 'Do not build the project before running. Implies --no-restore.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--no-restore' 'Do not restore the project before building.'
            printf '%s\t%s\n' '--no-cache' 'Skip up to date checks and always build the program before running.'
            printf '%s\t%s\n' '--self-contained' 'Publish the .NET runtime with your application so the runtime doesn\'t need to be installed on the target machine. The default is \'false.\' However, when targeting .NET 7 or lower, the default is \'true\' if a runtime identifier is specified.'
            printf '%s\t%s\n' '--sc' 'Publish the .NET runtime with your application so the runtime doesn\'t need to be installed on the target machine. The default is \'false.\' However, when targeting .NET 7 or lower, the default is \'true\' if a runtime identifier is specified.'
            printf '%s\t%s\n' '--no-self-contained' 'Publish your application as a framework dependent application. A compatible .NET runtime must be installed on the target machine to run your application.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--runtime' 'The target runtime to run for.'
            printf '%s\t%s\n' '-r' 'The target runtime to run for.'
            printf '%s\t%s\n' '--arch' 'The target architecture.'
            printf '%s\t%s\n' '-a' 'The target architecture.'
            printf '%s\t%s\n' '--os' 'The target operating system.'
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--artifacts-path' 'The artifacts path. All output from the project, including build, publish, and pack output, will go in subfolders under the specified path.'
            printf '%s\t%s\n' '--environment' 'Sets the value of an environment variable.  Creates the variable if it does not exist, overrides if it does.  This argument can be specified multiple times to provide multiple variables.  Examples: -e VARIABLE=abc -e VARIABLE="value with spaces" -e VARIABLE="value;seperated with;semicolons" -e VAR1=abc -e VAR2=def -e VAR3=ghi '
            printf '%s\t%s\n' '-e' 'Sets the value of an environment variable.  Creates the variable if it does not exist, overrides if it does.  This argument can be specified multiple times to provide multiple variables.  Examples: -e VARIABLE=abc -e VARIABLE="value with spaces" -e VARIABLE="value;seperated with;semicolons" -e VAR1=abc -e VAR2=def -e VAR3=ghi '
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 48
            printf '%s\t%s\n' 'add' 'Add one or more projects to a solution file.'
            printf '%s\t%s\n' 'list' 'List all projects in a solution file.'
            printf '%s\t%s\n' 'remove' 'Remove one or more projects from a solution file.'
            printf '%s\t%s\n' 'migrate' 'Generate a .slnx file from a .sln file.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 49
            printf '%s\t%s\n' '--in-root' 'Place project in root of the solution, rather than creating a solution folder.'
            printf '%s\t%s\n' '--solution-folder' 'The destination solution folder path to add the projects to.'
            printf '%s\t%s\n' '-s' 'The destination solution folder path to add the projects to.'
            printf '%s\t%s\n' '--include-references' 'Recursively add projects\' ReferencedProjects to solution'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 50
            printf '%s\t%s\n' '--solution-folders' 'Display solution folder paths.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 51
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 52
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 53
            printf '%s\t%s\n' '--manifest' 'The XML file that contains the list of packages to be stored.'
            printf '%s\t%s\n' '-m' 'The XML file that contains the list of packages to be stored.'
            printf '%s\t%s\n' '--framework-version' 'The Microsoft.NETCore.App package version that will be used to run the assemblies.'
            printf '%s\t%s\n' '--output' 'The output directory to store the given assemblies in.'
            printf '%s\t%s\n' '-o' 'The output directory to store the given assemblies in.'
            printf '%s\t%s\n' '--working-dir' 'The working directory used by the command to execute.'
            printf '%s\t%s\n' '-w' 'The working directory used by the command to execute.'
            printf '%s\t%s\n' '--skip-optimization' 'Skip the optimization phase.'
            printf '%s\t%s\n' '--skip-symbols' 'Skip creating symbol files which can be used for profiling the optimized assemblies.'
            printf '%s\t%s\n' '--framework' 'The target framework to store packages for. The target framework has to be specified in the project file.'
            printf '%s\t%s\n' '-f' 'The target framework to store packages for. The target framework has to be specified in the project file.'
            printf '%s\t%s\n' '--runtime' 'The target runtime to store packages for.'
            printf '%s\t%s\n' '-r' 'The target runtime to store packages for.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--use-current-runtime' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--ucr' 'Use current runtime as the target runtime.'
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--no-logo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '-nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '/nologo' 'Do not display the startup banner or the copyright message.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 54
            printf '%s\t%s\n' '--settings' 'The settings file to use when running tests.'
            printf '%s\t%s\n' '-s' 'The settings file to use when running tests.'
            printf '%s\t%s\n' '--list-tests' 'List the discovered tests instead of running the tests.'
            printf '%s\t%s\n' '-t' 'List the discovered tests instead of running the tests.'
            printf '%s\t%s\n' '--environment' 'Sets the value of an environment variable.  Creates the variable if it does not exist, overrides if it does.  This will force the tests to be run in an isolated process.  This argument can be specified multiple times to provide multiple variables.  Examples: -e VARIABLE=abc -e VARIABLE="value with spaces" -e VARIABLE="value;seperated with;semicolons" -e VAR1=abc -e VAR2=def -e VAR3=ghi '
            printf '%s\t%s\n' '-e' 'Sets the value of an environment variable.  Creates the variable if it does not exist, overrides if it does.  This will force the tests to be run in an isolated process.  This argument can be specified multiple times to provide multiple variables.  Examples: -e VARIABLE=abc -e VARIABLE="value with spaces" -e VARIABLE="value;seperated with;semicolons" -e VAR1=abc -e VAR2=def -e VAR3=ghi '
            printf '%s\t%s\n' '--filter' 'Run tests that match the given expression.                                         Examples:                                         Run tests with priority set to 1: --filter "Priority = 1"                                         Run a test with the specified full name: --filter "FullyQualifiedName=Namespace.ClassName.MethodName"                                         Run tests that contain the specified name: --filter "FullyQualifiedName~Namespace.Class"                                         See https://aka.ms/vstest-filtering for more information on filtering support.                                         '
            printf '%s\t%s\n' '--test-adapter-path' 'The path to the custom adapters to use for the test run.'
            printf '%s\t%s\n' '--logger' 'The logger to use for test results.                                         Examples:                                         Log in trx format using a unique file name: --logger trx                                         Log in trx format using the specified file name: --logger "trx;LogFileName=<TestResults.trx>"                                         See https://aka.ms/vstest-report for more information on logger arguments.'
            printf '%s\t%s\n' '-l' 'The logger to use for test results.                                         Examples:                                         Log in trx format using a unique file name: --logger trx                                         Log in trx format using the specified file name: --logger "trx;LogFileName=<TestResults.trx>"                                         See https://aka.ms/vstest-report for more information on logger arguments.'
            printf '%s\t%s\n' '--output' 'The output directory to place built artifacts in.'
            printf '%s\t%s\n' '-o' 'The output directory to place built artifacts in.'
            printf '%s\t%s\n' '--artifacts-path' 'The artifacts path. All output from the project, including build, publish, and pack output, will go in subfolders under the specified path.'
            printf '%s\t%s\n' '--diag' 'Enable verbose logging to the specified file.'
            printf '%s\t%s\n' '-d' 'Enable verbose logging to the specified file.'
            printf '%s\t%s\n' '--no-build' 'Do not build the project before testing. Implies --no-restore.'
            printf '%s\t%s\n' '--results-directory' 'The directory where the test results will be placed. The specified directory will be created if it does not exist.'
            printf '%s\t%s\n' '--collect' 'The friendly name of the data collector to use for the test run.                                         More info here: https://aka.ms/vstest-collect'
            printf '%s\t%s\n' '--blame' 'Runs the tests in blame mode. This option is helpful in isolating problematic tests that cause the test host to crash or hang, but it does not create a memory dump by default.  When a crash is detected, it creates an sequence file in TestResults/guid/guid_Sequence.xml that captures the order of tests that were run before the crash.  Based on the additional settings, hang dump or crash dump can also be collected.  Example:   Timeout the test run when test takes more than the default timeout of 1 hour, and collect crash dump when the test host exits unexpectedly.   (Crash dumps require additional setup, see below.)   dotnet test --blame-hang --blame-crash Example:   Timeout the test run when a test takes more than 20 minutes and collect hang dump.   dotnet test --blame-hang-timeout 20min '
            printf '%s\t%s\n' '--blame-crash' 'Runs the tests in blame mode and collects a crash dump when the test host exits unexpectedly. This option depends on the version of .NET used, the type of error, and the operating system.  For exceptions in managed code, a dump will be automatically collected on .NET 5.0 and later versions. It will generate a dump for testhost or any child process that also ran on .NET 5.0 and crashed. Crashes in native code will not generate a dump. This option works on Windows, macOS, and Linux.  Crash dumps in native code, or when targetting .NET Framework, or .NET Core 3.1 and earlier versions, can only be collected on Windows, by using Procdump. A directory that contains procdump.exe and procdump64.exe must be in the PATH or PROCDUMP_PATH environment variable.  The tools can be downloaded here: https://docs.microsoft.com/sysinternals/downloads/procdump  To collect a crash dump from a native application running on .NET 5.0 or later, the usage of Procdump can be forced by setting the VSTEST_DUMP_FORCEPROCDUMP environment variable to 1.  Implies --blame.'
            printf '%s\t%s\n' '--blame-crash-dump-type' 'The type of crash dump to be collected. Supported values are full (default) and mini. Implies --blame-crash.'
            printf '%s\t%s\n' '--blame-crash-collect-always' 'Enables collecting crash dump on expected as well as unexpected testhost exit.'
            printf '%s\t%s\n' '--blame-hang' 'Run the tests in blame mode and enables collecting hang dump when test exceeds the given timeout.'
            printf '%s\t%s\n' '--blame-hang-dump-type' 'The type of crash dump to be collected. The supported values are full (default), mini, and none. When \'none\' is used then test host is terminated on timeout, but no dump is collected. Implies --blame-hang.'
            printf '%s\t%s\n' '--blame-hang-timeout' 'Per-test timeout, after which hang dump is triggered and the testhost process is terminated. Default is 1h. The timeout value is specified in the following format: 1.5h / 90m / 5400s / 5400000ms. When no unit is used (e.g. 5400000), the value is assumed to be in milliseconds. When used together with data driven tests, the timeout behavior depends on the test adapter used. For xUnit, NUnit and MSTest 2.2.4+ the timeout is renewed after every test case, For MSTest before 2.2.4, the timeout is used for all testcases.'
            printf '%s\t%s\n' '--no-logo' 'Run test(s), without displaying Microsoft Testplatform banner'
            printf '%s\t%s\n' '--nologo' 'Run test(s), without displaying Microsoft Testplatform banner'
            printf '%s\t%s\n' '-nologo' 'Run test(s), without displaying Microsoft Testplatform banner'
            printf '%s\t%s\n' '/nologo' 'Run test(s), without displaying Microsoft Testplatform banner'
            printf '%s\t%s\n' '--configuration' 'The configuration to use for running tests. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '-c' 'The configuration to use for running tests. The default for most projects is \'Debug\'.'
            printf '%s\t%s\n' '--framework' 'The target framework to run tests for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '-f' 'The target framework to run tests for. The target framework must also be specified in the project file.'
            printf '%s\t%s\n' '--no-restore' 'Do not restore the project before building.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '/verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--runtime' 'The target runtime to test for.'
            printf '%s\t%s\n' '-r' 'The target runtime to test for.'
            printf '%s\t%s\n' '--arch' 'The target architecture.'
            printf '%s\t%s\n' '-a' 'The target architecture.'
            printf '%s\t%s\n' '--os' 'The target operating system.'
            printf '%s\t%s\n' '--disable-build-servers' 'Force the command to ignore any persistent build servers.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 55
            printf '%s\t%s\n' 'install' 'Install global or local tool. Local tools are added to manifest and restored.'
            printf '%s\t%s\n' 'uninstall' 'Uninstall a global tool or local tool.'
            printf '%s\t%s\n' 'update' 'Update a global or local tool.'
            printf '%s\t%s\n' 'list' 'List tools installed globally or locally.'
            printf '%s\t%s\n' 'run' 'Run a local tool. Note that this command cannot be used to run a global tool. '
            printf '%s\t%s\n' 'search' 'Search dotnet tools in nuget.org'
            printf '%s\t%s\n' 'restore' 'Restore tools defined in the local tool manifest.'
            printf '%s\t%s\n' 'execute' 'Executes a tool from source without permanently installing it.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 56
            printf '%s\t%s\n' '--global' 'Install the tool for the current user.'
            printf '%s\t%s\n' '-g' 'Install the tool for the current user.'
            printf '%s\t%s\n' '--local' 'Install the tool and add to the local tool manifest (default).'
            printf '%s\t%s\n' '--tool-path' 'The directory where the tool will be installed. The directory will be created if it does not exist.'
            printf '%s\t%s\n' '--version' 'The version of the tool package to install.'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--tool-manifest' 'Path to the manifest file.'
            printf '%s\t%s\n' '--add-source' 'Add an additional NuGet package source to use during installation.'
            printf '%s\t%s\n' '--source' 'Replace all NuGet package sources to use during installation with these.'
            printf '%s\t%s\n' '--framework' 'The target framework to install the tool for.'
            printf '%s\t%s\n' '--prerelease' 'Include pre-release packages.'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--allow-downgrade' 'Allow package downgrade when installing a .NET tool package.'
            printf '%s\t%s\n' '--arch' 'The target architecture.'
            printf '%s\t%s\n' '-a' 'The target architecture.'
            printf '%s\t%s\n' '--create-manifest-if-needed' 'Create a tool manifest if one isn\'t found during tool installation. For information on how manifests are located, see https://aka.ms/dotnet/tools/create-manifest-if-needed'
            printf '%s\t%s\n' '--allow-roll-forward' 'Allow a .NET tool to roll forward to newer versions of the .NET runtime if the runtime it targets isn\'t installed.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
        case 57
            printf '%s\t%s\n' '--global' 'Uninstall the tool from the current user\'s tools directory.'
            printf '%s\t%s\n' '-g' 'Uninstall the tool from the current user\'s tools directory.'
            printf '%s\t%s\n' '--local' 'Uninstall the tool and remove it from the local tool manifest.'
            printf '%s\t%s\n' '--tool-path' 'The directory containing the tool to uninstall.'
            printf '%s\t%s\n' '--tool-manifest' 'Path to the manifest file.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 58
            printf '%s\t%s\n' '--global' 'Install the tool for the current user.'
            printf '%s\t%s\n' '-g' 'Install the tool for the current user.'
            printf '%s\t%s\n' '--local' 'Install the tool and add to the local tool manifest (default).'
            printf '%s\t%s\n' '--tool-path' 'The directory where the tool will be installed. The directory will be created if it does not exist.'
            printf '%s\t%s\n' '--version' 'The version of the tool package to install.'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--tool-manifest' 'Path to the manifest file.'
            printf '%s\t%s\n' '--add-source' 'Add an additional NuGet package source to use during installation.'
            printf '%s\t%s\n' '--source' 'Replace all NuGet package sources to use during installation with these.'
            printf '%s\t%s\n' '--framework' 'The target framework to install the tool for.'
            printf '%s\t%s\n' '--prerelease' 'Include pre-release packages.'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--allow-downgrade' 'Allow package downgrade when installing a .NET tool package.'
            printf '%s\t%s\n' '--all' 'Update all tools.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
        case 59
            printf '%s\t%s\n' '--global' 'List tools installed for the current user.'
            printf '%s\t%s\n' '-g' 'List tools installed for the current user.'
            printf '%s\t%s\n' '--local' 'List the tools installed in the local tool manifest.'
            printf '%s\t%s\n' '--tool-path' 'The directory containing the tools to list.'
            printf '%s\t%s\n' '--format' 'The output format for the list of tools.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 60
            printf '%s\t%s\n' '--allow-roll-forward' 'Allow a .NET tool to roll forward to newer versions of the .NET runtime if the runtime it targets isn\'t installed.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 61
            printf '%s\t%s\n' '--detail' 'Show detail result of the query.'
            printf '%s\t%s\n' '--skip' 'The number of results to skip, for pagination.'
            printf '%s\t%s\n' '--take' 'The number of results to return, for pagination.'
            printf '%s\t%s\n' '--prerelease' 'Include pre-release packages.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 62
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--add-source' 'Add an additional NuGet package source to use during installation.'
            printf '%s\t%s\n' '--tool-manifest' 'Path to the manifest file.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 63
            printf '%s\t%s\n' '--version' 'The version of the tool package to install.'
            printf '%s\t%s\n' '--allow-roll-forward' 'Allow a .NET tool to roll forward to newer versions of the .NET runtime if the runtime it targets isn\'t installed.'
            printf '%s\t%s\n' '--prerelease' 'Include pre-release packages.'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--source' 'Replace all NuGet package sources to use during installation with these.'
            printf '%s\t%s\n' '--add-source' 'Add an additional NuGet package source to use during installation.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            command $tokens[1] complete --position (commandline -C) (commandline -cp) 2>/dev/null
        case 64
            printf '%s\n' '--Platform'
            printf '%s\n' '--Framework'
            printf '%s\n' '--logger'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 65
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 66
            printf '%s\t%s\n' 'check' '.NET SDK Check Command'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 67
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 68
            printf '%s\t%s\n' 'install' 'Install one or more workloads.'
            printf '%s\t%s\n' 'update' 'Update all installed workloads.'
            printf '%s\t%s\n' 'list' 'List workloads available.'
            printf '%s\t%s\n' 'search' 'Search for available workloads.'
            printf '%s\t%s\n' 'uninstall' 'Uninstall one or more workloads.'
            printf '%s\t%s\n' 'repair' 'Repair workload installations.'
            printf '%s\t%s\n' 'restore' 'Restore workloads required for a project.'
            printf '%s\t%s\n' 'clean' 'Removes workload components that may have been left behind from previous updates and uninstallations.'
            printf '%s\t%s\n' 'config' 'Modify or display workload configuration values. To display a value, specify the corresponding command-line option without providing a value.  For example: "dotnet workload config --update-mode"'
            printf '%s\t%s\n' 'history' 'Shows a history of workload installation actions.'
            printf '%s\t%s\n' '--info' 'Display information about installed workloads.'
            printf '%s\t%s\n' '--version' 'Display the currently installed workload version.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 69
            printf '%s\t%s\n' '--temp-dir' 'Specify a temporary directory for this command to download and extract NuGet packages (must be secure).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--source' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '-s' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '--include-previews' 'Allow prerelease workload manifests.'
            printf '%s\t%s\n' '--version' 'A workload version to display or one or more workloads and their versions joined by the \'@\' character.'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--skip-manifest-update' 'Skip updating the workload manifests.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 70
            printf '%s\t%s\n' '--temp-dir' 'Specify a temporary directory for this command to download and extract NuGet packages (must be secure).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--source' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '-s' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '--include-previews' 'Allow prerelease workload manifests.'
            printf '%s\t%s\n' '--version' 'A workload version to display or one or more workloads and their versions joined by the \'@\' character.'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--from-previous-sdk' 'Include workloads installed with earlier SDK versions in update.'
            printf '%s\t%s\n' '--advertising-manifests-only' 'Only update advertising manifests.'
            printf '%s\t%s\n' '--from-history' 'Update workloads to a previous version specified by the argument. Use the \'dotnet workload history\' to see available workload history records.'
            printf '%s\t%s\n' '--manifests-only' 'Update to the workload versions specified in the history without changing which workloads are installed. Currently installed workloads will be updated to match the specified history version.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 71
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 72
            printf '%s\t%s\n' 'version' '\'dotnet workload search version\' has three functions depending on its argument:       1. If no argument is specified, it outputs a list of the latest released workload versions from this feature band. Takes the --take option to specify how many to provide and --format to alter the format.          Example:            dotnet workload search version --take 2 --format json            [{"workloadVersion":"9.0.201"},{"workloadVersion":"9.0.200.1"}]       2. If a workload version is provided as an argument, it outputs a table of various workloads and their versions for the specified workload version. Takes the --format option to alter the output format.          Example:            dotnet workload search version 9.0.201            Workload manifest ID                               Manifest feature band      Manifest Version            ------------------------------------------------------------------------------------------------            microsoft.net.workload.emscripten.current          9.0.100-rc.1               9.0.0-rc.1.24430.3            microsoft.net.workload.emscripten.net6             9.0.100-rc.1               9.0.0-rc.1.24430.3            microsoft.net.workload.emscripten.net7             9.0.100-rc.1               9.0.0-rc.1.24430.3            microsoft.net.workload.emscripten.net8             9.0.100-rc.1               9.0.0-rc.1.24430.3            microsoft.net.sdk.android                          9.0.100-rc.1               35.0.0-rc.1.80            microsoft.net.sdk.ios                              9.0.100-rc.1               17.5.9270-net9-rc1            microsoft.net.sdk.maccatalyst                      9.0.100-rc.1               17.5.9270-net9-rc1            microsoft.net.sdk.macos                            9.0.100-rc.1               14.5.9270-net9-rc1            microsoft.net.sdk.maui                             9.0.100-rc.1               9.0.0-rc.1.24453.9            microsoft.net.sdk.tvos                             9.0.100-rc.1               17.5.9270-net9-rc1            microsoft.net.workload.mono.toolchain.current      9.0.100-rc.1               9.0.0-rc.1.24431.7            microsoft.net.workload.mono.toolchain.net6         9.0.100-rc.1               9.0.0-rc.1.24431.7            microsoft.net.workload.mono.toolchain.net7         9.0.100-rc.1               9.0.0-rc.1.24431.7            microsoft.net.workload.mono.toolchain.net8         9.0.100-rc.1               9.0.0-rc.1.24431.7       3. If one or more workloads are provided along with their versions (by joining them with the \'@\' character), it outputs workload versions that match the provided versions. Takes the --take option to specify how many to provide and --format to alter the format.          Example:            dotnet workload search version maui@9.0.0-rc.1.24453.9 ios@17.5.9270-net9-rc1            9.0.201     '
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 73
            printf '%s\t%s\n' '--format' 'Changes the format of outputted workload versions. Can take \'json\' or \'list\''
            printf '%s\n' '--take'
            printf '%s\n' '--include-previews'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 74
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 75
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--source' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '-s' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 76
            printf '%s\t%s\n' '--temp-dir' 'Specify a temporary directory for this command to download and extract NuGet packages (must be secure).'
            printf '%s\t%s\n' '--verbosity' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '-v' 'Set the MSBuild verbosity level. Allowed values are q[uiet], m[inimal], n[ormal], d[etailed], and diag[nostic].'
            printf '%s\t%s\n' '--configfile' 'The NuGet configuration file to use.'
            printf '%s\t%s\n' '--source' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '-s' 'The NuGet package source to use during the restore. To specify multiple sources, repeat the option.'
            printf '%s\t%s\n' '--include-previews' 'Allow prerelease workload manifests.'
            printf '%s\t%s\n' '--version' 'A workload version to display or one or more workloads and their versions joined by the \'@\' character.'
            printf '%s\t%s\n' '--disable-parallel' 'Prevent restoring multiple projects in parallel.'
            printf '%s\t%s\n' '--ignore-failed-sources' 'Treat package source failures as warnings.'
            printf '%s\t%s\n' '--no-http-cache' 'Do not cache packages and http requests.'
            printf '%s\t%s\n' '--interactive' 'Allows the command to stop and wait for user input or action (for example to complete authentication).'
            printf '%s\t%s\n' '--skip-manifest-update' 'Skip updating the workload manifests.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 77
            printf '%s\t%s\n' '--all' 'Causes clean to remove and uninstall all workload components from all SDK versions.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 78
            printf '%s\t%s\n' '--update-mode' 'Controls whether updates should look for workload sets or the latest version of each individual manifest.'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 79
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 80
            printf '%s\t%s\n' 'script' 'Generate the completion script for a supported shell'
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
        case 81
            printf '%s\t%s\n' '--help' 'Show command line help.'
            printf '%s\t%s\n' '-h' 'Show command line help.'
            printf '%s\t%s\n' 'bash' 'Generates a completion script for the Bourne Again SHell (bash).'
            printf '%s\t%s\n' 'fish' 'Generates a completion script for the Fish shell.'
            printf '%s\t%s\n' 'nushell' 'Generates a completion script for the NuShell shell.'
            printf '%s\t%s\n' 'pwsh' 'Generates a completion script for PowerShell Core. These scripts will not work on Windows PowerShell.'
            printf '%s\t%s\n' 'zsh' 'Generates a completion script for the Zsh shell.'
    end
end

complete -c dotnet -f -a '(_dotnet)'
