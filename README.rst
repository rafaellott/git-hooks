GIT HOOKS
---------

Creates hook in global git.

Available hooks are:
 * prepare-commit-msg


How it works
============

The **prepare-commit-msg** is a hook that is executed before the commit be complete.

Currently, this hook will format the commit message to follow the standard in **.git-hook-config
.json**

Configuration format in **~/.git-hook-config.json**

.. code-block::

    {
        "<git_project_name>": {
            "format": "<format_message>"
        }
    }

Example:

.. code-block::

    {
        "git-hook": {
            "format": "[TEST-{}][TEST-{}] {}"
        }
    }


The *<format_message>* must be added the python formatting *{}*, example, *"[TEST-{}][TEST-{}] {}"*.
When the script runs, it will split your current message by the *;* and send each split text
to the *<format_message>*.

In example, if you *<format_message>* is "[TEST-{}] {}", and you commit "1234;This is a test",
the hook will split you commit message to [1234, 'This is a test'], then send it to you
*<format_message>* and it will format to "[TEST-1234] This is a test".


How to install
==============

via curl

.. code-block:: bash

    sh -c "$(curl -fsSL https://bitbucket.org/rafaellott_cit/git-hook/raw/master/tools/install.sh)"


via wget

.. code-block:: bash

    sh -c "$(wget -O- https://bitbucket.org/rafaellott_cit/git-hook/raw/master/tools/install.sh)"