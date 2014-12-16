// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.media.MediaScannerConnection;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import java.lang.reflect.Method;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.amazon.device.ads:
//            AdSDKBridge, OrientationProperties, ExpandProperties, CurrentPosition, 
//            AdControlAccessor, Log, AdUtils, SizeProperty, 
//            ResizeProperties, CalendarEventParameters, StringUtils, WebRequest, 
//            ResponseReader, ThreadUtils, AndroidTargetUtils, PermissionChecker, 
//            RelativePosition, AdState, MRAIDAdSDKEventListener, WebUtils, 
//            ForceOrientation, DisplayUtils, AdActivity, VideoActionHandler, 
//            SDKEventListener, PreloadCallback, ImageUtils, AdEvent

class MRAIDAdSDKBridge
    implements AdSDKBridge
{

    private static final int CLOSE_BUTTON_SIZE = 50;
    private static final String CONTENT_DESCRIPTION_AD_CONTAINER_VIEW = "adContainerView";
    private static final String CONTENT_DESCRIPTION_DIMMING_VIEW = "dimmingView";
    private static final String CONTENT_DESCRIPTION_EXPANSION_VIEW = "expansionView";
    private static final String CONTENT_DESCRIPTION_RESIZED_VIEW = "resizedView";
    private static final String ERROR_EVENT_FORMAT = "mraidBridge.error('%s', '%s');";
    private static final String JAVASCRIPT = (new StringBuilder()).append("(function (window, console) {\n    var is_array = function (obj) {\n        return Object.prototype.toString.call(obj) === '[object Array]';\n    },\n    forEach = function (array, fn) {\n        var i;\n        for (i = 0; i < array.length; i++) {\n            if (i in array) {\n                fn.call(null, array[i], i);\n            }\n        }\n    },\n    events = {\n            error: 'error',\n            ready: 'ready',\n            sizeChange: 'sizeChange',\n            stateChange: 'stateChange',\n            viewableChange: 'viewableChange'\n    },\n    states = [\"loading\",\"default\",\"expanded\",\"resized\",\"hidden\"],\n    placementTypes = [\"inline\", \"interstitial\"],\n    listeners = [],\n    version = '2.0',\n    currentState = \"loading\",\n    supportedFeatures = null,\n    orientationProperties = {\"allowOrientationChange\":true,\"forceOrientation\":\"none\"},\n    // Error Event fires listeners\n    invokeListeners = function(event, args) {\n        var eventListeners = listeners[event] || [];\n        // fire all the listeners\n        forEach(eventListeners, function(listener){\n            try {\n                listener.apply(null, args);\n            }catch(e){\n                debug(\"Error executing \" + event + \" listener\");\n                debug(e);\n            }\n        });\n    }\n    \n    debug = function(msg) {\n        console.log(\"MRAID log: \" + msg);\n    },\n    readyEvent = function() {\n        debug(\"MRAID ready\");\n        invokeListeners(\"ready\");\n    },\n    errorEvent = function(message, action) {\n        debug(\"error: \" + message + \" action: \" + action);\n        var args = [message, action];\n        invokeListeners(\"error\", args);\n    },\n    stateChangeEvent = function(state) {\n        debug(\"stateChange: \" + state);\n        var args = [state];\n        currentState = state;\n        invokeListeners(\"stateChange\", args);\n    },\n    viewableChangeEvent = function(viewable) {\n        debug(\"viewableChange: \" + viewable);\n        var args = [viewable];\n        invokeListeners(\"viewableChange\", args);\n    }, \n    sizeChangeEvent = function(width, height) {\n        debug(\"sizeChange: \" + width + \"x\" + height);\n        var args = [width, height];\n        invokeListeners(\"sizeChange\", args);\n    },\n    window.mraidBridge = {\n            error : errorEvent,\n            ready : readyEvent,\n            stateChange : stateChangeEvent,\n            sizeChange : sizeChangeEvent,\n            viewableChange : viewableChangeEvent\n    },\n    // Define the mraid object\n    window.mraid = {\n            // Command Flow\n            addEventListener : function(event, listener){\n                var eventListeners = listeners[event] || [],\n                alreadyRegistered = false;\n                \n                //verify the event is one that will actually occur\n                if (!events.hasOwnProperty(event)){\n                    return;\n                }\n                \n                //register first set of listeners for this event\n                if (!is_array(listeners[event])) {\n                    listeners[event] = eventListeners;\n                }\n                \n                forEach(eventListeners, function(l){ \n                    // Listener already registered, so no need to add it.\n                        if (listener === l){\n                            alreadyRegistered = true;\n                        }\n                    }\n                );\n                if (!alreadyRegistered){\n                    listeners[event].push(listener);\n                }\n            },\n            removeEventListener : function(event, listener){\n                if (listeners.hasOwnProperty(event)) {\n                    var eventListeners = listeners[event];\n                    if (eventListeners) {\n                        var idx = eventListeners.indexOf(listener);\n                        if (idx !== -1) {\n                            eventListeners.splice(idx, 1);\n                        }\n                    }\n                }\n            },\n            useCustomClose: function(bool){\n                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF)).append("(bool);\n").append("            },\n").append("            // Support\n").append("            supports: function(feature){\n").append("                if (!supportedFeatures)\n").append("                {\n").append("                    supportedFeatures = JSON.parse(mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF)).append("());\n").append("                }\n").append("                return supportedFeatures[feature];\n").append("            },\n").append("            // Properties\n").append("            getVersion: function(){\n").append("                return version;\n").append("            },\n").append("            getState: function(){\n").append("                return currentState;\n").append("            },\n").append("            getPlacementType: function(){\n").append("                return mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF)).append("();\n").append("            },\n").append("            isViewable: function(){\n").append("                // TODO - should we ask the OS if the widget is visible.\n").append("                return currentState !== \"hidden\" && currentState !== \"loading\";\n").append("            },\n").append("            getExpandProperties: function(){\n").append("                return JSON.parse(mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF)).append("());;\n").append("            },\n").append("            setExpandProperties: function(properties){\n").append("                var currentProperties = mraid.getExpandProperties(),\n").append("                //properties aren't all required, map to existing value if not set.\n").append("                width = properties.hasOwnProperty('width') ? properties.width : currentProperties.width,\n").append("                height = properties.hasOwnProperty('height') ? properties.height : currentProperties.height,\n").append("                useClose = properties.hasOwnProperty('useCustomClose') ? properties.useCustomClose : currentProperties.useCustomClose;\n").append("                //Backwards compatibility with MRAID 1.0 creatives\n").append("                if (!!properties.lockOrientation){\n").append("                    mraid.setOrientationProperties({\"allowOrientationChange\":false});\n").append("                }\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF)).append("(\n").append("                        width, \n").append("                        height,\n").append("                        useClose);\n").append("            },\n").append("            getOrientationProperties: function(){\n").append("                return orientationProperties;\n").append("            },\n").append("            setOrientationProperties: function(properties){\n").append("                if (properties.hasOwnProperty(\"allowOrientationChange\")) {\n").append("                    orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n").append("                }\n").append("                if (properties.hasOwnProperty(\"forceOrientation\")) {\n").append("                    orientationProperties.forceOrientation = properties.forceOrientation;").append("                }\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF)).append("(\n").append("                        orientationProperties.allowOrientationChange, \n").append("                        orientationProperties.forceOrientation);\n").append("            },\n").append("            getResizeProperties: function(){\n").append("                return JSON.parse(mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF)).append("());\n").append("            },\n").append("            setResizeProperties: function(properties){\n").append("                if (!properties.customClosePosition){\n").append("                   properties.customClosePosition = null;\n").append("                }\n").append("                if (!properties.hasOwnProperty('allowOffscreen')){\n").append("                   properties.allowOffscreen = true;\n").append("                }\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF)).append("(\n").append("                        properties.width,\n").append("                        properties.height,\n").append("                        properties.offsetX,\n").append("                        properties.offsetY,\n").append("                        properties.customClosePosition,\n").append("                        properties.allowOffscreen\n").append("                        );\n").append("            },\n").append("            getCurrentPosition: function(){\n").append("                return JSON.parse(mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF)).append("());\n").append("            },\n").append("            getMaxSize: function(){\n").append("                return JSON.parse(mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF)).append("());\n").append("            },\n").append("            getDefaultPosition: function(){\n").append("                return JSON.parse(mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF)).append("());\n").append("            },\n").append("            getScreenSize: function(){\n").append("                return JSON.parse(mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF)).append("());\n").append("            },\n").append("            // Operations\n").append("            open: function(url) {\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF)).append("(url);\n").append("            },\n").append("            close: function() {\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF)).append("();\n").append("            },\n").append("            expand: function(url) {\n").append("                if (url !== undefined) {\n").append("                    mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF)).append("(url);\n").append("                } else {\n").append("                    mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF)).append("(\"\");\n").append("                }\n").append("            },\n").append("            resize: function() {\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF)).append("();\n").append("            },\n").append("            createCalendarEvent: function(eventObject) {\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF)).append("(\n").append("                        eventObject.description || null,\n").append("                        eventObject.location || null,\n").append("                        eventObject.summary || null,\n").append("                        eventObject.start || null,\n").append("                        eventObject.end || null\n").append("                        );\n").append("            },\n").append("            playVideo: function(url){\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF)).append("(url);\n").append("            },\n").append("            storePicture: function(url){\n").append("                mraidObject").append(getJsifName(com/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF)).append("(url);\n").append("            }\n").append("    };\n").append("})(window, console);\n").append("").toString();
    private static final String LOGTAG = com/amazon/device/ads/MRAIDAdSDKBridge.getSimpleName();
    private static final String MRAID_BRIDGE_NAME = "mraidObject";
    private static final String PLACEMENT_TYPE_INLINE = "inline";
    private static final String PLACEMENT_TYPE_INTERSTITIAL = "interstitial";
    private static final HashMap jsifClasses = new HashMap();
    private ViewGroup adContainerView;
    private AdControlAccessor adControlAccessor;
    private final CurrentPosition defaultPosition = new CurrentPosition();
    private final ExpandProperties expandProperties = new ExpandProperties();
    private boolean expandedWithUrl;
    private ViewGroup expansionView;
    private boolean isResized;
    private final OrientationProperties orientationProperties = new OrientationProperties();
    private boolean proguardRemoveMethods;
    private ResizeProperties resizeProperties;
    private ViewGroup resizedView;
    private FrameLayout rootView;
    private SDKEventListener sdkEventListener;
    private boolean shouldUseCustomClose;

    MRAIDAdSDKBridge(AdControlAccessor adcontrolaccessor)
    {
        shouldUseCustomClose = false;
        isResized = false;
        proguardRemoveMethods = false;
        expandedWithUrl = true;
        adControlAccessor = adcontrolaccessor;
    }

    private SizeProperty computeExpandedSizeInPixels(ExpandProperties expandproperties, String s)
    {
        AdControlAccessor.SizeDimensions sizedimensions = adControlAccessor.getMaxSize(false);
        int i;
        int j;
        int k;
        int l;
        SizeProperty sizeproperty;
        if (s != null)
        {
            i = sizedimensions.getWidth();
        } else
        {
            i = expandproperties.getWidth();
        }
        if (s != null)
        {
            j = sizedimensions.getHeight();
        } else
        {
            j = expandproperties.getHeight();
        }
        Log.d(LOGTAG, (new StringBuilder()).append("Expanding Ad to ").append(i).append("x").append(j).toString());
        k = AdUtils.deviceIndependentPixelToPixel(i);
        l = AdUtils.deviceIndependentPixelToPixel(j);
        sizeproperty = new SizeProperty();
        sizeproperty.setHeight(l);
        sizeproperty.setWidth(k);
        return sizeproperty;
    }

    private SizeProperty computeResizeSizeInPixels(ResizeProperties resizeproperties)
    {
        int i = resizeproperties.getWidth();
        int j = resizeproperties.getHeight();
        int k = AdUtils.deviceIndependentPixelToPixel(i);
        int l = AdUtils.deviceIndependentPixelToPixel(j);
        SizeProperty sizeproperty = new SizeProperty();
        sizeproperty.setHeight(l);
        sizeproperty.setWidth(k);
        return sizeproperty;
    }

    private void createCalendarIntent(CalendarEventParameters calendareventparameters)
    {
        Intent intent = (new Intent("android.intent.action.INSERT")).setType("vnd.android.cursor.item/event");
        intent.putExtra("title", calendareventparameters.getDescription());
        if (!StringUtils.isNullOrEmpty(calendareventparameters.getLocation()))
        {
            intent.putExtra("eventLocation", calendareventparameters.getLocation());
        }
        if (!StringUtils.isNullOrEmpty(calendareventparameters.getSummary()))
        {
            intent.putExtra("description", calendareventparameters.getSummary());
        }
        intent.putExtra("beginTime", calendareventparameters.getStart().getTime());
        if (calendareventparameters.getEnd() != null)
        {
            intent.putExtra("endTime", calendareventparameters.getEnd().getTime());
        }
        getContext().startActivity(intent);
    }

    private void createExpandedView()
    {
        rootView = (FrameLayout)((Activity)getContext()).findViewById(0x1020002);
        expansionView = new RelativeLayout(getContext());
        expansionView.setContentDescription("expansionView");
        View view = new View(getContext());
        view.setBackgroundColor(0);
        view.setContentDescription("dimmingView");
        view.setOnTouchListener(new android.view.View.OnTouchListener() {

            final MRAIDAdSDKBridge this$0;

            public boolean onTouch(View view1, MotionEvent motionevent)
            {
                return true;
            }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                super();
            }
        });
        expansionView.addView(view, new android.widget.RelativeLayout.LayoutParams(-1, -1));
        adContainerView = new FrameLayout(getContext());
        adContainerView.setContentDescription("adContainerView");
    }

    private void createResizedView()
    {
        if (resizedView == null)
        {
            if (rootView == null)
            {
                rootView = (FrameLayout)((Activity)getContext()).findViewById(0x1020002);
            }
            resizedView = new RelativeLayout(getContext());
            resizedView.setContentDescription("resizedView");
        }
    }

    private void fetchPicture(String s)
    {
        WebRequest webrequest = WebRequest.createNewWebRequest();
        webrequest.enableLog(true);
        webrequest.setUrlString(s);
        WebRequest.WebResponse webresponse;
        try
        {
            webresponse = webrequest.makeCall();
        }
        catch (WebRequest.WebRequestException webrequestexception)
        {
            fireErrorEvent("Server could not be contacted to download picture.", "storePicture");
            return;
        }
        if (webresponse == null)
        {
            fireErrorEvent("Server could not be contacted to download picture.", "storePicture");
            return;
        }
        final Bitmap bitmap = webresponse.getResponseReader().readAsBitmap();
        if (bitmap == null)
        {
            fireErrorEvent("Picture could not be retrieved from server.", "storePicture");
            return;
        } else
        {
            ThreadUtils.scheduleOnMainThread(new Runnable() {

                final MRAIDAdSDKBridge this$0;
                final Bitmap val$bitmap;

                public void run()
                {
                    savePicture(bitmap);
                }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                bitmap = bitmap1;
                super();
            }
            });
            return;
        }
    }

    private void fireErrorEvent(String s, String s1)
    {
        adControlAccessor.injectJavascript(String.format(Locale.US, "mraidBridge.error('%s', '%s');", new Object[] {
            s, s1
        }));
    }

    private Context getContext()
    {
        return adControlAccessor.getContext();
    }

    private static HashMap getJsifClasses()
    {
        if (jsifClasses.isEmpty())
        {
            synchronized (jsifClasses)
            {
                if (jsifClasses.isEmpty())
                {
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF, "Close");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF, "CreateCalendarEvent");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF, "Expand");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF, "GetCurrentPosition");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF, "GetDefaultPosition");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF, "GetExpandProperties");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF, "GetMaxSize");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetOrientationPropertiesJSIF, "GetOrientationProperties");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF, "GetPlacementType");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF, "GetResizeProperties");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF, "GetScreenSize");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF, "Open");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF, "PlayVideo");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF, "Resize");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF, "SetExpandProperties");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF, "SetOrientationProperties");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF, "SetResizeProperties");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF, "StorePicture");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF, "Supports");
                    jsifClasses.put(com/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF, "UseCustomClose");
                }
            }
        }
        return jsifClasses;
        exception;
        hashmap;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static String getJsifName(Class class1)
    {
        String s = (String)getJsifClasses().get(class1);
        Method amethod[] = class1.getDeclaredMethods();
        if (amethod.length != 1)
        {
            return null;
        } else
        {
            return (new StringBuilder()).append(s).append(".").append(amethod[0].getName()).toString();
        }
    }

    private String getMaxSize(boolean flag)
    {
        AdControlAccessor.SizeDimensions sizedimensions = adControlAccessor.getMaxSize(flag);
        SizeProperty sizeproperty = new SizeProperty();
        sizeproperty.setWidth(sizedimensions.getWidth());
        sizeproperty.setHeight(sizedimensions.getHeight());
        return sizeproperty.toString();
    }

    private JSONObject getSupportedFeaturesJSON()
    {
        JSONObject jsonobject = new JSONObject();
        try
        {
            jsonobject.put("sms", getContext().getPackageManager().hasSystemFeature("android.hardware.telephony"));
            jsonobject.put("tel", getContext().getPackageManager().hasSystemFeature("android.hardware.telephony"));
            jsonobject.put("calendar", AndroidTargetUtils.isAtLeastAndroidAPI(14));
            jsonobject.put("storePicture", PermissionChecker.hasWriteExternalStoragePermission(getContext()));
            jsonobject.put("inlineVideo", AndroidTargetUtils.isAtLeastAndroidAPI(11));
        }
        catch (JSONException jsonexception)
        {
            return jsonobject;
        }
        return jsonobject;
    }

    private boolean isValidClosePosition(RelativePosition relativeposition, int i, int j, SizeProperty sizeproperty, int k, int l)
    {
        int i1 = AdUtils.deviceIndependentPixelToPixel(50);
        class _cls10
        {

            static final int $SwitchMap$com$amazon$device$ads$ForceOrientation[];
            static final int $SwitchMap$com$amazon$device$ads$RelativePosition[];

            static 
            {
                $SwitchMap$com$amazon$device$ads$ForceOrientation = new int[ForceOrientation.values().length];
                try
                {
                    $SwitchMap$com$amazon$device$ads$ForceOrientation[ForceOrientation.PORTRAIT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$ForceOrientation[ForceOrientation.LANDSCAPE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$ForceOrientation[ForceOrientation.NONE.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                $SwitchMap$com$amazon$device$ads$RelativePosition = new int[RelativePosition.values().length];
                try
                {
                    $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.TOP_LEFT.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.TOP_RIGHT.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.TOP_CENTER.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.BOTTOM_LEFT.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.BOTTOM_RIGHT.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.BOTTOM_CENTER.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$RelativePosition[RelativePosition.CENTER.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror9)
                {
                    return;
                }
            }
        }

        _cls10..SwitchMap.com.amazon.device.ads.RelativePosition[relativeposition.ordinal()];
        JVM INSTR tableswitch 1 7: default 56
    //                   1 90
    //                   2 105
    //                   3 129
    //                   4 159
    //                   5 183
    //                   6 216
    //                   7 255;
           goto _L1 _L2 _L3 _L4 _L5 _L6 _L7 _L8
_L8:
        break MISSING_BLOCK_LABEL_255;
_L1:
        int j1;
        int k1;
        k1 = 0;
        j = 0;
        j1 = 0;
        i = 0;
_L9:
        return i >= 0 && j >= 0 && j1 <= l && k1 <= k;
_L2:
        j1 = i + i1;
        k1 = j + i1;
          goto _L9
_L3:
        k1 = j + sizeproperty.getWidth();
        j1 = i + i1;
        j = k1 - i1;
          goto _L9
_L4:
        j = (j + sizeproperty.getWidth() / 2) - i1 / 2;
        j1 = i + i1;
        k1 = j + i1;
          goto _L9
_L5:
        j1 = i + sizeproperty.getHeight();
        i = j1 - i1;
        k1 = j + i1;
          goto _L9
_L6:
        j1 = i + sizeproperty.getHeight();
        k1 = j + sizeproperty.getWidth();
        i = j1 - i1;
        j = k1 - i1;
          goto _L9
_L7:
        j1 = i + sizeproperty.getHeight();
        j = (j + sizeproperty.getWidth() / 2) - i1 / 2;
        i = j1 - i1;
        k1 = j + i1;
          goto _L9
        i = (i + sizeproperty.getHeight() / 2) - i1 / 2;
        j = (j + sizeproperty.getWidth() / 2) - i1 / 2;
        j1 = i + i1;
        k1 = j + i1;
          goto _L9
    }

    private boolean isVisible()
    {
        return adControlAccessor.getAdState().equals(AdState.SHOWING) || adControlAccessor.getAdState().equals(AdState.EXPANDED);
    }

    private void lookupExpansionView()
    {
        if (expansionView == null)
        {
            ViewGroup viewgroup = adControlAccessor.getViewParentIfExpanded();
            if (viewgroup != null && "adContainerView".equals(viewgroup.getContentDescription()))
            {
                ViewGroup viewgroup1 = (ViewGroup)viewgroup.getParent();
                if (viewgroup1 != null && "expansionView".equals(viewgroup1.getContentDescription()))
                {
                    expansionView = viewgroup1;
                }
            }
        }
    }

    private void savePicture(final Bitmap bitmap)
    {
        android.app.AlertDialog.Builder builder = createAlertDialogBuilder(getContext());
        builder.setTitle("Would you like to save the image to your gallery?");
        builder.setPositiveButton("Yes", new android.content.DialogInterface.OnClickListener() {

            final MRAIDAdSDKBridge this$0;
            final Bitmap val$bitmap;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                String s = ImageUtils.insertImageInMediaStore(getContext(), bitmap, "AdImage", "Image created by rich media ad.");
                if (StringUtils.isNullOrEmpty(s))
                {
                    fireErrorEvent("Picture could not be stored to device.", "storePicture");
                    return;
                } else
                {
                    MediaScannerConnection.scanFile(getContext(), new String[] {
                        s
                    }, null, null);
                    return;
                }
            }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                bitmap = bitmap1;
                super();
            }
        });
        builder.setNegativeButton("No", new android.content.DialogInterface.OnClickListener() {

            final MRAIDAdSDKBridge this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
            }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                super();
            }
        });
        builder.show();
    }

    private boolean validUrl(String s)
    {
        try
        {
            new URI(s);
        }
        catch (URISyntaxException urisyntaxexception)
        {
            return false;
        }
        catch (NullPointerException nullpointerexception)
        {
            return false;
        }
        return true;
    }

    public void close()
    {
        if (!adControlAccessor.closeAd())
        {
            fireErrorEvent("Unable to close ad in its current state.", "close");
        }
    }

    void collapseExpandedAd(final AdControlAccessor adControlAccessor)
    {
        Log.d(LOGTAG, (new StringBuilder()).append("Collapsing expanded ad ").append(this).toString());
        ThreadUtils.executeOnMainThread(new Runnable() {

            final MRAIDAdSDKBridge this$0;
            final AdControlAccessor val$adControlAccessor;

            public void run()
            {
                rootView = (FrameLayout)((Activity)getContext()).findViewById(0x1020002);
                isResized = false;
                android.widget.FrameLayout.LayoutParams layoutparams;
                if (expandedWithUrl)
                {
                    Log.d(MRAIDAdSDKBridge.LOGTAG, "Expanded With URL");
                    adControlAccessor.popView();
                } else
                {
                    Log.d(MRAIDAdSDKBridge.LOGTAG, "Not Expanded with URL");
                }
                lookupExpansionView();
                layoutparams = new android.widget.FrameLayout.LayoutParams(-1, -1, 17);
                adControlAccessor.moveViewBackToParent(layoutparams);
                adControlAccessor.removeCloseButton();
                if (expansionView != null)
                {
                    rootView.removeView(expansionView);
                }
                if (resizedView != null)
                {
                    rootView.removeView(resizedView);
                }
                rootView.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final _cls6 this$1;
                    private boolean triggered;

                    public void onGlobalLayout()
                    {
                        if (!triggered)
                        {
                            triggered = true;
                            adControlAccessor.fireAdEvent(new AdEvent(AdEvent.AdEventType.CLOSED));
                            adControlAccessor.injectJavascript("mraidBridge.stateChange('default');");
                            reportSizeChangeEvent();
                        }
                    }

            
            {
                this$1 = _cls6.this;
                super();
                triggered = false;
            }
                });
            }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                adControlAccessor = adcontrolaccessor;
                super();
            }
        });
    }

    android.app.AlertDialog.Builder createAlertDialogBuilder(Context context)
    {
        return new android.app.AlertDialog.Builder(context);
    }

    public void createCalendarEvent(String s, String s1, String s2, String s3, String s4)
    {
        if (!AndroidTargetUtils.isAtLeastAndroidAPI(14))
        {
            Log.d(LOGTAG, "API version does not support calendar operations.");
            fireErrorEvent("API version does not support calendar operations.", "createCalendarEvent");
            return;
        }
        CalendarEventParameters calendareventparameters;
        try
        {
            calendareventparameters = new CalendarEventParameters(s, s1, s2, s3, s4);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.d(LOGTAG, illegalargumentexception.getMessage());
            fireErrorEvent(illegalargumentexception.getMessage(), "createCalendarEvent");
            return;
        }
        createCalendarIntent(calendareventparameters);
    }

    public void expand(String s)
    {
        if (adControlAccessor.isInterstitial())
        {
            fireErrorEvent("Unable to expand an interstitial ad placement", "expand");
            return;
        }
        if (adControlAccessor.getAdState().equals(AdState.EXPANDED) && !isResized)
        {
            fireErrorEvent("Unable to expand while expanded.", "expand");
            return;
        }
        if (!isVisible())
        {
            fireErrorEvent("Unable to expand ad while it is not visible.", "expand");
            return;
        }
        if (this.expandProperties.getWidth() < 50 || this.expandProperties.getHeight() < 50)
        {
            fireErrorEvent("Expand size is too small, must leave room for close.", "expand");
            return;
        }
        final ExpandProperties expandProperties = this.expandProperties;
        if (!StringUtils.isNullOrWhiteSpace(s))
        {
            if (validUrl(s))
            {
                adControlAccessor.preloadUrl(s, new PreloadCallback() {

                    final MRAIDAdSDKBridge this$0;
                    final ExpandProperties val$expandProperties;

                    public void onPreloadComplete(String s1)
                    {
                        adControlAccessor.injectJavascriptPreload("mraidBridge.stateChange('expanded');");
                        adControlAccessor.injectJavascriptPreload("mraidBridge.ready();");
                        expandAd(expandProperties, s1);
                    }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                expandProperties = expandproperties;
                super();
            }
                });
                return;
            } else
            {
                fireErrorEvent("Unable to expand with invalid URL.", "expand");
                return;
            }
        } else
        {
            expandAd(expandProperties, null);
            return;
        }
    }

    void expandAd(final ExpandProperties expandProperties, final String url)
    {
        ThreadUtils.executeOnMainThread(new Runnable() {

            final MRAIDAdSDKBridge this$0;
            final ExpandProperties val$expandProperties;
            final String val$url;

            public void run()
            {
                boolean flag = true;
                isResized = false;
                SizeProperty sizeproperty;
                android.widget.RelativeLayout.LayoutParams layoutparams;
                AdControlAccessor adcontrolaccessor;
                if (url != null)
                {
                    adControlAccessor.stashView();
                    expandedWithUrl = flag;
                } else
                {
                    expandedWithUrl = false;
                }
                sizeproperty = computeExpandedSizeInPixels(expandProperties, url);
                createExpandedView();
                adControlAccessor.moveViewToViewGroup(adContainerView, new android.widget.RelativeLayout.LayoutParams(-1, -1), flag);
                layoutparams = new android.widget.RelativeLayout.LayoutParams(sizeproperty.getWidth(), sizeproperty.getHeight());
                layoutparams.addRule(13);
                expansionView.addView(adContainerView, layoutparams);
                rootView.addView(expansionView, new android.widget.RelativeLayout.LayoutParams(-1, -1));
                adcontrolaccessor = adControlAccessor;
                if (expandProperties.getUseCustomClose().booleanValue())
                {
                    flag = false;
                }
                adcontrolaccessor.enableCloseButton(flag);
                rootView.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final _cls8 this$1;
                    private boolean triggered;

                    public void onGlobalLayout()
                    {
                        if (!triggered)
                        {
                            triggered = true;
                            Log.d(MRAIDAdSDKBridge.LOGTAG, "Expand ViewTreeObserver fired");
                            adControlAccessor.fireAdEvent(new AdEvent(AdEvent.AdEventType.EXPANDED));
                            adControlAccessor.injectJavascript("mraidBridge.stateChange('expanded');");
                            reportSizeChangeEvent();
                            orientationPropertyChange();
                        }
                    }

            
            {
                this$1 = _cls8.this;
                super();
                triggered = false;
            }
                });
            }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                url = s;
                expandProperties = expandproperties;
                super();
            }
        });
    }

    public String getCurrentPosition()
    {
        AdControlAccessor.Coordinates coordinates = adControlAccessor.getCurrentPosition();
        CurrentPosition currentposition = new CurrentPosition();
        currentposition.setX(coordinates.getX());
        currentposition.setY(coordinates.getY());
        currentposition.setWidth(coordinates.getWidth());
        currentposition.setHeight(coordinates.getHeight());
        return currentposition.toString();
    }

    public String getDefaultPosition()
    {
        return defaultPosition.toString();
    }

    public String getExpandProperties()
    {
        return expandProperties.toString();
    }

    public String getJavascript()
    {
        return JAVASCRIPT;
    }

    public Map getJavascriptInterfaces()
    {
        HashMap hashmap = new HashMap();
        hashmap.put("Close", new CloseJSIF());
        hashmap.put("CreateCalendarEvent", new CreateCalendarEventJSIF());
        hashmap.put("Expand", new ExpandJSIF());
        hashmap.put("GetCurrentPosition", new GetCurrentPositionJSIF());
        hashmap.put("GetDefaultPosition", new GetDefaultPositionJSIF());
        hashmap.put("GetExpandProperties", new GetExpandPropertiesJSIF());
        hashmap.put("GetMaxSize", new GetMaxSizeJSIF());
        hashmap.put("GetOrientationProperties", new GetOrientationPropertiesJSIF());
        hashmap.put("GetPlacementType", new GetPlacementTypeJSIF());
        hashmap.put("GetResizeProperties", new GetResizePropertiesJSIF());
        hashmap.put("GetScreenSize", new GetScreenSizeJSIF());
        hashmap.put("Open", new OpenJSIF());
        hashmap.put("PlayVideo", new PlayVideoJSIF());
        hashmap.put("Resize", new ResizeJSIF());
        hashmap.put("SetExpandProperties", new SetExpandPropertiesJSIF());
        hashmap.put("SetOrientationProperties", new SetOrientationPropertiesJSIF());
        hashmap.put("SetResizeProperties", new SetResizePropertiesJSIF());
        hashmap.put("StorePicture", new StorePictureJSIF());
        hashmap.put("Supports", new SupportsJSIF());
        hashmap.put("UseCustomClose", new UseCustomCloseJSIF());
        if (proguardRemoveMethods)
        {
            (new CloseJSIF()).execute();
            (new CreateCalendarEventJSIF()).execute(null, null, null, null, null);
            (new ExpandJSIF()).execute(null);
            (new GetCurrentPositionJSIF()).execute();
            (new GetDefaultPositionJSIF()).execute();
            (new GetExpandPropertiesJSIF()).execute();
            (new GetMaxSizeJSIF()).execute();
            (new GetOrientationPropertiesJSIF()).execute();
            (new GetPlacementTypeJSIF()).execute();
            (new GetResizePropertiesJSIF()).execute();
            (new GetScreenSizeJSIF()).execute();
            (new OpenJSIF()).execute(null);
            (new PlayVideoJSIF()).execute(null);
            (new ResizeJSIF()).execute();
            (new SetExpandPropertiesJSIF()).execute(0, 0, false);
            (new SetOrientationPropertiesJSIF()).execute(false, null);
            (new SetResizePropertiesJSIF()).execute(0, 0, 0, 0, null, false);
            (new StorePictureJSIF()).execute(null);
            (new SupportsJSIF()).execute();
            (new UseCustomCloseJSIF()).execute(false);
        }
        return hashmap;
    }

    public String getMaxSize()
    {
        return getMaxSize(false);
    }

    public String getName()
    {
        return "mraidObject";
    }

    public String getOrientationProperties()
    {
        return orientationProperties.toString();
    }

    public String getPlacementType()
    {
        if (adControlAccessor.isInterstitial())
        {
            return "interstitial";
        } else
        {
            return "inline";
        }
    }

    public String getResizeProperties()
    {
        return resizeProperties.toString();
    }

    public SDKEventListener getSDKEventListener()
    {
        if (sdkEventListener == null)
        {
            sdkEventListener = new MRAIDAdSDKEventListener(this);
        }
        return sdkEventListener;
    }

    public String getScreenSize()
    {
        return getMaxSize(true);
    }

    public String getSupportedFeatures()
    {
        return getSupportedFeaturesJSON().toString();
    }

    public void open(String s)
    {
        if (!isVisible())
        {
            fireErrorEvent("Unable to open a URL while the ad is not visible", "open");
            return;
        }
        Log.d(LOGTAG, (new StringBuilder()).append("Opening URL ").append(s).toString());
        if (validUrl(s))
        {
            String s2 = WebUtils.getScheme(s);
            if ("http".equals(s2) || "https".equals(s2))
            {
                (new InAppBrowser.InAppBrowserBuilder()).withContext(getContext()).withExternalBrowserButton().withUrl(s).show();
                return;
            } else
            {
                adControlAccessor.loadUrl(s);
                return;
            }
        } else
        {
            String s1 = (new StringBuilder()).append("URL ").append(s).append(" is not a valid URL").toString();
            Log.d(LOGTAG, s1);
            fireErrorEvent(s1, "open");
            return;
        }
    }

    void orientationPropertyChange()
    {
        if (isVisible() && (adControlAccessor.isInterstitial() || AdState.EXPANDED.equals(adControlAccessor.getAdState()) && !isResized)) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Activity activity;
        int i;
        AdControlAccessor.Coordinates coordinates;
        activity = (Activity)getContext();
        i = activity.getRequestedOrientation();
        coordinates = adControlAccessor.getCurrentPosition();
        Log.d(LOGTAG, (new StringBuilder()).append("Current Orientation: ").append(i).toString());
        if (!adControlAccessor.isInterstitial()) goto _L4; else goto _L3
_L3:
        _cls10..SwitchMap.com.amazon.device.ads.ForceOrientation[orientationProperties.getForceOrientation().ordinal()];
        JVM INSTR tableswitch 1 2: default 136
    //                   1 269
    //                   2 277;
           goto _L4 _L5 _L6
_L4:
        if (!adControlAccessor.isInterstitial() || ForceOrientation.NONE.equals(orientationProperties.getForceOrientation()))
        {
            if (orientationProperties.isAllowOrientationChange().booleanValue())
            {
                if (((Activity)adControlAccessor.getContext()).getRequestedOrientation() != -1)
                {
                    ((Activity)adControlAccessor.getContext()).setRequestedOrientation(-1);
                }
            } else
            if (AdState.EXPANDED.equals(adControlAccessor.getAdState()))
            {
                activity.setRequestedOrientation(DisplayUtils.determineCanonicalScreenOrientation(activity));
            }
        }
        Log.d(LOGTAG, (new StringBuilder()).append("New Orientation: ").append(activity.getRequestedOrientation()).toString());
        if (activity.getRequestedOrientation() != i)
        {
            AdControlAccessor.Coordinates coordinates1 = adControlAccessor.getCurrentPosition();
            if (coordinates.getWidth() != coordinates1.getWidth())
            {
                reportSizeChangeEvent();
                return;
            }
        }
        if (true) goto _L1; else goto _L5
_L5:
        activity.setRequestedOrientation(1);
          goto _L4
_L6:
        activity.setRequestedOrientation(0);
          goto _L4
    }

    public void playVideo(String s)
    {
        if (!isVisible())
        {
            fireErrorEvent("Unable to play a video while the ad is not visible", "playVideo");
            return;
        }
        if (StringUtils.isNullOrEmpty(s))
        {
            fireErrorEvent("Unable to play a video without a URL", "playVideo");
            return;
        }
        try
        {
            Bundle bundle = new Bundle();
            bundle.putString("url", s);
            Intent intent = new Intent(getContext(), com/amazon/device/ads/AdActivity);
            intent.putExtra("adapter", com/amazon/device/ads/VideoActionHandler.getName());
            intent.putExtras(bundle);
            getContext().startActivity(intent);
            return;
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            Log.d(LOGTAG, "Failed to open VideoAction activity");
        }
        fireErrorEvent("Internal SDK Failure. Unable to launch VideoActionHandler", "playVideo");
    }

    void reportSizeChangeEvent()
    {
        AdControlAccessor.Coordinates coordinates = adControlAccessor.getCurrentPosition();
        adControlAccessor.injectJavascript((new StringBuilder()).append("mraidBridge.sizeChange(").append(coordinates.getWidth()).append(",").append(coordinates.getHeight()).append(");").toString());
    }

    public void resize()
    {
        if (adControlAccessor.isInterstitial())
        {
            fireErrorEvent("Unable to resize an interstitial ad placement.", "resize");
            return;
        }
        if (adControlAccessor.getAdState().equals(AdState.EXPANDED) && !isResized)
        {
            fireErrorEvent("Unable to resize while expanded.", "resize");
            return;
        }
        if (!isVisible())
        {
            fireErrorEvent("Unable to resize ad while it is not visible.", "resize");
            return;
        }
        if (resizeProperties == null)
        {
            fireErrorEvent("Resize properties must be set before calling resize.", "resize");
            return;
        }
        if (resizeProperties.getWidth() < 50 || resizeProperties.getHeight() < 50)
        {
            fireErrorEvent("Resize width and height must be at least 50 dp in order to fit the close button.", "resize");
            return;
        } else
        {
            resizeAd(resizeProperties);
            return;
        }
    }

    void resizeAd(final ResizeProperties resizeProperties)
    {
        ThreadUtils.executeOnMainThread(new Runnable() {

            final MRAIDAdSDKBridge this$0;
            final ResizeProperties val$resizeProperties;
            final SizeProperty val$resizeSize;

            public void run()
            {
                int i;
                int j;
                RelativePosition relativeposition;
                int k;
                int l;
                createResizedView();
                i = AdUtils.deviceIndependentPixelToPixel(defaultPosition.getX() + resizeProperties.getOffsetX());
                j = AdUtils.deviceIndependentPixelToPixel(defaultPosition.getY() + resizeProperties.getOffsetY());
                relativeposition = RelativePosition.fromString(resizeProperties.getCustomClosePosition());
                AdControlAccessor.SizeDimensions sizedimensions = adControlAccessor.getMaxSize(false);
                k = AdUtils.deviceIndependentPixelToPixel(sizedimensions.getWidth());
                l = AdUtils.deviceIndependentPixelToPixel(sizedimensions.getHeight());
                if (resizeProperties.getAllowOffscreen().booleanValue()) goto _L2; else goto _L1
_L1:
                if (resizeSize.getWidth() > k)
                {
                    resizeSize.setWidth(k);
                }
                if (resizeSize.getHeight() > l)
                {
                    resizeSize.setHeight(l);
                }
                if (i >= 0) goto _L4; else goto _L3
_L3:
                i = 0;
_L8:
                android.widget.RelativeLayout.LayoutParams layoutparams;
                android.widget.FrameLayout.LayoutParams layoutparams1;
                if (j < 0)
                {
                    j = 0;
                } else
                if (j + resizeSize.getHeight() > l)
                {
                    j = l - resizeSize.getHeight();
                }
_L6:
                isResized = true;
                layoutparams = new android.widget.RelativeLayout.LayoutParams(resizeSize.getWidth(), resizeSize.getHeight());
                adControlAccessor.moveViewToViewGroup(resizedView, layoutparams, false);
                layoutparams1 = new android.widget.FrameLayout.LayoutParams(resizeSize.getWidth(), resizeSize.getHeight());
                layoutparams1.gravity = 48;
                layoutparams1.leftMargin = i;
                layoutparams1.topMargin = j;
                if (rootView.equals(resizedView.getParent()))
                {
                    resizedView.setLayoutParams(layoutparams1);
                } else
                {
                    rootView.addView(resizedView, layoutparams1);
                }
                adControlAccessor.enableCloseButton(false, relativeposition);
                rootView.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                    final _cls9 this$1;
                    private boolean triggered;

                    public void onGlobalLayout()
                    {
                        if (!triggered)
                        {
                            triggered = true;
                            int ai[] = new int[2];
                            resizedView.getLocationOnScreen(ai);
                            Rect rect = new Rect(ai[0], ai[1], ai[0] + resizedView.getWidth(), ai[1] + resizedView.getHeight());
                            AdEvent adevent = new AdEvent(AdEvent.AdEventType.RESIZED);
                            adevent.setParameter("positionOnScreen", rect);
                            adControlAccessor.fireAdEvent(adevent);
                            adControlAccessor.injectJavascript("mraidBridge.stateChange('resized');");
                            reportSizeChangeEvent();
                        }
                    }

            
            {
                this$1 = _cls9.this;
                super();
                triggered = false;
            }
                });
                return;
_L4:
                if (i + resizeSize.getWidth() > k)
                {
                    i = k - resizeSize.getWidth();
                }
                continue; /* Loop/switch isn't completed */
_L2:
                if (isValidClosePosition(relativeposition, j, i, resizeSize, k, l)) goto _L6; else goto _L5
_L5:
                fireErrorEvent("Resize failed because close event area must be entirely on screen.", "resize");
                return;
                if (true) goto _L8; else goto _L7
_L7:
            }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                resizeProperties = resizeproperties;
                resizeSize = sizeproperty;
                super();
            }
        });
    }

    public void setExpandProperties(int i, int j, boolean flag)
    {
        expandProperties.setWidth(i);
        expandProperties.setHeight(j);
        setUseCustomClose(flag);
    }

    public void setOrientationProperties(boolean flag, String s)
    {
        orientationProperties.setAllowOrientationChange(Boolean.valueOf(flag));
        if (!StringUtils.isNullOrEmpty(s))
        {
            try
            {
                ForceOrientation forceorientation = ForceOrientation.valueOf(s.toUpperCase(Locale.US));
                orientationProperties.setForceOrientation(forceorientation);
            }
            catch (IllegalArgumentException illegalargumentexception)
            {
                Log.w(LOGTAG, (new StringBuilder()).append("Not a valid orientation to force:").append(s).toString());
            }
        }
        orientationPropertyChange();
    }

    public void setResizeProperties(int i, int j, int k, int l, String s, boolean flag)
    {
        if (resizeProperties == null)
        {
            resizeProperties = new ResizeProperties();
        }
        resizeProperties.setAllowOffscreen(Boolean.valueOf(flag));
        resizeProperties.setCustomClosePosition(s);
        resizeProperties.setWidth(i);
        resizeProperties.setHeight(j);
        resizeProperties.setOffsetX(k);
        resizeProperties.setOffsetY(l);
    }

    public void setUseCustomClose(boolean flag)
    {
        shouldUseCustomClose = flag;
        expandProperties.setUseCustomClose(Boolean.valueOf(flag));
        if (shouldUseCustomClose)
        {
            adControlAccessor.hideCloseButtonImage();
        }
    }

    public void storePicture(final String url)
    {
        if (!PermissionChecker.hasWriteExternalStoragePermission(getContext()))
        {
            fireErrorEvent("Picture could not be stored because permission was denied.", "storePicture");
            return;
        } else
        {
            ThreadUtils.executeRunnableWithThreadCheck(new Runnable() {

                final MRAIDAdSDKBridge this$0;
                final String val$url;

                public void run()
                {
                    fetchPicture(url);
                }

            
            {
                this$0 = MRAIDAdSDKBridge.this;
                url = s;
                super();
            }
            });
            return;
        }
    }

    void updateDefaultPosition(int i, int j, int k, int l)
    {
        defaultPosition.setWidth(i);
        defaultPosition.setHeight(j);
        defaultPosition.setX(k);
        defaultPosition.setY(l);
    }

    void updateExpandProperties(int i, int j)
    {
        expandProperties.setWidth(i);
        expandProperties.setHeight(j);
    }









