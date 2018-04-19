# Learn Blockchain

This is a very simple single module blockchain implementation in Erlang.
It does not have much verification, no consensus and networking, and only one
type of transactions - transfers of value between two accounts. Also no
negative balance checking.

The implementation is about 150 lines long.

# Running

*   `rebar3 shell` - will give you a welcoming Erlang shell
*   `b:open()` will open DETS files ready for use
    *   NOTE: any exception in shell will close DETS files, so you might need to 
        reopen them if DETS owner process crashes. DETS flushes every 250 msec.
*   `b:close()` - you get it
*   `b:add([{transaction, <<"a">>, <<"b">>, 10}])` (from Erlang code with records 
    this becomes `b:add([#transaction{from= <<"a">>, to= <<"b">>, amount=10}])`)
    writes a new block with list of transactions you supply. They CAN contradict 
    each other and create negative balances there is no verification for this.
*   `b:balances()` folds over the chain from the very beginning and counts the 
    amounts on accounts.
