#!/usr/bin/env python3

import sys
import re

tag = "en-ZZ"
region = "ZZ"
language = "(en|fr)"
x = re.match(fr"^{language}-{region}$", tag)
print(x.group(0))

sys.exit()

def trim_domain(affixes):
    def decorator(func):
        def wrapper(*args, **kwargs):
            # Call the original function
            result = func(*args, **kwargs)
            # Check if the result is a string
            if isinstance(result, str):
                # Remove suffixes
                for suffix in affixes['suffix']:
                    if result.endswith(f'-{suffix}'):
                        result = result[: -len(f'-{suffix}')]
                        break
                    elif result.endswith(suffix):
                        result = result[: -len(suffix)]
                        break
                # Remove prefixes
                for prefix in affixes['prefix']:
                    if result.startswith(f'-{prefix}'):
                        result = result[len(f'-{prefix}'):]
                        break
                    elif result.startswith(prefix):
                        result = result[len(prefix):]
                        break
                return result
            else:
                return result
        return wrapper
    return decorator


@trim_domain({'suffix': ['New', 'Trend'], 'prefix': ['CGA']})
def get_domain(string):
    return string

dirty_domain = "SCI-New"

domain = get_domain(dirty_domain)
print(f"{domain=}")