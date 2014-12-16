// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.mopubads.custom.a;

import android.os.Handler;
import com.etermax.adsinterface.f;
import com.smartadserver.android.library.ui.a;

// Referenced classes of package com.etermax.mopubads.custom.a:
//            c

class a
    implements Runnable
{

    final a a;

    public void run()
    {
        f.a();
    }

    a(a a1)
    {
        a = a1;
        super();
    }

    // Unreferenced inner class com/etermax/mopubads/custom/a/c$2

/* anonymous class */
    class c._cls2
        implements a
    {

        final c a;

        public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
        {
            com.etermax.a.a.c("mopub ads", "SmartAdsInterstitialContainer - adLoadingCompleted");
            try
            {
                com.etermax.mopubads.custom.a.c.a(a).post(new c._cls2._cls1(this));
                return;
            }
            catch (Exception exception)
            {
                com.etermax.a.a.a("mopub ads", "Error calling ShowInterstitialListener onSuccess()", exception);
            }
        }

        public void adLoadingFailed(Exception exception)
        {
            com.etermax.a.a.c("mopub ads", "SmartAdsInterstitialContainer - adLoadingFailed");
            try
            {
                com.etermax.mopubads.custom.a.c.a(a).post(new c._cls2._cls2());
                return;
            }
            catch (Exception exception1)
            {
                com.etermax.a.a.a("mopub ads", "Error calling ShowInterstitialListener onFailed()", exception1);
            }
        }

            
            {
                a = c1;
                super();
            }

        // Unreferenced inner class com/etermax/mopubads/custom/a/c$2$2

/* anonymous class */
        class c._cls2._cls2
            implements Runnable
        {

            final c._cls2 a;

            public void run()
            {
                f.b();
            }

                    
                    {
                        a = c._cls2.this;
                        super();
                    }
        }

    }

}
