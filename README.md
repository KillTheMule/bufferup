A minimal exmple that shows the when using LiveUpdate, the connection between neovim and the plugin is closed after the data has been sent (and received). For a bit more functionality, remove the comments in the python file, then one can run `:WompD` in nvim to see if the plugin is running still, and it will properly be shut down when quitting neovim.

To reproduce the problem, run `problem.sh` after compiling the neovim sources included. After neovim has started, hit `Enter` to confirm and then quit. The neovim log will show something like this:

```
call_set_error:594: RPC: ch 3: stream write failed. RPC canceled; closing channel
```

and there's be a file `nvimlog` containing a python backtrace stemming from an `IOERR(EOF)`.

To see something working, do the same with `works.sh`.

The only difference is the file loaded, and as far as I can see, the only thing that matters is that one file is larger than the other.
