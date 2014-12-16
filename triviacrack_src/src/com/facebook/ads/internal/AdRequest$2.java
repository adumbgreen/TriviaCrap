// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.ads.internal;


// Referenced classes of package com.facebook.ads.internal:
//            AdRequest, AdType

class 
{

    static final int $SwitchMap$com$facebook$ads$internal$AdType[];

    static 
    {
        $SwitchMap$com$facebook$ads$internal$AdType = new int[AdType.values().length];
        try
        {
            $SwitchMap$com$facebook$ads$internal$AdType[AdType.NATIVE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            $SwitchMap$com$facebook$ads$internal$AdType[AdType.HTML.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1)
        {
            return;
        }
    }
}
