<%inherit file="_templates/docs.mako" />
___ofHttpResponse___
$$code(lang=c++)
None request
$$/code



$$code(lang=c++)
None data
$$/code



$$code(lang=c++)
int status
$$/code



$$code(lang=c++)
string error
$$/code



$$code(lang=c++)
None ofHttpResponse()
$$/code



$$code(lang=c++)
None ofHttpResponse(ofHttpRequest request, const ofBuffer &data, int status, string error)
$$/code



$$code(lang=c++)
None ofHttpResponse(ofHttpRequest request, int status, string error)
$$/code



$$code(lang=c++)
None operator ofBuffer &()
$$/code



