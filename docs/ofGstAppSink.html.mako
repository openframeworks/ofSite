<%inherit file="_templates/docs.mako" />
___ofGstAppSink___
$$code(lang=c++)
GstFlowReturn on_preroll(GstBuffer *buffer)
$$/code



$$code(lang=c++)
GstFlowReturn on_buffer(GstBuffer *buffer)
$$/code



$$code(lang=c++)
void on_eos()
$$/code



$$code(lang=c++)
bool on_message(GstMessage *msg)
$$/code



$$code(lang=c++)
void on_stream_prepared()
$$/code