/*
    static FrameLayout access$2502(MRAIDAdSDKBridge mraidadsdkbridge, FrameLayout framelayout)
    {
        mraidadsdkbridge.rootView = framelayout;
        return framelayout;
    }

*/


/*
    static boolean access$2602(MRAIDAdSDKBridge mraidadsdkbridge, boolean flag)
    {
        mraidadsdkbridge.isResized = flag;
        return flag;
    }

*/



/*
    static boolean access$2702(MRAIDAdSDKBridge mraidadsdkbridge, boolean flag)
    {
        mraidadsdkbridge.expandedWithUrl = flag;
        return flag;
    }

*/











    private class CloseJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute()
        {
            close();
        }

        private CloseJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class CreateCalendarEventJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(String s, String s1, String s2, String s3, String s4)
        {
            createCalendarEvent(s, s1, s2, s3, s4);
        }

        private CreateCalendarEventJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class ExpandJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(String s)
        {
            expand(s);
        }

        private ExpandJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetCurrentPositionJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getCurrentPosition();
        }

        private GetCurrentPositionJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetDefaultPositionJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getDefaultPosition();
        }

        private GetDefaultPositionJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetExpandPropertiesJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getExpandProperties();
        }

        private GetExpandPropertiesJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetMaxSizeJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getMaxSize();
        }

        private GetMaxSizeJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetOrientationPropertiesJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getOrientationProperties();
        }

        private GetOrientationPropertiesJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetPlacementTypeJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getPlacementType();
        }

        private GetPlacementTypeJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetResizePropertiesJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getResizeProperties();
        }

        private GetResizePropertiesJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class GetScreenSizeJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getScreenSize();
        }

        private GetScreenSizeJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class OpenJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(String s)
        {
            open(s);
        }

        private OpenJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class PlayVideoJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(String s)
        {
            playVideo(s);
        }

        private PlayVideoJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class ResizeJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute()
        {
            resize();
        }

        private ResizeJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class SetExpandPropertiesJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(int i, int j, boolean flag)
        {
            setExpandProperties(i, j, flag);
        }

        private SetExpandPropertiesJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class SetOrientationPropertiesJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(boolean flag, String s)
        {
            setOrientationProperties(flag, s);
        }

        private SetOrientationPropertiesJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class SetResizePropertiesJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(int i, int j, int k, int l, String s, boolean flag)
        {
            setResizeProperties(i, j, k, l, s, flag);
        }

        private SetResizePropertiesJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class StorePictureJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(String s)
        {
            storePicture(s);
        }

        private StorePictureJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class SupportsJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public String execute()
        {
            return getSupportedFeatures();
        }

        private SupportsJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }


    private class UseCustomCloseJSIF
        implements AdSDKBridge.AdSDKBridgeJavascriptInterface
    {

        final MRAIDAdSDKBridge this$0;

        public void execute(boolean flag)
        {
            setUseCustomClose(flag);
        }

        private UseCustomCloseJSIF()
        {
            this$0 = MRAIDAdSDKBridge.this;
            super();
        }

    }

}
