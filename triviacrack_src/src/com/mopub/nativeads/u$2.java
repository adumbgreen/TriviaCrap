// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.nativeads;

import android.os.Handler;
import java.util.List;

// Referenced classes of package com.mopub.nativeads:
//            u, aj, v, NativeErrorCode, 
//            NativeResponse

class a
    implements bNative.MoPubNativeNetworkListener
{

    final u a;

    public void onNativeFail(NativeErrorCode nativeerrorcode)
    {
        a.a = false;
        if (a.d >= 0x493e0)
        {
            a.d();
            return;
        } else
        {
            a.c();
            a.b = true;
            u.e(a).postDelayed(u.d(a), a.d);
            return;
        }
    }

    public void onNativeLoad(NativeResponse nativeresponse)
    {
        if (u.a(a) == null)
        {
            return;
        }
        a.a = false;
        u u1 = a;
        u1.c = 1 + u1.c;
        a.d();
        u.b(a).add(new aj(nativeresponse));
        if (u.b(a).size() == 1 && u.c(a) != null)
        {
            u.c(a).onAdsAvailable();
        }
        a.e();
    }

    veResponse(u u1)
    {
        a = u1;
        super();
    }
}
