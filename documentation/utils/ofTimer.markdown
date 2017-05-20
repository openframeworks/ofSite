#class ofTimer


<!--
_visible: True_
_advanced: False_
_istemplated: False_
_extends: _
-->

##InlineDescription






##Description

ofTimer lets you run code periodically with the specified frequency. Use it on a class that extends ofThread.

~~~~{.cpp}

class Scheduler: public ofThread {
public:
    Scheduler() {
        timer.setPeriodicEvent(1000000000); // this is 1 second in nanoseconds
        startThread();
    }

private:
    ofTimer timer;
    void threadedFunction() {
        while(isThreadRunning()) {
             timer.waitNext();
             // Do your thing here. It will run once per second.
        }
    }
}

~~~~

The timer above will wake up at 1 second intervals no matter how long the rest of the task takes. If the last execution took more than 1 second, it'll wake up right away and execute the next. It uses the most accurate timing functions in every OS.



##Methods



###void calculateNextPeriod()

<!--
_syntax: calculateNextPeriod()_
_name: calculateNextPeriod_
_returns: void_
_returns_description: _
_parameters: _
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

### ofTimer()

<!--
_syntax: ofTimer()_
_name: ofTimer_
_returns: _
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void reset()

<!--
_syntax: reset()_
_name: reset_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void setPeriodicEvent(nanoseconds)

<!--
_syntax: setPeriodicEvent(nanoseconds)_
_name: setPeriodicEvent_
_returns: void_
_returns_description: _
_parameters: uint64_t nanoseconds_
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###void waitNext()

<!--
_syntax: waitNext()_
_name: waitNext_
_returns: void_
_returns_description: _
_parameters: _
_access: public_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_constant: False_
_static: False_
_visible: True_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

##Variables



###uint64_t nanosPerPeriod

<!--
_name: nanosPerPeriod_
_type: uint64_t_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

###timespec nextWakeTime

<!--
_name: nextWakeTime_
_type: timespec_
_access: private_
_version_started: 0.9.0_
_version_deprecated: _
_summary: _
_visible: True_
_constant: False_
_advanced: False_
-->

_inlined_description: _







_description: _







<!----------------------------------------------------------------------------->

