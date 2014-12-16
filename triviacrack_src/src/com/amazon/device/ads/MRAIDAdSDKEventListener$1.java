// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            MRAIDAdSDKEventListener, AdState

class 
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
        $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType = new int[es().length];
        try
        {
            $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[ERED.nal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[BLE.nal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[ED.nal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[ZED.nal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[EN.nal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[ROYED.nal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$SDKEvent$SDKEventType[GE_ADDED.nal()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror9)
        {
            return;
        }
    }
}
