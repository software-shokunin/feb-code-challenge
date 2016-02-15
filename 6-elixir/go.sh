#!/bin/bash

if [ ! -x "$(which mix)" ] ; then
    echo "You don't seem to have Elixir installed"
    echo "Visit www.elixir-lang.org to get all the good stuff"
fi

case "$1" in
    test)
        mix test
        ;;
    build)
        mix escript.build
        ;;
    run)
        ./no_math ${@:2}
        ;;
    *)
        echo "Usage"
        echo "./go.sh test"
        echo "./go.sh build"
        echo "./go.sh run [numbers]"
        ;;
esac
