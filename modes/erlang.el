; erlang
(setq erlang-root-dir "/opt/local/lib/erlang")
(setq exec-path (cons "/opt/local/lib/erlang/bin" exec-path))
(vendor 'erlang-start)
(vendor 'distel)
(distel-setup)
