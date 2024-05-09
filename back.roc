app [main] { pf: platform "https://github.com/roc-lang/basic-webserver/releases/download/0.4.0/iAiYpbs5zdVB75golcg_YMtgexN3e2fwhsYPLPCeGzk.tar.br" }

import pf.Stdout
import pf.Task exposing [Task]
import pf.Http # exposing [Request, Response]
import pf.Utc

# main : Request -> Task Response []
main = \req ->

    # Log request date, method and url
    date = Utc.now!
    dateStr = Utc.toIso8601Str date
    Stdout.line! "$(dateStr) $(Http.methodToStr req.method) $(req.url)"

    Task.ok { status: 200, headers: [], body: Str.toUtf8 "<b>Hello, world!</b>\n" }
