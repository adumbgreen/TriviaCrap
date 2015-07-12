// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.app.Activity;
import android.util.Log;

// Referenced classes of package com.amazon.device.ads:
//            SDKEventListener, SDKEvent, MRAIDAdSDKBridge, AdControlAccessor, 
//            AdState

class MRAIDAdSDKEventListener
    implements SDKEventListener
{

    private static final String LOGTAG = com/amazon/device/ads/MRAIDAdSDKEventListener.getSimpleName();
    private MRAIDAdSDKBridge mraidAdSDKBridge;

    MRAIDAdSDKEventListener(MRAIDAdSDKBridge mraidadsdkbridge)
    {
        mraidAdSDKBridge = mraidadsdkbridge;
    }

    private void handleBridgeAddedEvent(SDKEvent sdkevent, AdControlAccessor adcontrolaccessor)
    {
        String s = sdkevent.getParameter("bridgeName");
        if (s == null || !s.equals(mraidAdSDKBridge.getName())) goto _L2; else goto _L1
_L1:
        class _cls1
        {

            static final int $SwitchMap$com$amazon$device$ads$AdState[];
            static final int $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[];

            static 
            {
                $SwitchMap$com$amazon$device$ads$AdState = new int[AdState.values().length];
                try
                {
                    $SwitchMap$com$amazon$device$ads$AdState[AdState.EXPANDED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$AdState[AdState.SHOWING.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror1) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$AdState[AdState.RENDERED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror2) { }
                $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType = new int[SDKEvent.SDKEventType.values().length];
                try
                {
                    $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[SDKEvent.SDKEventType.RENDERED.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror3) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[SDKEvent.SDKEventType.VISIBLE.ordinal()] = 2;
                }
                catch (NoSuchFieldError nosuchfielderror4) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[SDKEvent.SDKEventType.CLOSED.ordinal()] = 3;
                }
                catch (NoSuchFieldError nosuchfielderror5) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[SDKEvent.SDKEventType.RESIZED.ordinal()] = 4;
                }
                catch (NoSuchFieldError nosuchfielderror6) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[SDKEvent.SDKEventType.HIDDEN.ordinal()] = 5;
                }
                catch (NoSuchFieldError nosuchfielderror7) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[SDKEvent.SDKEventType.DESTROYED.ordinal()] = 6;
                }
                catch (NoSuchFieldError nosuchfielderror8) { }
                try
                {
                    $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[SDKEvent.SDKEventType.BRIDGE_ADDED.ordinal()] = 7;
                }
                catch (NoSuchFieldError nosuchfielderror9)
                {
                    return;
                }
            }
        }

        _cls1..SwitchMap.com.amazon.device.ads.AdState[adcontrolaccessor.getAdState().ordinal()];
        JVM INSTR tableswitch 1 3: default 64
    //                   1 65
    //                   2 65
    //                   3 76;
           goto _L2 _L3 _L3 _L4
_L2:
        return;
_L3:
        handleReadyEvent(adcontrolaccessor);
        handleVisibleEvent(adcontrolaccessor);
        return;
_L4:
        handleReadyEvent(adcontrolaccessor);
        return;
    }

    private void handleClosedEvent(AdControlAccessor adcontrolaccessor)
    {
        if (adcontrolaccessor.getAdState().equals(AdState.EXPANDED))
        {
            mraidAdSDKBridge.collapseExpandedAd(adcontrolaccessor);
            if (((Activity)adcontrolaccessor.getContext()).getRequestedOrientation() != adcontrolaccessor.getOriginalOrientation())
            {
                ((Activity)adcontrolaccessor.getContext()).setRequestedOrientation(adcontrolaccessor.getOriginalOrientation());
            }
        } else
        if (adcontrolaccessor.getAdState().equals(AdState.SHOWING))
        {
            if (((Activity)adcontrolaccessor.getContext()).getRequestedOrientation() != adcontrolaccessor.getOriginalOrientation())
            {
                ((Activity)adcontrolaccessor.getContext()).setRequestedOrientation(adcontrolaccessor.getOriginalOrientation());
            }
            adcontrolaccessor.injectJavascript("mraidBridge.stateChange('hidden');");
            adcontrolaccessor.injectJavascript("mraidBridge.viewableChange('false');");
            return;
        }
    }

    private void handleReadyEvent(AdControlAccessor adcontrolaccessor)
    {
        adcontrolaccessor.injectJavascript("mraidBridge.ready();");
    }

    private void handleVisibleEvent(AdControlAccessor adcontrolaccessor)
    {
        adcontrolaccessor.setOriginalOrientation((Activity)adcontrolaccessor.getContext());
        AdControlAccessor.SizeDimensions sizedimensions = adcontrolaccessor.getMaxSize(false);
        mraidAdSDKBridge.updateExpandProperties(sizedimensions.getWidth(), sizedimensions.getHeight());
        AdControlAccessor.Coordinates coordinates = adcontrolaccessor.getCurrentPosition();
        mraidAdSDKBridge.updateDefaultPosition(coordinates.getWidth(), coordinates.getHeight(), coordinates.getX(), coordinates.getY());
        mraidAdSDKBridge.orientationPropertyChange();
        adcontrolaccessor.injectJavascript("mraidBridge.stateChange('default');");
        adcontrolaccessor.injectJavascript("mraidBridge.viewableChange('true');");
    }

    public void onSDKEvent(SDKEvent sdkevent, AdControlAccessor adcontrolaccessor)
    {
        Log.d(LOGTAG, sdkevent.getEventType().toString());
        switch (_cls1..SwitchMap.com.amazon.device.ads.SDKEvent.SDKEventType[sdkevent.getEventType().ordinal()])
        {
        default:
            Log.d(LOGTAG, (new StringBuilder()).append("Unhandled SDKEvent: ").append(sdkevent.getEventType()).toString());
            return;

        case 1: // '\001'
            handleReadyEvent(adcontrolaccessor);
            return;

        case 2: // '\002'
            handleVisibleEvent(adcontrolaccessor);
            return;

        case 3: // '\003'
            handleClosedEvent(adcontrolaccessor);
            return;

        case 4: // '\004'
            mraidAdSDKBridge.reportSizeChangeEvent();
            return;

        case 5: // '\005'
        case 6: // '\006'
            adcontrolaccessor.injectJavascript("mraidBridge.stateChange('hidden');");
            adcontrolaccessor.injectJavascript("mraidBridge.viewableChange('false');");
            return;

        case 7: // '\007'
            handleBridgeAddedEvent(sdkevent, adcontrolaccessor);
            break;
        }
    }

}
