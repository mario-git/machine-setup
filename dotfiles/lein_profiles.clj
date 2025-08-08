{:repl {:dependencies [[nrepl "1.2.0"]]
	:plugins [[cider/cider-nrepl "0.49.1"]
                  [mx.cider/enrich-classpath "1.19.3"]]}
 :user {:dependencies [[criterium "0.4.6"]
                       [dev.weavejester/hashp "0.4.0"]
                       [org.clojure/tools.trace "0.8.0"]]
        :injections [(require 'hashp.preload)]
        :plugins [[lein-ancient "1.0.0-RC3" :exclusions [org.clojure/clojure]]
                  [venantius/yagni "0.1.7"]]}}
