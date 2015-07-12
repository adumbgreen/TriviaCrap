// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import com.mopub.common.BaseUrlGenerator;
import com.mopub.common.ClientMetadata;

// Referenced classes of package com.mopub.mobileads:
//            MoPubConversionTracker

class ab extends BaseUrlGenerator
{

    final MoPubConversionTracker a;

    private ab(MoPubConversionTracker mopubconversiontracker)
    {
        a = mopubconversiontracker;
        super();
    }

    ab(MoPubConversionTracker mopubconversiontracker, MoPubConversionTracker._cls1 _pcls1)
    {
        this(mopubconversiontracker);
    }

    private void a(String s)
    {
        b("id", s);
    }

    public String generateUrlString(String s)
    {
        a(s, "/m/open");
        j("6");
        a(MoPubConversionTracker.a(a));
        ClientMetadata clientmetadata = ClientMetadata.getInstance(MoPubConversionTracker.b(a));
        l(clientmetadata.getAdvertisingId());
        c(clientmetadata.isDoNotTrackSet());
        k(clientmetadata.getAppVersion());
        return b();
    }
}
