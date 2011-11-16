<%inherit file="_templates/docs.mako" />
___ofURLFileLoader___
$$code(lang=c++)
deque<  requests
$$/code



$$code(lang=c++)
queue<  responses
$$/code



$$code(lang=c++)
Poco::Condition condition
$$/code



$$code(lang=c++)
None ofURLFileLoader()
$$/code



$$code(lang=c++)
None get(string url)
$$/code



$$code(lang=c++)
int getAsync(string url, string name="")
$$/code



$$code(lang=c++)
None saveTo(string url, string path)
$$/code



$$code(lang=c++)
int saveAsync(string url, string path)
$$/code



$$code(lang=c++)
void remove(int id)
$$/code



$$code(lang=c++)
void clear()
$$/code



$$code(lang=c++)
void threadedFunction()
$$/code



$$code(lang=c++)
void start()
$$/code



$$code(lang=c++)
void stop()
$$/code



$$code(lang=c++)
void update(ofEventArgs &args)
$$/code



$$code(lang=c++)
None handleRequest(ofHttpRequest request)
$$/code



