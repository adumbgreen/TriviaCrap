// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.util.Log;

// Referenced classes of package com.millennialmedia.android:
//            RequestListener, MMException, MMAd

public class 
    implements RequestListener
{

    public void MMAdOverlayClosed(MMAd mmad)
    {
        Log.i("MMSDK", "Millennial Media Ad View overlay closed");
    }

    public void MMAdOverlayLaunched(MMAd mmad)
    {
        Log.i("MMSDK", "Millennial Media Ad View overlay launched");
    }

    public void MMAdRequestIsCaching(MMAd mmad)
    {
        Log.i("MMSDK", "Millennial Media Ad View caching request");
    }

    public void onSingleTap(MMAd mmad)
    {
        Log.i("MMSDK", "Ad tapped");
    }

    public void requestCompleted(MMAd mmad)
    {
        Log.i("MMSDK", "Ad request succeeded");
    }

    public void requestFailed(MMAd mmad, MMException mmexception)
    {
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(mmexception.getCode());
        aobj[1] = mmexception.getMessage();
        Log.i("MMSDK", String.format("Ad request failed with error: %d %s.", aobj));
    }

    public ()
    {
    }
}
