Run

To crash
```
DD_TEST_RUNNER=1 DD_API_KEY={api-key} DD_APPLICATION_KEY=dd-sdk-swift-testing-sample DD_SITE=us1 SRCROOT=$PWD swift test
```

Without crash

```
DD_TEST_RUNNER=0 DD_API_KEY={api-key} DD_APPLICATION_KEY=dd-sdk-swift-testing-sample DD_SITE=us1 SRCROOT=$PWD swift test
```