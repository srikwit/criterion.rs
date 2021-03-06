set -ex

if [ "$DOCS" = "yes" ]; then
    cargo install mdbook --no-default-features
    cargo install mdbook-linkcheck
fi

if [ "$TRAVIS_OS_NAME" = "osx" ] && [ "$GNUPLOT" = "yes" ]; then
    brew unlink python@2 # because we're installing python3 and they both want to install stuff under /usr/local/Frameworks/Python.framework/
    brew install gnuplot
fi
