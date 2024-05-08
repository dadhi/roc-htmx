app "hello"
    packages { pf: "https://github.com/roc-lang/basic-cli/releases/download/0.10.0/vNe6s9hWzoTZtFmNkvEICPErI9ptji_ySjicO6CkucY.tar.br" }
    imports [pf.Stdout, pf.Task]
    provides [main] to pf

main =
    Stdout.line! "I'm a Roc application!"