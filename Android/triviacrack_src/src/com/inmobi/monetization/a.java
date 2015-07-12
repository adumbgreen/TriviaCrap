// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.monetization;

import android.os.Handler;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;

// Referenced classes of package com.inmobi.monetization:
//            IMNative, IMErrorCode, IMNativeListener

class a
    implements INativeAdListener
{

    final IMNative a;

    a(IMNative imnative)
    {
        a = imnative;
        super();
    }

    public void onNativeRequestFailed(IMErrorCode imerrorcode)
    {
        try
        {
            IMNative.a(a, IMNative.a.f);
            class a
                implements Runnable
            {

                final IMErrorCode a;
                final a b;

                public void run()
                {
                    if (IMNative.d(b.a) != null)
                    {
                        IMNative.d(b.a).onNativeRequestFailed(a);
                    }
                }

            a(IMErrorCode imerrorcode)
            {
                b = a.this;
                a = imerrorcode;
                super();
            }
            }

            IMNative.e(a).post(new a(imerrorcode));
            return;
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
        }
    }

    public void onNativeRequestSucceeded(IMNative imnative)
    {
        try
        {
            IMNative.a(a, IMNative.a.c);
            IMNative.a(a, IMNative.c(imnative));
            IMNative.b(a, IMNative.a(imnative));
            IMNative.c(a, IMNative.b(imnative));
            IMNative.a(a, true);
            class b
                implements Runnable
            {

                final a a;

                public void run()
                {
                    try
                    {
                        if (IMNative.d(a.a) != null)
                        {
                            IMNative.d(a.a).onNativeRequestSucceeded(a.a);
                        }
                        return;
                    }
                    catch (Exception exception1)
                    {
                        exception1.printStackTrace();
                    }
                    Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
                }

            b()
            {
                a = a.this;
                super();
            }
            }

            IMNative.e(a).post(new b());
            return;
        }
        catch (Exception exception)
        {
            Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
        }
    }
}
