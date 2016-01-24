def application(environ, start_response):
    template = ""
    try:
        start_response('200 OK', [('Content-Type', 'text/html')])

        html = index()

    except Exception as inst:
        exc_type, exc_value, exc_traceback = sys.exc_info()
        error = str(inst)           # __str__ allows args to printed directly
        error += "<br/>"
        error += repr(traceback.format_exception(exc_type, exc_value,
                                          exc_traceback))
        error.replace('\n',"<br/>")

        return "Unexpected error:<br/>", error
    return html

if __name__ == '__main__':
    from wsgiref.handlers import CGIHandler
    CGIHandler().run(application)
