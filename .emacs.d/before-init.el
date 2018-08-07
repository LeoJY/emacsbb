;; Proxies for packages
;;; See DRQS 54913427

(setq url-proxy-services
      '(("no_proxy" . "^\\(localhost\\|10.*\\)")
        ("http"     . "devproxyfarm.bloomberg.com:82")
        ("https"    . "devproxyfarm.bloomberg.com:82")))
