{:repl {:dependencies [[nrepl "1.0.0"]]
        ;; :repl-options {:init (-main)}
	:plugins [[cider/cider-nrepl "0.28.5"]
                  [mx.cider/enrich-classpath "1.9.0"]]}
 :user {:dependencies [[org.clojure/tools.trace "0.7.11"]]
        :plugins [[lein-ancient "1.0.0-RC3" :exclusions [org.clojure/clojure]]]}}
