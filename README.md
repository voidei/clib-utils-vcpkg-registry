# CLib Util - VCPKG Registry

[VCPKG](https://vcpkg.io) Registry for [CLib Util](https://github.com/powerof3/CLibUtil), by [powerof3](https://github.com/powerof3).

## How to use&colon;

### Add the following to your vcpkg-configuration.json file&colon;

```json
{
    "$schema": "https://raw.githubusercontent.com/microsoft/vcpkg-tool/main/docs/vcpkg-configuration.schema.json",
    "registries": [
        {
            "kind": "git",
            "repository": "https://github.com/voidei/clib-utils-vcpkg-repository",
            "baseline": "2e26a700bc1eadd3628b876c2d394536a830330a",
            "packages": [
                "clib-util"
            ]
        }
    ]
}
```

#### Note: Replace the `baseline` section with the latest commit hash&period;

### Then add the following to your CMakeLists.txt&colon;

```cmake
find_path(CLIB_UTIL_INCLUDE_DIRS "ClibUtil/detail/SimpleIni.h")
target_include_directories(main PRIVATE ${CLIB_UTIL_INCLUDE_DIRS})
```

### After than, you can include any of the files by doing the following&colon;

```h
#include <ClibUtil/detail/SimpleIni.h>
#include <ClibUtil/detail/XoshiroCpp.hpp>
#include <ClibUtil/distribution.hpp>
#include <ClibUtil/numeric.hpp>
#include <ClibUtil/rng.hpp>
#include <ClibUtil/simpleINI.hpp>
#include <ClibUtil/string.hpp>
#include <ClibUtil/utils.hpp>
```
