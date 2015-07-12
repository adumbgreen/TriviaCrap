// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.RelativeLayout;

// Referenced classes of package com.millennialmedia.android:
//            MMBaseActivity, MMActivity, AdViewOverlayView, OverlaySettings, 
//            MMLog, MMAdImpl, MMAdImplController, MMWebView

class AdViewOverlayActivity extends MMBaseActivity
{

    boolean a;
    boolean b;
    private AdViewOverlayView d;
    private OverlaySettings e;

    AdViewOverlayActivity()
    {
    }

    private void a(String s)
    {
        if ("landscape".equalsIgnoreCase(s))
        {
            setRequestedOrientation(0);
        } else
        if ("portrait".equalsIgnoreCase(s))
        {
            setRequestedOrientation(1);
            return;
        }
    }

    private void g()
    {
        if (c.getRequestedOrientation() == 0)
        {
            setRequestedOrientation(0);
            return;
        }
        if (c.getRequestedOrientation() == 8)
        {
            setRequestedOrientation(8);
            return;
        }
        if (c.getRequestedOrientation() == 9)
        {
            setRequestedOrientation(9);
            return;
        } else
        {
            setRequestedOrientation(1);
            return;
        }
    }

    protected void a(Bundle bundle)
    {
        if (d != null)
        {
            bundle.putInt("adViewId", d.getId());
        }
        super.a(bundle);
    }

    void a(boolean flag)
    {
        e.h = flag;
        if (flag)
        {
            n_();
            return;
        } else
        {
            g();
            return;
        }
    }

    void b()
    {
        e.c = "portrait";
        e.h = false;
        setRequestedOrientation(1);
    }

    protected void b(Bundle bundle)
    {
        super.b(bundle);
    }

    void c()
    {
        e.c = "landscape";
        e.h = false;
        setRequestedOrientation(0);
    }

    protected void d()
    {
        b = false;
        MMLog.b("AdViewOverlayActivity", "Overlay onResume");
        if (d != null)
        {
            if (a)
            {
                d.q();
            }
            d.addBlackView();
            if (d.h != null && d.h.k != null && d.h.k.b != null)
            {
                d.h.k.b.onResumeWebView();
            }
        }
        super.d();
    }

    protected void e()
    {
        BridgeMMMedia.Audio audio;
        b = true;
        MMLog.b("AdViewOverlayActivity", "Overlay onPause");
        audio = BridgeMMMedia.Audio.a(c);
        if (audio == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        audio.b();
        this;
        JVM INSTR monitorexit ;
_L2:
        if (d != null)
        {
            d.p();
            if (d.h != null && d.h.k != null && d.h.k.b != null)
            {
                d.h.k.b.onPauseWebView();
            }
        }
        setResult(0);
        super.e();
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void f()
    {
        super.f();
    }

    public void finish()
    {
        if (d != null)
        {
            if (!d.d())
            {
                d.k();
            }
            d.j();
        }
        d = null;
        super.finish();
    }

    void n_()
    {
        setRequestedOrientation(-1);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        if (d != null)
        {
            d.i();
        }
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        setTheme(0x1030010);
        super.onCreate(bundle);
        requestWindowFeature(1);
        getWindow().setBackgroundDrawable(new ColorDrawable(0));
        getWindow().clearFlags(1024);
        getWindow().addFlags(2048);
        getWindow().addFlags(0x1000000);
        Intent intent = getIntent();
        e = (OverlaySettings)intent.getParcelableExtra("settings");
        if (e == null)
        {
            e = new OverlaySettings();
        }
        e.a();
        if (e.c != null)
        {
            a(e.c);
        }
        RelativeLayout relativelayout;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        if (e.h)
        {
            n_();
        } else
        {
            g();
        }
        if (intent != null)
        {
            Uri uri = intent.getData();
            if (uri != null)
            {
                Object aobj[] = new Object[1];
                aobj[0] = uri.getLastPathSegment();
                MMLog.a("AdViewOverlayActivity", String.format("Path: %s", aobj));
            }
        }
        relativelayout = new RelativeLayout(c);
        layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13);
        relativelayout.setId(0x34c60db9);
        relativelayout.setLayoutParams(layoutparams);
        d = new AdViewOverlayView(this, e);
        relativelayout.addView(d);
        setContentView(relativelayout);
        if (getLastNonConfigurationInstance() != null) goto _L2; else goto _L1
_L1:
        if (!e.b()) goto _L4; else goto _L3
_L3:
        if (d.h != null && d.h.k != null && d.h.k.b != null)
        {
            d.h.k.b.r();
        }
        if (e.d())
        {
            d.a(e.d);
        }
_L2:
        e.c = null;
        return;
_L4:
        if (!e.b())
        {
            d.a(e.i, e.j);
        }
        if (true) goto _L2; else goto _L5
_L5:
    }

    protected void onDestroy()
    {
        super.onDestroy();
        MMLog.b("AdViewOverlayActivity", "Overlay onDestroy");
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        if (i == 4 && keyevent.getRepeatCount() == 0 && d != null)
        {
            d.c();
            return true;
        } else
        {
            return super.onKeyDown(i, keyevent);
        }
    }

    public Object onRetainNonConfigurationInstance()
    {
        if (d != null)
        {
            return d.a();
        } else
        {
            return null;
        }
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        a = flag;
        if (!b && flag)
        {
            d.q();
        }
    }
}
