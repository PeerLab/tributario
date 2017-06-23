#|
@doc
  tributario public API
@end
|#

(defmodule tributario-app
  (behaviour application)

  ;; Application callbacks
  (export (start 2)
          (stop 1)))

;;; API

(defun start [_type _args]
  (tributario-sup:start_link))

(defun stop [_state]
  'ok)

;;; Internal functions
