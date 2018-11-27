# bashtester
A simple docker-compose setup to test bash code on all currently supported
versions.

Typically this would be used as a git submodule and will map it's parent directory as /code

Usage: ./run.sh {command_to_run}

Example: ./run.sh /code/run_app.sh --run_unit_tests"
