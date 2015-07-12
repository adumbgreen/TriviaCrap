// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import android.os.Handler;
import com.etermax.adsinterface.f;
import com.smartadserver.android.library.ui.a;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsInterstitialContainer

class this._cls0
    implements a
{

    final SmartAdsInterstitialContainer this$0;

    public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
    {
        com.etermax.a.a.c("admob ads", "SmartAdsInterstitialContainer - adLoadingCompleted");
        try
        {
            SmartAdsInterstitialContainer.access$000(SmartAdsInterstitialContainer.this).post(new Runnable() {

                final SmartAdsInterstitialContainer._cls2 this$1;

                public void run()
                {
                    f.a();
                }

            
            {
                this$1 = SmartAdsInterstitialContainer._cls2.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception)
        {
            com.etermax.a.a.a("SMARTADS", "Error calling ShowInterstitialListener onSuccess()", exception);
        }
    }

    public void adLoadingFailed(Exception exception)
    {
        com.etermax.a.a.c("admob ads", "SmartAdsInterstitialContainer - adLoadingFailed");
        try
        {
            SmartAdsInterstitialContainer.access$000(SmartAdsInterstitialContainer.this).post(new Runnable() {

                final SmartAdsInterstitialContainer._cls2 this$1;

                public void run()
                {
                    f.b();
                }

            
            {
                this$1 = SmartAdsInterstitialContainer._cls2.this;
                super();
            }
            });
            return;
        }
        catch (Exception exception1)
        {
            com.etermax.a.a.a("SMARTADS", "Error calling ShowInterstitialListener onFailed()", exception1);
        }
    }

    _cls2.this._cls1()
    {
        this$0 = SmartAdsInterstitialContainer.this;
        super();
    }
}
