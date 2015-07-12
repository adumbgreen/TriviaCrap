// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;


// Referenced classes of package com.amazon.device.ads:
//            InterstitialAd, AdState

class 
{

    static final int $SwitchMap$com$amazon$device$ads$AdState[];

    static 
    {
        $SwitchMap$com$amazon$device$ads$AdState = new int[AdState.values().length];
        try
        {
            $SwitchMap$com$amazon$device$ads$AdState[AdState.RENDERED.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$AdState[AdState.SHOWING.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$AdState[AdState.INVALID.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            $SwitchMap$com$amazon$device$ads$AdState[AdState.DESTROYED.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3)
        {
            return;
        }
    }
}
