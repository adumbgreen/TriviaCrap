// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            AdLayout, AdState

class ventType
{

    static final int $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[];
    static final int $SwitchMap$com$amazon$device$ads$AdState[];

    static 
    {
        $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType = new int[ventType.values().length];
        try
        {
            $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[ventType.EXPANDED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[ventType.CLOSED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$AdEvent$AdEventType[ventType.RESIZED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        $SwitchMap$com$amazon$device$ads$AdState = new int[AdState.values().length];
        try
        {
            $SwitchMap$com$amazon$device$ads$AdState[AdState.INVALID.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$AdState[AdState.DESTROYED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$AdState[AdState.EXPANDED.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror5)
        {
            return;
        }
    }
}
