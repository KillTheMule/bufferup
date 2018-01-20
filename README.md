A minimal exmple that shows the when using LiveUpdate, the connection between neovim and the plugin is closed after the data has been sent (and received).

To reproduce the problem, run `problem.sh` after compiling the neovim sources included. After neovim has started, hit `Enter` to confirm and then run `:WompD`. The error will show that the channel of the plplugin has been closed. The neovim log will show something like this:

```
call_set_error:594: RPC: ch 3: stream write failed. RPC canceled; closing channel
```

To see something working, do the same with `works.sh`, you will see a notification `doing something`, which is what `:WompD` is supposed to be doing.

The only difference is the file loaded, and as far as I can see, the only thing that matters is that one file is larger than the other.
