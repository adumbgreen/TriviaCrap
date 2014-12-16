// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library;

import com.smartadserver.android.library.a.b;
import com.smartadserver.android.library.h.c;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.smartadserver.android.library:
//            SASInterstitialView

class a
    implements com.smartadserver.android.library.ui.a
{

    com.smartadserver.android.library.ui.a a;
    final SASInterstitialView b;

    public a(SASInterstitialView sasinterstitialview, com.smartadserver.android.library.ui.a a1)
    {
        b = sasinterstitialview;
        super();
        a = a1;
    }

    public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
    {
        c.a(SASInterstitialView.d(), "adLoadingCompleted in interstitial");
        if (b.getExpandParentView() != null) goto _L2; else goto _L1
_L1:
        if (a != null)
        {
            b b1 = new b("Interstitial view could not be displayed. Ensure either that the parent Activity is passed to its constructor or that this interstitial is part of the UI hierarchy ");
            a.adLoadingFailed(b1);
        }
_L5:
        return;
_L2:
        com.smartadserver.android.library.controller.mraid.a a2;
        a2 = b.g.a;
        b.a(new Runnable() {

            final a a;

            public void run()
            {
                a..setVisibility(0);
            }

            
            {
                a = a.this;
                super();
            }
        });
        com.smartadserver.android.library.ui.c c1 = SASInterstitialView.a(b);
        c1;
        JVM INSTR monitorenter ;
        if (a2 == null)
        {
            break MISSING_BLOCK_LABEL_92;
        }
        a2.expand();
        SASInterstitialView.a(b).wait();
_L3:
        c1;
        JVM INSTR monitorexit ;
        int i = a1.h();
        if (i > 0)
        {
            SASInterstitialView.a(b, new Timer());
            com.smartadserver.android.library.SASInterstitialView.c(b).schedule(new TimerTask() {

                final a a;

                public void run()
                {
                    if (!com.smartadserver.android.library.SASInterstitialView.b(a.))
                    {
                        a..a(new Runnable(this) {

                            final _cls2 a;

                            public void run()
                            {
                                a.a..g();
                            }

            
            {
                a = _pcls2;
                super();
            }
                        });
                        com.smartadserver.android.library.SASInterstitialView.c(a.).cancel();
                    }
                }

            
            {
                a = a.this;
                super();
            }
            }, i);
        }
        if (a != null)
        {
            a.adLoadingCompleted(a1);
            return;
        }
        continue; /* Loop/switch isn't completed */
        InterruptedException interruptedexception;
        interruptedexception;
        interruptedexception.printStackTrace();
          goto _L3
        Exception exception;
        exception;
        c1;
        JVM INSTR monitorexit ;
        throw exception;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void adLoadingFailed(Exception exception)
    {
        if (a != null)
        {
            a.adLoadingFailed(exception);
        }
    }
}
