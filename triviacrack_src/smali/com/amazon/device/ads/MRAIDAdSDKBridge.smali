.class Lcom/amazon/device/ads/MRAIDAdSDKBridge;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amazon/device/ads/AdSDKBridge;


# static fields
.field private static final CLOSE_BUTTON_SIZE:I = 0x32

.field private static final CONTENT_DESCRIPTION_AD_CONTAINER_VIEW:Ljava/lang/String; = "adContainerView"

.field private static final CONTENT_DESCRIPTION_DIMMING_VIEW:Ljava/lang/String; = "dimmingView"

.field private static final CONTENT_DESCRIPTION_EXPANSION_VIEW:Ljava/lang/String; = "expansionView"

.field private static final CONTENT_DESCRIPTION_RESIZED_VIEW:Ljava/lang/String; = "resizedView"

.field private static final ERROR_EVENT_FORMAT:Ljava/lang/String; = "mraidBridge.error(\'%s\', \'%s\');"

.field private static final JAVASCRIPT:Ljava/lang/String; = null

.field private static final LOGTAG:Ljava/lang/String; = null

.field private static final MRAID_BRIDGE_NAME:Ljava/lang/String; = "mraidObject"

.field private static final PLACEMENT_TYPE_INLINE:Ljava/lang/String; = "inline"

.field private static final PLACEMENT_TYPE_INTERSTITIAL:Ljava/lang/String; = "interstitial"

.field private static final jsifClasses:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private adContainerView:Landroid/view/ViewGroup;

.field private adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

.field private final defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

.field private final expandProperties:Lcom/amazon/device/ads/ExpandProperties;

.field private expandedWithUrl:Z

.field private expansionView:Landroid/view/ViewGroup;

.field private isResized:Z

.field private final orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

.field private proguardRemoveMethods:Z

.field private resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

.field private resizedView:Landroid/view/ViewGroup;

.field private rootView:Landroid/widget/FrameLayout;

.field private sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

