# clib-utils-vcpkg-registry

VCPKG Registry for CommonLibSSE Utils

## How to use&colon;

Add the following to your vcpkg-configuration.json file:

```json
{
    "$schema": "https://raw.githubusercontent.com/microsoft/vcpkg-tool/main/docs/vcpkg-configuration.schema.json",
    "registries": [
        {
            "kind": "git",
            "repository": "https://github.com/voidei/clib-utils-vcpkg-repository",
            "baseline": "356f174cd0ac64877cd7d0cfc3488b1eed6678c2",
            "packages": [
                "clib-util"
            ]
        }
    ]
}
```

Note: Replace the `baseline` section with the latest commit hash.
