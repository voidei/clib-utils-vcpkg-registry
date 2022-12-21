# CLib Util - VCPKG Registry

[VCPKG](https://vcpkg.io) Registry for various packages used for, or assisting with, CommonLibSSE and SKSE plugin development.

## Currently included packages&colon;

* [AutoTOML](https://github.com/Ryan-rsm-McKenzie/AutoTOML) - [Ryan-rsm-McKenzie](https://github.com/Ryan-rsm-McKenzie)
* [CLib Util](https://github.com/powerof3/CLibUtil) - [powerof3](https://github.com/powerof3)
* [InfinityUI](https://github.com/alexsylex/InfinityUI) - [alexsylex](https://github.com/alexsylex)
* [MergeMapper](https://github.com/alandtse/MergeMapper) - [alandtse](https://github.com/alandtse)
* [SimpleINI Wrapper](https://github.com/powerof3/simpleini) - [powerof3](https://github.com/powerof3)

## How to use&colon;

### Add the following to your vcpkg-configuration.json file&colon;

```json
{
    "$schema": "https://raw.githubusercontent.com/microsoft/vcpkg-tool/main/docs/vcpkg-configuration.schema.json",
    "registries": [
        {
            "kind": "git",
            "repository": "https://github.com/voidei/clib-utils-vcpkg-repository",
            "baseline": "72d74a9896a17d0eaae2f273bddeadc2fafabed8",
            "packages": [
                "autotoml",
                "clib-util",
                "infinity-ui",
                "mergemapper",
                "simpleini-po3"
            ]
        }
    ]
}
```

#### Note: Replace the `baseline` section with the latest commit hash&period;

TODO: Fix up the below -

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
