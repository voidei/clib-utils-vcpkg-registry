# CLib Util - VCPKG Registry

[VCPKG](https://vcpkg.io) Registry for [CLib Util](https://github.com/powerof3/CLibUtil), by [powerof3](https://github.com/powerof3).

## How to use&colon;

Add the following to your vcpkg-configuration.json file:

```json
{
    "$schema": "https://raw.githubusercontent.com/microsoft/vcpkg-tool/main/docs/vcpkg-configuration.schema.json",
    "registries": [
        {
            "kind": "git",
            "repository": "https://github.com/voidei/clib-utils-vcpkg-repository",
            "baseline": "d2966accb6985192033f51c3ebdc25678b45a1b2",
            "packages": [
                "clib-util"
            ]
        }
    ]
}
```

Note: Replace the `baseline` section with the latest commit hash.
