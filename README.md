Steps to reproduce https://github.com/dduugg/yard-sorbet/issues/201

```
rm -rf .yardoc doc/ # Clear all cache
bundle install
bundle exec yard server --reload
# Visit http://localhost:8808/docs/TestClass
# Edit the lib/test_class.rb file
```

## Expected result:

Editing any one of the two docstring and reloading the page loads the new signature.

Editing the sorbet signature update the method's return type.

## Actual result

Editing the docstring of the method with a Sorbet signature doesn't reload the description. Deleting the Sorbet
signature solved the issue (and putting back again works as expected).

Editing the Sorbet signature works as expected, but doesn't refresh the description either.
