// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.smartadserver.android.library.h.c;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.a;
import com.smartadserver.android.library.ui.d;
import java.util.Timer;

// Referenced classes of package com.smartadserver.android.library:
//            a

public class SASInterstitialView extends SASAdView
{

    private static final String o = com/smartadserver/android/library/SASInterstitialView.getSimpleName();
    private Timer n;
    private com.smartadserver.android.library.ui.c p;

    public SASInterstitialView(Context context)
    {
        super(context);
        n();
    }

    public SASInterstitialView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        n();
    }

    static com.smartadserver.android.library.ui.c a(SASInterstitialView sasinterstitialview)
    {
        return sasinterstitialview.p;
    }

    static Timer a(SASInterstitialView sasinterstitialview, Timer timer)
    {
        sasinterstitialview.n = timer;
        return timer;
    }

    static boolean b(SASInterstitialView sasinterstitialview)
    {
        return sasinterstitialview.d;
    }

    static Timer c(SASInterstitialView sasinterstitialview)
    {
        return sasinterstitialview.n;
    }

    static String d()
    {
        return o;
    }

    private void n()
    {
        p = new com.smartadserver.android.library.ui.c() {

            final SASInterstitialView a;

            public void onStateChanged(d d1)
            {
                this;
                JVM INSTR monitorenter ;
                if (d1.a() == 0)
                {
                    notifyAll();
                }
                this;
                JVM INSTR monitorexit ;
                return;
                Exception exception;
                exception;
                throw exception;
            }

            
            {
                a = SASInterstitialView.this;
                super();
            }
        };
        a(p);
    }

    private void o()
    {
        if (n != null)
        {
            n.cancel();
            com.smartadserver.android.library.h.c.a(o, "cancel timer");
        }
    }

    public void a()
    {
        super.a();
        h();
    }

    protected void a(int i, String s, int j, boolean flag, String s1, a a1, int k, 
            boolean flag1)
    {
        super.a(i, s, j, flag, s1, new com.smartadserver.android.library.a(this, a1), k, flag1);
    }

    public void a(View view)
    {
        a(new Runnable(view) {

            final View a;
            final SASInterstitialView b;

            public void run()
            {
                FrameLayout framelayout = b.getExpandParentView();
                if (framelayout != null && a != null)
                {
                    framelayout.addView(a);
                }
            }

            
            {
                b = SASInterstitialView.this;
                a = view;
                super();
            }
        });
    }

    public void b()
    {
        super.b();
        o();
    }

    public void b(View view)
    {
        if (view != null)
        {
            a(new Runnable(view) {

                final View a;
                final SASInterstitialView b;

                public void run()
                {
                    com.smartadserver.android.library.h.c.a(com.smartadserver.android.library.SASInterstitialView.d(), "REMOVE INTERSTITIAL LOADER VIEW");
                    FrameLayout framelayout = b.getExpandParentView();
                    if (framelayout != null && framelayout.indexOfChild(a) > -1)
                    {
                        framelayout.removeView(a);
                    }
                }

            
            {
                b = SASInterstitialView.this;
                a = view;
                super();
            }
            });
        }
    }

    public void c()
    {
        super.c();
        o();
    }

}
