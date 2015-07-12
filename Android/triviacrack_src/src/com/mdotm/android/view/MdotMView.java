// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Point;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.RelativeLayout;
import com.mdotm.android.c.c;
import com.mdotm.android.c.d;
import com.mdotm.android.c.e;
import com.mdotm.android.d.a;
import com.mdotm.android.d.b;
import com.mdotm.android.e.f;
import java.util.Timer;
import java.util.TimerTask;

// Referenced classes of package com.mdotm.android.view:
//            MdotMBannerView, a

class MdotMView extends RelativeLayout
    implements c, d, e
{

    Handler a;
    Timer b;
    public boolean c;
    private d d;
    private a e;
    private Context f;
    private boolean g;
    private boolean h;
    private int i;

    public MdotMView(Context context)
    {
        super(context);
        d = null;
        e = null;
        g = false;
        h = true;
        c = false;
        f = context;
        a = new Handler();
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
    }

    public MdotMView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        d = null;
        e = null;
        g = false;
        h = true;
        c = false;
        f = context;
        a = new Handler();
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
    }

    public MdotMView(Context context, AttributeSet attributeset, int j)
    {
        super(context, attributeset, j);
        d = null;
        e = null;
        g = false;
        h = true;
        c = false;
    }

    private int a(int j)
    {
        return (int)(0.5F + f.getResources().getDisplayMetrics().density * (float)j);
    }

    private void a()
    {
        com.mdotm.android.e.d.b(this, "Sending request ");
        String as[] = e.g().split(",");
        if (!a(f) && (Integer.parseInt(as[0]) == 468 || Integer.parseInt(as[0]) == 728))
        {
            com.mdotm.android.e.d.b(this, "Sending ad request of tablet size for phone ");
            d.onFailedToReceiveBannerAd();
        } else
        {
            int j = a(Integer.parseInt(as[0]));
            int k = a(Integer.parseInt(as[1]));
            if (j <= getDeviceWidth())
            {
                e.c((new StringBuilder(String.valueOf(j))).append(",").append(k).toString());
            }
            if (e.f() > 0)
            {
                b();
                return;
            }
            if (h)
            {
                com.mdotm.android.e.d.b(this, "MdotMView is visible so requesting for ad");
                com.mdotm.android.b.e.a(f).a(e, this);
                com.mdotm.android.b.e.a(f).a(h);
                return;
            }
        }
    }

    static boolean a(MdotMView mdotmview)
    {
        return mdotmview.h;
    }

    static Context b(MdotMView mdotmview)
    {
        return mdotmview.f;
    }

    private void b()
    {
        int j = 1000 * e.f();
        b = new Timer();
        b.scheduleAtFixedRate(new TimerTask() {

            final MdotMView a;

            static MdotMView a(_cls1 _pcls1)
            {
                return _pcls1.a;
            }

            public void run()
            {
                a.a.post(new Runnable(this) {

                    final _cls1 a;

                    public void run()
                    {
                        if (com.mdotm.android.view.MdotMView.a(com.mdotm.android.view._cls1.a(a)))
                        {
                            com.mdotm.android.e.d.b(this, (new StringBuilder("MdotMView has focus")).append(com.mdotm.android.view.MdotMView.a(com.mdotm.android.view._cls1.a(a))).toString());
                            com.mdotm.android.e.d.b(this, "Begining next request");
                            com.mdotm.android.b.e.a(com.mdotm.android.view.MdotMView.b(com.mdotm.android.view._cls1.a(a))).a(com.mdotm.android.view.MdotMView.c(com.mdotm.android.view._cls1.a(a)), com.mdotm.android.view._cls1.a(a));
                            return;
                        } else
                        {
                            com.mdotm.android.e.d.b(this, "MdotMView does not has focus. So Ad request cancelled");
                            return;
                        }
                    }

            
            {
                a = _pcls1;
                super();
            }
                });
            }

            
            {
                a = MdotMView.this;
                super();
            }
        }, 1000, j);
    }

    static a c(MdotMView mdotmview)
    {
        return mdotmview.e;
    }

    static d d(MdotMView mdotmview)
    {
        return mdotmview.d;
    }

    private int getDeviceWidth()
    {
        Display display = ((WindowManager)getContext().getSystemService("window")).getDefaultDisplay();
        if (android.os.Build.VERSION.SDK_INT < 13)
        {
            i = display.getWidth();
        } else
        {
            Point point = new Point();
            display.getSize(point);
            i = point.x;
        }
        return i;
    }

    public void a(b b1)
    {
        if (b1 != null && b1.l() != 0)
        {
            com.mdotm.android.e.d.b(this, (new StringBuilder("adResponse.isRequestForBannerAd() = ")).append(b1.a()).toString());
            if (b1.a())
            {
                a.post(new Runnable(b1) {

                    final MdotMView a;
                    private final b b;

                    public void run()
                    {
                        a.removeAllViews();
                        View view = a.b(b);
                        if (view != null)
                        {
                            a.addView(view);
                            if (com.mdotm.android.view.MdotMView.d(a) != null)
                            {
                                com.mdotm.android.view.MdotMView.d(a).onReceiveBannerAd();
                            }
                        } else
                        if (com.mdotm.android.view.MdotMView.d(a) != null)
                        {
                            com.mdotm.android.view.MdotMView.d(a).onFailedToReceiveBannerAd();
                            return;
                        }
                    }

            
            {
                a = MdotMView.this;
                b = b1;
                super();
            }
                });
            }
        } else
        if (d != null)
        {
            d.onFailedToReceiveBannerAd();
            return;
        }
    }

    public void a(com.mdotm.android.vast.e e1)
    {
    }

    public boolean a(Context context)
    {
        boolean flag;
        boolean flag1;
        if ((0xf & context.getResources().getConfiguration().screenLayout) == 4)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if ((0xf & context.getResources().getConfiguration().screenLayout) == 3)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        return flag || flag1;
    }

    public View b(b b1)
    {
        MdotMBannerView mdotmbannerview;
        if (c || b1.b() != f.b && b1.b() != f.a)
        {
            break MISSING_BLOCK_LABEL_227;
        }
        if (b1.g() != com.mdotm.android.b.c.f || b1.b() != f.b)
        {
            break MISSING_BLOCK_LABEL_130;
        }
        mdotmbannerview = new MdotMBannerView(f);
        ((MdotMBannerView)mdotmbannerview).a(f, b1, this);
        com.mdotm.android.e.d.b(this, "continuing");
        if (((MdotMBannerView)mdotmbannerview).a) goto _L2; else goto _L1
_L1:
        mdotmbannerview = null;
_L4:
        return mdotmbannerview;
_L2:
        if (!h || c) goto _L4; else goto _L3
_L3:
        com.mdotm.android.e.d.b(this, "Call report impression image");
        com.mdotm.android.e.f.a().a(b1.c(), getContext());
        return mdotmbannerview;
        if (b1.g() == com.mdotm.android.b.c.h || b1.g() == com.mdotm.android.b.c.i || b1.g() == com.mdotm.android.b.c.f && b1.b() == f.a)
        {
            if (h)
            {
                com.mdotm.android.e.d.b(this, "html resource");
                return new com.mdotm.android.view.a(f, b1, this, 0);
            } else
            {
                com.mdotm.android.e.d.b(this, "mAdViewHasFocus = false");
                return null;
            }
        }
        if (b1.g() == com.mdotm.android.b.c.g)
        {
            com.mdotm.android.e.d.a(this, "Video is not supported");
            return null;
        }
        return null;
    }

    public void b(d d1, a a1)
    {
        d = d1;
        e = a1;
        e.b(false);
        a();
    }

    public void c()
    {
        if (d != null)
        {
            d.onBannerAdClick();
        }
    }

    public void d()
    {
        g = true;
        if (d != null)
        {
            d.onLeaveApplicationFromBanner();
        }
    }

    public void didShowInterstitial()
    {
    }

    public void e()
    {
    }

    public void f()
    {
    }

    public void onBannerAdClick()
    {
        Log.d("yes", "banner clicked");
    }

    public void onDismissScreen()
    {
        if (d != null)
        {
            d.onDismissScreen();
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
    }

    public void onFailedToReceiveBannerAd()
    {
    }

    public void onFailedToReceiveInterstitialAd()
    {
    }

    public void onInterstitialAdClick()
    {
    }

    public void onInterstitialDismiss()
    {
    }

    public void onLeaveApplicationFromBanner()
    {
    }

    public void onLeaveApplicationFromInterstitial()
    {
    }

    public void onReceiveBannerAd()
    {
    }

    public void onReceiveInterstitialAd()
    {
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        com.mdotm.android.e.d.b(this, (new StringBuilder("Window focused ")).append(flag).toString());
        if (flag)
        {
            h = true;
            com.mdotm.android.b.e.a(f).a(h);
        } else
        {
            h = false;
            com.mdotm.android.b.e.a(f).a(h);
        }
        if (flag && g)
        {
            com.mdotm.android.e.d.b(this, (new StringBuilder("Focus gained ")).append(flag).toString());
            g = false;
            onDismissScreen();
        }
    }

    public void willShowInterstitial()
    {
    }
}
