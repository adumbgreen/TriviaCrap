// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;


// Referenced classes of package com.mopub.nativeads:
//            b, NativeResponse

class a
    implements b
{

    final NativeResponse a;

    public void onAdClicked()
    {
        a.handleClick(null);
    }

    public void onAdImpressed()
    {
        a.recordImpression(null);
    }

    (NativeResponse nativeresponse)
    {
        a = nativeresponse;
        super();
    }
}
