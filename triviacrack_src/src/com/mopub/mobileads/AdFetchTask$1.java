// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;


// Referenced classes of package com.mopub.mobileads:
//            AdFetchTask, b

class 
{

    static final int a[];

    static 
    {
        a = new int[b.values().length];
        try
        {
            a[b.NOT_SET.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            a[b.FETCH_CANCELLED.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            a[b.INVALID_SERVER_RESPONSE_BACKOFF.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            a[b.INVALID_SERVER_RESPONSE_NOBACKOFF.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            a[b.CLEAR_AD_TYPE.ordinal()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            a[b.AD_WARMING_UP.ordinal()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror5)
        {
            return;
        }
    }
}
