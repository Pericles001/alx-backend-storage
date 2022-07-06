#!/usr/bin/env python3
"""
Implementing an expiring web cache
and a tracker
"""
from functools import wraps
from typing import Callable

import redis
import requests

redis = redis.Redis()


def wrap_request(fn: Callable) -> Callable:
    """
    Decorator wrapper
    :param fn:
    :return:
    """

    wraps(fn)

    def wrapper(url):
        """
        Wrapper for decorator
        :param url:
        :return:
        """
        redis.incr(f"count:{url}")
        cached_response = redis.get(f"cached:{url}")
        if cached_response:
            return cached_response.decode('utf-8')
        result = fn(url)
        redis.setex(f"cached:{url}", 10, result)
        return result

    return wrapper


@wrap_request
def get_page(url: str) -> str:
    """
    get page self descriptive
    :param url:
    :return:
    """
    response = requests.get(url)
    return response.text
