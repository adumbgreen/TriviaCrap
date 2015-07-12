// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.monetization;

import android.os.Handler;
import com.inmobi.commons.internal.Log;
import com.inmobi.monetization.internal.abstraction.INativeAdListener;

// Referenced classes of package com.inmobi.monetization:
//            a, IMNative, IMNativeListener, IMErrorCode

class a
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
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
    }

    tive(a a1)
    {
        a = a1;
        super();
    }

    // Unreferenced inner class com/inmobi/monetization/a
    class a
        implements INativeAdListener
    {

        final IMNative a;

        public void onNativeRequestFailed(IMErrorCode imerrorcode)
        {
            try
            {
                IMNative.a(a, IMNative.a.f);
                IMNative.e(a).post(new a.a(imerrorcode));
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
                IMNative.e(a).post(new a.b(this));
                return;
            }
            catch (Exception exception)
            {
                Log.debug("[InMobi]-[Monetization]", "Failed to give callback");
            }
        }

            a(IMNative imnative)
            {
                a = imnative;
                super();
            }

        // Unreferenced inner class com/inmobi/monetization/a$a
        class a.a
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

                    a.a(IMErrorCode imerrorcode)
                    {
                        b = a.this;
                        a = imerrorcode;
                        super();
                    }
        }

    }

}