.field private shouldUseCustomClose:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 54
    const-class v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(function (window, console) {\n    var is_array = function (obj) {\n        return Object.prototype.toString.call(obj) === \'[object Array]\';\n    },\n    forEach = function (array, fn) {\n        var i;\n        for (i = 0; i < array.length; i++) {\n            if (i in array) {\n                fn.call(null, array[i], i);\n            }\n        }\n    },\n    events = {\n            error: \'error\',\n            ready: \'ready\',\n            sizeChange: \'sizeChange\',\n            stateChange: \'stateChange\',\n            viewableChange: \'viewableChange\'\n    },\n    states = [\"loading\",\"default\",\"expanded\",\"resized\",\"hidden\"],\n    placementTypes = [\"inline\", \"interstitial\"],\n    listeners = [],\n    version = \'2.0\',\n    currentState = \"loading\",\n    supportedFeatures = null,\n    orientationProperties = {\"allowOrientationChange\":true,\"forceOrientation\":\"none\"},\n    // Error Event fires listeners\n    invokeListeners = function(event, args) {\n        var eventListeners = listeners[event] || [];\n        // fire all the listeners\n        forEach(eventListeners, function(listener){\n            try {\n                listener.apply(null, args);\n            }catch(e){\n                debug(\"Error executing \" + event + \" listener\");\n                debug(e);\n            }\n        });\n    }\n    \n    debug = function(msg) {\n        console.log(\"MRAID log: \" + msg);\n    },\n    readyEvent = function() {\n        debug(\"MRAID ready\");\n        invokeListeners(\"ready\");\n    },\n    errorEvent = function(message, action) {\n        debug(\"error: \" + message + \" action: \" + action);\n        var args = [message, action];\n        invokeListeners(\"error\", args);\n    },\n    stateChangeEvent = function(state) {\n        debug(\"stateChange: \" + state);\n        var args = [state];\n        currentState = state;\n        invokeListeners(\"stateChange\", args);\n    },\n    viewableChangeEvent = function(viewable) {\n        debug(\"viewableChange: \" + viewable);\n        var args = [viewable];\n        invokeListeners(\"viewableChange\", args);\n    }, \n    sizeChangeEvent = function(width, height) {\n        debug(\"sizeChange: \" + width + \"x\" + height);\n        var args = [width, height];\n        invokeListeners(\"sizeChange\", args);\n    },\n    window.mraidBridge = {\n            error : errorEvent,\n            ready : readyEvent,\n            stateChange : stateChangeEvent,\n            sizeChange : sizeChangeEvent,\n            viewableChange : viewableChangeEvent\n    },\n    // Define the mraid object\n    window.mraid = {\n            // Command Flow\n            addEventListener : function(event, listener){\n                var eventListeners = listeners[event] || [],\n                alreadyRegistered = false;\n                \n                //verify the event is one that will actually occur\n                if (!events.hasOwnProperty(event)){\n                    return;\n                }\n                \n                //register first set of listeners for this event\n                if (!is_array(listeners[event])) {\n                    listeners[event] = eventListeners;\n                }\n                \n                forEach(eventListeners, function(l){ \n                    // Listener already registered, so no need to add it.\n                        if (listener === l){\n                            alreadyRegistered = true;\n                        }\n                    }\n                );\n                if (!alreadyRegistered){\n                    listeners[event].push(listener);\n                }\n            },\n            removeEventListener : function(event, listener){\n                if (listeners.hasOwnProperty(event)) {\n                    var eventListeners = listeners[event];\n                    if (eventListeners) {\n                        var idx = eventListeners.indexOf(listener);\n                        if (idx !== -1) {\n                            eventListeners.splice(idx, 1);\n                        }\n                    }\n                }\n            },\n            useCustomClose: function(bool){\n                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(bool);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            // Support\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            supports: function(feature){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!supportedFeatures)\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    supportedFeatures = JSON.parse(mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "());\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return supportedFeatures[feature];\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            // Properties\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getVersion: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return version;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getState: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return currentState;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getPlacementType: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            isViewable: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                // TODO - should we ask the OS if the widget is visible.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return currentState !== \"hidden\" && currentState !== \"loading\";\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getExpandProperties: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "());;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            setExpandProperties: function(properties){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                var currentProperties = mraid.getExpandProperties(),\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                //properties aren\'t all required, map to existing value if not set.\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                width = properties.hasOwnProperty(\'width\') ? properties.width : currentProperties.width,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                height = properties.hasOwnProperty(\'height\') ? properties.height : currentProperties.height,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                useClose = properties.hasOwnProperty(\'useCustomClose\') ? properties.useCustomClose : currentProperties.useCustomClose;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                //Backwards compatibility with MRAID 1.0 creatives\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!!properties.lockOrientation){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    mraid.setOrientationProperties({\"allowOrientationChange\":false});\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        width, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        height,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        useClose);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getOrientationProperties: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return orientationProperties;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            setOrientationProperties: function(properties){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (properties.hasOwnProperty(\"allowOrientationChange\")) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    orientationProperties.allowOrientationChange = properties.allowOrientationChange;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (properties.hasOwnProperty(\"forceOrientation\")) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    orientationProperties.forceOrientation = properties.forceOrientation;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        orientationProperties.allowOrientationChange, \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        orientationProperties.forceOrientation);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getResizeProperties: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "());\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            setResizeProperties: function(properties){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!properties.customClosePosition){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   properties.customClosePosition = null;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (!properties.hasOwnProperty(\'allowOffscreen\')){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                   properties.allowOffscreen = true;\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        properties.width,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        properties.height,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        properties.offsetX,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        properties.offsetY,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        properties.customClosePosition,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        properties.allowOffscreen\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getCurrentPosition: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "());\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getMaxSize: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "());\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getDefaultPosition: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "());\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            getScreenSize: function(){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                return JSON.parse(mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "());\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            // Operations\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            open: function(url) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(url);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            close: function() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            expand: function(url) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                if (url !== undefined) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(url);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                } else {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                    mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\"\");\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            resize: function() {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "();\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            createCalendarEvent: function(eventObject) {\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        eventObject.description || null,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        eventObject.location || null,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        eventObject.summary || null,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        eventObject.start || null,\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        eventObject.end || null\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                        );\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            playVideo: function(url){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(url);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            },\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            storePicture: function(url){\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "                mraidObject"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;

    invoke-static {v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(url);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "            }\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "    };\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "})(window, console);\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Lcom/amazon/device/ads/OrientationProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/OrientationProperties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    .line 312
    new-instance v0, Lcom/amazon/device/ads/ExpandProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/ExpandProperties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    .line 314
    new-instance v0, Lcom/amazon/device/ads/CurrentPosition;

    invoke-direct {v0}, Lcom/amazon/device/ads/CurrentPosition;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

    .line 315
    iput-boolean v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->shouldUseCustomClose:Z

    .line 316
    iput-boolean v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z

    .line 317
    iput-boolean v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->proguardRemoveMethods:Z

    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    .line 337
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    .line 338
    return-void
.end method

.method static synthetic access$2000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/AdControlAccessor;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fetchPicture(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->savePicture(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-object p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$2602(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Z
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    return v0
.end method

.method static synthetic access$2702(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandedWithUrl:Z

    return p1
.end method

.method static synthetic access$2800()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->lookupExpansionView()V

    return-void
.end method

.method static synthetic access$3000(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)Lcom/amazon/device/ads/SizeProperty;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->computeExpandedSizeInPixels(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)Lcom/amazon/device/ads/SizeProperty;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createExpandedView()V

    return-void
.end method

.method static synthetic access$3400(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Landroid/view/ViewGroup;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createResizedView()V

    return-void
.end method

.method static synthetic access$3600(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)Lcom/amazon/device/ads/CurrentPosition;
    .locals 1
    .parameter

    .prologue
    .line 52
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/SizeProperty;II)Z
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct/range {p0 .. p6}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/SizeProperty;II)Z

    move-result v0

    return v0
.end method

.method private computeExpandedSizeInPixels(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)Lcom/amazon/device/ads/SizeProperty;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize(Z)Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;

    move-result-object v2

    .line 1073
    if-eqz p2, :cond_0

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->getWidth()I

    move-result v0

    move v1, v0

    .line 1074
    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {v2}, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->getHeight()I

    move-result v0

    .line 1076
    :goto_1
    sget-object v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Expanding Ad to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    invoke-static {v1}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v1

    .line 1078
    invoke-static {v0}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v0

    .line 1080
    new-instance v2, Lcom/amazon/device/ads/SizeProperty;

    invoke-direct {v2}, Lcom/amazon/device/ads/SizeProperty;-><init>()V

    .line 1081
    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/SizeProperty;->setHeight(I)V

    .line 1082
    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/SizeProperty;->setWidth(I)V

    .line 1083
    return-object v2

    .line 1073
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v0

    move v1, v0

    goto :goto_0

    .line 1074
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v0

    goto :goto_1
.end method

.method private computeResizeSizeInPixels(Lcom/amazon/device/ads/ResizeProperties;)Lcom/amazon/device/ads/SizeProperty;
    .locals 3
    .parameter

    .prologue
    .line 1361
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getWidth()I

    move-result v0

    .line 1362
    invoke-virtual {p1}, Lcom/amazon/device/ads/ResizeProperties;->getHeight()I

    move-result v1

    .line 1364
    invoke-static {v0}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v0

    .line 1365
    invoke-static {v1}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v1

    .line 1367
    new-instance v2, Lcom/amazon/device/ads/SizeProperty;

    invoke-direct {v2}, Lcom/amazon/device/ads/SizeProperty;-><init>()V

    .line 1368
    invoke-virtual {v2, v1}, Lcom/amazon/device/ads/SizeProperty;->setHeight(I)V

    .line 1369
    invoke-virtual {v2, v0}, Lcom/amazon/device/ads/SizeProperty;->setWidth(I)V

    .line 1370
    return-object v2
.end method

.method private createCalendarIntent(Lcom/amazon/device/ads/CalendarEventParameters;)V
    .locals 4
    .parameter
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 858
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "vnd.android.cursor.item/event"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 863
    const-string v1, "title"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 865
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getLocation()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 867
    const-string v1, "eventLocation"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 870
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getSummary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 872
    const-string v1, "description"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getSummary()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    :cond_1
    const-string v1, "beginTime"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getStart()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 877
    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getEnd()Ljava/util/Date;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 879
    const-string v1, "endTime"

    invoke-virtual {p1}, Lcom/amazon/device/ads/CalendarEventParameters;->getEnd()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 882
    :cond_2
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 883
    return-void
.end method

.method private createExpandedView()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 1092
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    .line 1093
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    .line 1094
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    const-string v1, "expansionView"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1096
    new-instance v0, Landroid/view/View;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 1097
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1098
    const-string v1, "dimmingView"

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1099
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;

    invoke-direct {v1, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$7;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1107
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1109
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;

    .line 1110
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adContainerView:Landroid/view/ViewGroup;

    const-string v1, "adContainerView"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1111
    return-void
.end method

.method private createResizedView()V
    .locals 2

    .prologue
    .line 1375
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    .line 1377
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    if-nez v0, :cond_0

    .line 1379
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->rootView:Landroid/widget/FrameLayout;

    .line 1381
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    .line 1382
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizedView:Landroid/view/ViewGroup;

    const-string v1, "resizedView"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1384
    :cond_1
    return-void
.end method

.method private fetchPicture(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 904
    invoke-static {}, Lcom/amazon/device/ads/WebRequest;->createNewWebRequest()Lcom/amazon/device/ads/WebRequest;

    move-result-object v0

    .line 905
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/WebRequest;->enableLog(Z)V

    .line 906
    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/WebRequest;->setUrlString(Ljava/lang/String;)V

    .line 910
    :try_start_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest;->makeCall()Lcom/amazon/device/ads/WebRequest$WebResponse;
    :try_end_0
    .catch Lcom/amazon/device/ads/WebRequest$WebRequestException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 917
    if-nez v0, :cond_0

    .line 919
    const-string v0, "Server could not be contacted to download picture."

    const-string v1, "storePicture"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    :goto_0
    return-void

    .line 912
    :catch_0
    move-exception v0

    .line 914
    const-string v0, "Server could not be contacted to download picture."

    const-string v1, "storePicture"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 922
    :cond_0
    invoke-virtual {v0}, Lcom/amazon/device/ads/WebRequest$WebResponse;->getResponseReader()Lcom/amazon/device/ads/ResponseReader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResponseReader;->readAsBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 923
    if-nez v0, :cond_1

    .line 925
    const-string v0, "Picture could not be retrieved from server."

    const-string v1, "storePicture"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 928
    :cond_1
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;

    invoke-direct {v1, p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$3;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V

    invoke-static {v1}, Lcom/amazon/device/ads/ThreadUtils;->scheduleOnMainThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 1506
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "mraidBridge.error(\'%s\', \'%s\');"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1507
    return-void
.end method

.method private getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private static getJsifClasses()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 420
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 422
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    monitor-enter v1

    .line 424
    :try_start_0
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;

    const-string v3, "Close"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;

    const-string v3, "CreateCalendarEvent"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;

    const-string v3, "Expand"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;

    const-string v3, "GetCurrentPosition"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;

    const-string v3, "GetDefaultPosition"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 431
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;

    const-string v3, "GetExpandProperties"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;

    const-string v3, "GetMaxSize"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetOrientationPropertiesJSIF;

    const-string v3, "GetOrientationProperties"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;

    const-string v3, "GetPlacementType"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;

    const-string v3, "GetResizeProperties"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;

    const-string v3, "GetScreenSize"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;

    const-string v3, "Open"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;

    const-string v3, "PlayVideo"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;

    const-string v3, "Resize"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;

    const-string v3, "SetExpandProperties"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;

    const-string v3, "SetOrientationProperties"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;

    const-string v3, "SetResizeProperties"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;

    const-string v3, "StorePicture"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;

    const-string v3, "Supports"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    const-class v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;

    const-string v3, "UseCustomClose"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    :cond_1
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->jsifClasses:Ljava/util/HashMap;

    return-object v0

    .line 447
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static getJsifName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 454
    invoke-static {}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getJsifClasses()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 455
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 456
    array-length v2, v1

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 458
    const/4 v0, 0x0

    .line 460
    :goto_0
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getMaxSize(Z)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    .line 538
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdControlAccessor;->getMaxSize(Z)Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;

    move-result-object v0

    .line 540
    new-instance v1, Lcom/amazon/device/ads/SizeProperty;

    invoke-direct {v1}, Lcom/amazon/device/ads/SizeProperty;-><init>()V

    .line 541
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/SizeProperty;->setWidth(I)V

    .line 542
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$SizeDimensions;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/SizeProperty;->setHeight(I)V

    .line 543
    invoke-virtual {v1}, Lcom/amazon/device/ads/SizeProperty;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSupportedFeaturesJSON()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 795
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 797
    :try_start_0
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 798
    const-string v2, "sms"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 800
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 801
    const-string v2, "tel"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 803
    const/16 v1, 0xe

    invoke-static {v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v1

    .line 804
    const-string v2, "calendar"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 806
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/amazon/device/ads/PermissionChecker;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v1

    .line 807
    const-string v2, "storePicture"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 809
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v1

    .line 810
    const-string v2, "inlineVideo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    :goto_0
    return-object v0

    .line 812
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private isValidClosePosition(Lcom/amazon/device/ads/RelativePosition;IILcom/amazon/device/ads/SizeProperty;II)Z
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1297
    const/16 v1, 0x32

    invoke-static {v1}, Lcom/amazon/device/ads/AdUtils;->deviceIndependentPixelToPixel(I)I

    move-result v3

    .line 1302
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->$SwitchMap$com$amazon$device$ads$RelativePosition:[I

    invoke-virtual {p1}, Lcom/amazon/device/ads/RelativePosition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    move v1, v0

    move p3, v0

    move v2, v0

    move p2, v0

    .line 1347
    :goto_0
    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gt v2, p6, :cond_0

    if-le v1, p5, :cond_1

    .line 1351
    :cond_0
    :goto_1
    return v0

    .line 1307
    :pswitch_0
    add-int v2, p2, v3

    .line 1308
    add-int v1, p3, v3

    .line 1309
    goto :goto_0

    .line 1312
    :pswitch_1
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    .line 1313
    add-int v2, p2, v3

    .line 1314
    sub-int p3, v1, v3

    .line 1315
    goto :goto_0

    .line 1318
    :pswitch_2
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    div-int/lit8 v2, v3, 0x2

    sub-int p3, v1, v2

    .line 1319
    add-int v2, p2, v3

    .line 1320
    add-int v1, p3, v3

    .line 1321
    goto :goto_0

    .line 1323
    :pswitch_3
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v1

    add-int v2, p2, v1

    .line 1325
    sub-int p2, v2, v3

    .line 1326
    add-int v1, p3, v3

    .line 1327
    goto :goto_0

    .line 1329
    :pswitch_4
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v1

    add-int v2, p2, v1

    .line 1330
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    .line 1331
    sub-int p2, v2, v3

    .line 1332
    sub-int p3, v1, v3

    .line 1333
    goto :goto_0

    .line 1335
    :pswitch_5
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v1

    add-int v2, p2, v1

    .line 1336
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    div-int/lit8 v4, v3, 0x2

    sub-int p3, v1, v4

    .line 1337
    sub-int p2, v2, v3

    .line 1338
    add-int v1, p3, v3

    .line 1339
    goto :goto_0

    .line 1341
    :pswitch_6
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    div-int/lit8 v2, v3, 0x2

    sub-int p2, v1, v2

    .line 1342
    invoke-virtual {p4}, Lcom/amazon/device/ads/SizeProperty;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p3

    div-int/lit8 v2, v3, 0x2

    sub-int p3, v1, v2

    .line 1343
    add-int v2, p2, v3

    .line 1344
    add-int v1, p3, v3

    goto :goto_0

    .line 1351
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 1302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private isVisible()Z
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->SHOWING:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lookupExpansionView()V
    .locals 3

    .prologue
    .line 1047
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getViewParentIfExpanded()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1050
    if-eqz v0, :cond_0

    const-string v1, "adContainerView"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1053
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1054
    if-eqz v0, :cond_0

    const-string v1, "expansionView"

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1057
    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expansionView:Landroid/view/ViewGroup;

    .line 1061
    :cond_0
    return-void
.end method

.method private savePicture(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    .line 940
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 941
    const-string v1, "Would you like to save the image to your gallery?"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 942
    const-string v1, "Yes"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;

    invoke-direct {v2, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$4;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 956
    const-string v1, "No"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;

    invoke-direct {v2, p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$5;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 962
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 963
    return-void
.end method

.method private validUrl(Ljava/lang/String;)Z
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 1486
    :try_start_0
    new-instance v1, Ljava/net/URI;

    invoke-direct {v1, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1487
    const/4 v0, 0x1

    .line 1495
    :goto_0
    return v0

    .line 1493
    :catch_0
    move-exception v1

    goto :goto_0

    .line 1489
    :catch_1
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->closeAd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 627
    const-string v0, "Unable to close ad in its current state."

    const-string v1, "close"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :cond_0
    return-void
.end method

.method collapseExpandedAd(Lcom/amazon/device/ads/AdControlAccessor;)V
    .locals 3
    .parameter

    .prologue
    .line 976
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Collapsing expanded ad "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$6;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/AdControlAccessor;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 1038
    return-void
.end method

.method createAlertDialogBuilder(Landroid/content/Context;)Landroid/app/AlertDialog$Builder;
    .locals 1
    .parameter

    .prologue
    .line 967
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public createCalendarEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 831
    const/16 v0, 0xe

    invoke-static {v0}, Lcom/amazon/device/ads/AndroidTargetUtils;->isAtLeastAndroidAPI(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 833
    const-string v0, "API version does not support calendar operations."

    .line 834
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    const-string v1, "API version does not support calendar operations."

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    const-string v0, "API version does not support calendar operations."

    const-string v1, "createCalendarEvent"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    :goto_0
    return-void

    .line 843
    :cond_0
    :try_start_0
    new-instance v0, Lcom/amazon/device/ads/CalendarEventParameters;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/amazon/device/ads/CalendarEventParameters;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 852
    invoke-direct {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->createCalendarIntent(Lcom/amazon/device/ads/CalendarEventParameters;)V

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    .line 848
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "createCalendarEvent"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public expand(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    const/16 v2, 0x32

    .line 633
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 635
    const-string v0, "Unable to expand an interstitial ad placement"

    const-string v1, "expand"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    :goto_0
    return-void

    .line 639
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z

    if-nez v0, :cond_1

    .line 641
    const-string v0, "Unable to expand while expanded."

    const-string v1, "expand"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 644
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 646
    const-string v0, "Unable to expand ad while it is not visible."

    const-string v1, "expand"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getWidth()I

    move-result v0

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->getHeight()I

    move-result v0

    if-ge v0, v2, :cond_4

    .line 652
    :cond_3
    const-string v0, "Expand size is too small, must leave room for close."

    const-string v1, "expand"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 656
    :cond_4
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    .line 657
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrWhiteSpace(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 659
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->validUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 661
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;

    invoke-direct {v2, p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ExpandProperties;)V

    invoke-virtual {v1, p1, v2}, Lcom/amazon/device/ads/AdControlAccessor;->preloadUrl(Ljava/lang/String;Lcom/amazon/device/ads/PreloadCallback;)V

    goto :goto_0

    .line 676
    :cond_5
    const-string v0, "Unable to expand with invalid URL."

    const-string v1, "expand"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_6
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandAd(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V

    goto :goto_0
.end method

.method expandAd(Lcom/amazon/device/ads/ExpandProperties;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 1122
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;

    invoke-direct {v0, p0, p2, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$8;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;Lcom/amazon/device/ads/ExpandProperties;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 1182
    return-void
.end method

.method public getCurrentPosition()Ljava/lang/String;
    .locals 3

    .prologue
    .line 512
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/AdControlAccessor$Coordinates;

    move-result-object v0

    .line 513
    new-instance v1, Lcom/amazon/device/ads/CurrentPosition;

    invoke-direct {v1}, Lcom/amazon/device/ads/CurrentPosition;-><init>()V

    .line 514
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getX()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/CurrentPosition;->setX(I)V

    .line 515
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getY()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/CurrentPosition;->setY(I)V

    .line 516
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/amazon/device/ads/CurrentPosition;->setWidth(I)V

    .line 517
    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getHeight()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/CurrentPosition;->setHeight(I)V

    .line 518
    invoke-virtual {v1}, Lcom/amazon/device/ads/CurrentPosition;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultPosition()Ljava/lang/String;
    .locals 1

    .prologue
    .line 523
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

    invoke-virtual {v0}, Lcom/amazon/device/ads/CurrentPosition;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExpandProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ExpandProperties;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getJavascript()Ljava/lang/String;
    .locals 1

    .prologue
    .line 401
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->JAVASCRIPT:Ljava/lang/String;

    return-object v0
.end method

.method public getJavascriptInterfaces()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/amazon/device/ads/AdSDKBridge$AdSDKBridgeJavascriptInterface;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v1, 0x0

    .line 343
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 344
    const-string v0, "Close"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v0, "CreateCalendarEvent"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    const-string v0, "Expand"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 347
    const-string v0, "GetCurrentPosition"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    const-string v0, "GetDefaultPosition"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v0, "GetExpandProperties"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    const-string v0, "GetMaxSize"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 351
    const-string v0, "GetOrientationProperties"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetOrientationPropertiesJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetOrientationPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    const-string v0, "GetPlacementType"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v0, "GetResizeProperties"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 354
    const-string v0, "GetScreenSize"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 355
    const-string v0, "Open"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    const-string v0, "PlayVideo"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    const-string v0, "Resize"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v0, "SetExpandProperties"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v0, "SetOrientationProperties"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    const-string v0, "SetResizeProperties"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    const-string v0, "StorePicture"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v0, "Supports"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v0, "UseCustomClose"

    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v9, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->proguardRemoveMethods:Z

    if-eqz v0, :cond_0

    .line 368
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CloseJSIF;->execute()V

    .line 369
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    move-object v2, v1

    move-object v3, v1

    move-object v4, v1

    move-object v5, v1

    invoke-virtual/range {v0 .. v5}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$CreateCalendarEventJSIF;->execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ExpandJSIF;->execute(Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetCurrentPositionJSIF;->execute()Ljava/lang/String;

    .line 372
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetDefaultPositionJSIF;->execute()Ljava/lang/String;

    .line 373
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetExpandPropertiesJSIF;->execute()Ljava/lang/String;

    .line 374
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetMaxSizeJSIF;->execute()Ljava/lang/String;

    .line 375
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetOrientationPropertiesJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetOrientationPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetOrientationPropertiesJSIF;->execute()Ljava/lang/String;

    .line 376
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetPlacementTypeJSIF;->execute()Ljava/lang/String;

    .line 377
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetResizePropertiesJSIF;->execute()Ljava/lang/String;

    .line 378
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$GetScreenSizeJSIF;->execute()Ljava/lang/String;

    .line 379
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$OpenJSIF;->execute(Ljava/lang/String;)V

    .line 380
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$PlayVideoJSIF;->execute(Ljava/lang/String;)V

    .line 381
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$ResizeJSIF;->execute()V

    .line 382
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0, v10, v10, v10}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetExpandPropertiesJSIF;->execute(IIZ)V

    .line 383
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0, v10, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetOrientationPropertiesJSIF;->execute(ZLjava/lang/String;)V

    .line 384
    new-instance v2, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;

    invoke-direct {v2, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    move v3, v10

    move v4, v10

    move v5, v10

    move v6, v10

    move-object v7, v1

    move v8, v10

    invoke-virtual/range {v2 .. v8}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SetResizePropertiesJSIF;->execute(IIIILjava/lang/String;Z)V

    .line 385
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$StorePictureJSIF;->execute(Ljava/lang/String;)V

    .line 386
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$SupportsJSIF;->execute()Ljava/lang/String;

    .line 387
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;

    invoke-direct {v0, p0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/MRAIDAdSDKBridge$1;)V

    invoke-virtual {v0, v10}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$UseCustomCloseJSIF;->execute(Z)V

    .line 389
    :cond_0
    return-object v9
.end method

.method public getMaxSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getMaxSize(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 395
    const-string v0, "mraidObject"

    return-object v0
.end method

.method public getOrientationProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/OrientationProperties;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPlacementType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 552
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 554
    const-string v0, "interstitial"

    .line 556
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "inline"

    goto :goto_0
.end method

.method public getResizeProperties()Ljava/lang/String;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSDKEventListener()Lcom/amazon/device/ads/SDKEventListener;
    .locals 1

    .prologue
    .line 411
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;

    invoke-direct {v0, p0}, Lcom/amazon/device/ads/MRAIDAdSDKEventListener;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;)V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    .line 415
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->sdkEventListener:Lcom/amazon/device/ads/SDKEventListener;

    return-object v0
.end method

.method public getScreenSize()Ljava/lang/String;
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getMaxSize(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()Ljava/lang/String;
    .locals 1

    .prologue
    .line 789
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getSupportedFeaturesJSON()Lorg/json/JSONObject;

    move-result-object v0

    .line 790
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public open(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 755
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 757
    const-string v0, "Unable to open a URL while the ad is not visible"

    const-string v1, "open"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    :goto_0
    return-void

    .line 760
    :cond_0
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opening URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->validUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 763
    invoke-static {p1}, Lcom/amazon/device/ads/WebUtils;->getScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 764
    const-string v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 767
    :cond_1
    new-instance v0, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    invoke-direct {v0}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;-><init>()V

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withContext(Landroid/content/Context;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withExternalBrowserButton()Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->withUrl(Ljava/lang/String;)Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/ads/InAppBrowser$InAppBrowserBuilder;->show()V

    goto :goto_0

    .line 776
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/AdControlAccessor;->loadUrl(Ljava/lang/String;)V

    goto :goto_0

    .line 781
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URL "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a valid URL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 782
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    const-string v1, "open"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method orientationPropertyChange()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1417
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z

    if-eqz v0, :cond_1

    .line 1475
    :cond_0
    :goto_0
    return-void

    .line 1423
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1424
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v2

    .line 1425
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/AdControlAccessor$Coordinates;

    move-result-object v3

    .line 1426
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current Orientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1428
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1430
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$10;->$SwitchMap$com$amazon$device$ads$ForceOrientation:[I

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v4}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v4

    invoke-virtual {v4}, Lcom/amazon/device/ads/ForceOrientation;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    .line 1444
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/amazon/device/ads/ForceOrientation;->NONE:Lcom/amazon/device/ads/ForceOrientation;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v4}, Lcom/amazon/device/ads/OrientationProperties;->getForceOrientation()Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/ForceOrientation;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1446
    :cond_3
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v1}, Lcom/amazon/device/ads/OrientationProperties;->isAllowOrientationChange()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1449
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    .line 1450
    if-eq v1, v6, :cond_4

    .line 1452
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v1}, Lcom/amazon/device/ads/AdControlAccessor;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1, v6}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 1464
    :cond_4
    :goto_2
    sget-object v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "New Orientation: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v2, :cond_0

    .line 1468
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/AdControlAccessor$Coordinates;

    move-result-object v0

    .line 1469
    invoke-virtual {v3}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getWidth()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 1472
    invoke-virtual {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->reportSizeChangeEvent()V

    goto/16 :goto_0

    .line 1433
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1436
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_1

    .line 1457
    :cond_5
    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    iget-object v4, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v4}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1459
    invoke-static {v0}, Lcom/amazon/device/ads/DisplayUtils;->determineCanonicalScreenOrientation(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_2

    .line 1430
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public playVideo(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 719
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 721
    const-string v0, "Unable to play a video while the ad is not visible"

    const-string v1, "playVideo"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :goto_0
    return-void

    .line 724
    :cond_0
    invoke-static {p1}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 726
    const-string v0, "Unable to play a video without a URL"

    const-string v1, "playVideo"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 731
    :cond_1
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 732
    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    new-instance v1, Landroid/content/Intent;

    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/amazon/device/ads/AdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 734
    const-string v2, "adapter"

    const-class v3, Lcom/amazon/device/ads/VideoActionHandler;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 735
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 736
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 738
    :catch_0
    move-exception v0

    .line 740
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    const-string v1, "Failed to open VideoAction activity"

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    const-string v0, "Internal SDK Failure. Unable to launch VideoActionHandler"

    const-string v1, "playVideo"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method reportSizeChangeEvent()V
    .locals 4

    .prologue
    .line 1389
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getCurrentPosition()Lcom/amazon/device/ads/AdControlAccessor$Coordinates;

    move-result-object v0

    .line 1390
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mraidBridge.sizeChange("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor$Coordinates;->getHeight()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ");"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/AdControlAccessor;->injectJavascript(Ljava/lang/String;)V

    .line 1391
    return-void
.end method

.method public resize()V
    .locals 3

    .prologue
    const/16 v2, 0x32

    .line 689
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->isInterstitial()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 691
    const-string v0, "Unable to resize an interstitial ad placement."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->getAdState()Lcom/amazon/device/ads/AdState;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/ads/AdState;->EXPANDED:Lcom/amazon/device/ads/AdState;

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/AdState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isResized:Z

    if-nez v0, :cond_1

    .line 696
    const-string v0, "Unable to resize while expanded."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 699
    :cond_1
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    .line 701
    const-string v0, "Unable to resize ad while it is not visible."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 704
    :cond_2
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    if-nez v0, :cond_3

    .line 706
    const-string v0, "Resize properties must be set before calling resize."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 709
    :cond_3
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->getWidth()I

    move-result v0

    if-lt v0, v2, :cond_4

    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0}, Lcom/amazon/device/ads/ResizeProperties;->getHeight()I

    move-result v0

    if-ge v0, v2, :cond_5

    .line 711
    :cond_4
    const-string v0, "Resize width and height must be at least 50 dp in order to fit the close button."

    const-string v1, "resize"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 714
    :cond_5
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {p0, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeAd(Lcom/amazon/device/ads/ResizeProperties;)V

    goto :goto_0
.end method

.method resizeAd(Lcom/amazon/device/ads/ResizeProperties;)V
    .locals 2
    .parameter

    .prologue
    .line 1187
    invoke-direct {p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->computeResizeSizeInPixels(Lcom/amazon/device/ads/ResizeProperties;)Lcom/amazon/device/ads/SizeProperty;

    move-result-object v0

    .line 1188
    new-instance v1, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;

    invoke-direct {v1, p0, p1, v0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$9;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Lcom/amazon/device/ads/ResizeProperties;Lcom/amazon/device/ads/SizeProperty;)V

    invoke-static {v1}, Lcom/amazon/device/ads/ThreadUtils;->executeOnMainThread(Ljava/lang/Runnable;)V

    .line 1293
    return-void
.end method

.method public setExpandProperties(IIZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 589
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ExpandProperties;->setWidth(I)V

    .line 590
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/ExpandProperties;->setHeight(I)V

    .line 591
    invoke-virtual {p0, p3}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->setUseCustomClose(Z)V

    .line 592
    return-void
.end method

.method public setOrientationProperties(ZLjava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 566
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/OrientationProperties;->setAllowOrientationChange(Ljava/lang/Boolean;)V

    .line 567
    invoke-static {p2}, Lcom/amazon/device/ads/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 571
    :try_start_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/ForceOrientation;->valueOf(Ljava/lang/String;)Lcom/amazon/device/ads/ForceOrientation;

    move-result-object v0

    .line 572
    iget-object v1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationProperties:Lcom/amazon/device/ads/OrientationProperties;

    invoke-virtual {v1, v0}, Lcom/amazon/device/ads/OrientationProperties;->setForceOrientation(Lcom/amazon/device/ads/ForceOrientation;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->orientationPropertyChange()V

    .line 580
    return-void

    .line 574
    :catch_0
    move-exception v0

    .line 576
    sget-object v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->LOGTAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a valid orientation to force:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amazon/device/ads/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setResizeProperties(IIIILjava/lang/String;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 601
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    if-nez v0, :cond_0

    .line 603
    new-instance v0, Lcom/amazon/device/ads/ResizeProperties;

    invoke-direct {v0}, Lcom/amazon/device/ads/ResizeProperties;-><init>()V

    iput-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    .line 605
    :cond_0
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-static {p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ResizeProperties;->setAllowOffscreen(Ljava/lang/Boolean;)V

    .line 606
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p5}, Lcom/amazon/device/ads/ResizeProperties;->setCustomClosePosition(Ljava/lang/String;)V

    .line 607
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ResizeProperties;->setWidth(I)V

    .line 608
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/ResizeProperties;->setHeight(I)V

    .line 609
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p3}, Lcom/amazon/device/ads/ResizeProperties;->setOffsetX(I)V

    .line 610
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->resizeProperties:Lcom/amazon/device/ads/ResizeProperties;

    invoke-virtual {v0, p4}, Lcom/amazon/device/ads/ResizeProperties;->setOffsetY(I)V

    .line 611
    return-void
.end method

.method public setUseCustomClose(Z)V
    .locals 2
    .parameter

    .prologue
    .line 615
    iput-boolean p1, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->shouldUseCustomClose:Z

    .line 616
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amazon/device/ads/ExpandProperties;->setUseCustomClose(Ljava/lang/Boolean;)V

    .line 617
    iget-boolean v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->shouldUseCustomClose:Z

    if-eqz v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->adControlAccessor:Lcom/amazon/device/ads/AdControlAccessor;

    invoke-virtual {v0}, Lcom/amazon/device/ads/AdControlAccessor;->hideCloseButtonImage()V

    .line 621
    :cond_0
    return-void
.end method

.method public storePicture(Ljava/lang/String;)V
    .locals 2
    .parameter

    .prologue
    .line 887
    invoke-direct {p0}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/device/ads/PermissionChecker;->hasWriteExternalStoragePermission(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 889
    const-string v0, "Picture could not be stored because permission was denied."

    const-string v1, "storePicture"

    invoke-direct {p0, v0, v1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->fireErrorEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 900
    :goto_0
    return-void

    .line 892
    :cond_0
    new-instance v0, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;

    invoke-direct {v0, p0, p1}, Lcom/amazon/device/ads/MRAIDAdSDKBridge$2;-><init>(Lcom/amazon/device/ads/MRAIDAdSDKBridge;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/amazon/device/ads/ThreadUtils;->executeRunnableWithThreadCheck(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method updateDefaultPosition(IIII)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 501
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/CurrentPosition;->setWidth(I)V

    .line 502
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/CurrentPosition;->setHeight(I)V

    .line 503
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

    invoke-virtual {v0, p3}, Lcom/amazon/device/ads/CurrentPosition;->setX(I)V

    .line 504
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->defaultPosition:Lcom/amazon/device/ads/CurrentPosition;

    invoke-virtual {v0, p4}, Lcom/amazon/device/ads/CurrentPosition;->setY(I)V

    .line 505
    return-void
.end method

.method updateExpandProperties(II)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 477
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p1}, Lcom/amazon/device/ads/ExpandProperties;->setWidth(I)V

    .line 478
    iget-object v0, p0, Lcom/amazon/device/ads/MRAIDAdSDKBridge;->expandProperties:Lcom/amazon/device/ads/ExpandProperties;

    invoke-virtual {v0, p2}, Lcom/amazon/device/ads/ExpandProperties;->setHeight(I)V

    .line 479
    return-void
.end method
