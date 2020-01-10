let g:dbext_default_profile_mySQLServer = 'type=SQLSRV:user=sa:passwd=P@ssw0rd:srvname=localhost,14330:dbname=fundament_db'
let g:dbext_default_profile_psql = 'type=PGSQL:host=localhost:port=54330:dbname=postgres:user=postgres'

autocmd BufRead */pgtest/* DBSetOption profile=psql
autocmd BufRead */mstest/* DBSetOption profile=mySQLServer
