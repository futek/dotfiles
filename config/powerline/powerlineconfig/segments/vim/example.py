from __future__ import (unicode_literals, division, absolute_import, print_function)

try:
    import vim
except ImportError:
    vim = object()

from powerline.segments.vim import window_cached

@window_cached
def example(pl, message='Hello'):
    '''Display a message

    :param str message:
        The message to display.

    Highlight groups used: ``bleh.warning`` or ``warning``.
    '''
    return [{
        'contents': message,
        'highlight_group': ['bleh.warning', 'warning']
    }]
