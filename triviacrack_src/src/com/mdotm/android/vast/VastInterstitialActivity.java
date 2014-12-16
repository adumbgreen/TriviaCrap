// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.vast;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.mdotm.android.c.a;
import com.mdotm.android.c.b;
import com.mdotm.android.c.c;
import com.mdotm.android.e.d;
import com.mdotm.android.e.f;
import java.util.ArrayList;

// Referenced classes of package com.mdotm.android.vast:
//            f, e, b, c

public class VastInterstitialActivity extends Activity
    implements b, c
{

    boolean a;
    private e b;
    private a c;
    private long d;
    private boolean e;
    private Handler f;
    private com.mdotm.android.vast.f g;
    private ImageView h;
    private RelativeLayout i;
    private ArrayList j;

    public VastInterstitialActivity()
    {
        e = false;
        a = false;
    }

    static RelativeLayout a(VastInterstitialActivity vastinterstitialactivity)
    {
        return vastinterstitialactivity.i;
    }

    static void a(VastInterstitialActivity vastinterstitialactivity, boolean flag)
    {
        vastinterstitialactivity.e = flag;
    }

    static ImageView b(VastInterstitialActivity vastinterstitialactivity)
    {
        return vastinterstitialactivity.h;
    }

    static com.mdotm.android.vast.f c(VastInterstitialActivity vastinterstitialactivity)
    {
        return vastinterstitialactivity.g;
    }

    static boolean d(VastInterstitialActivity vastinterstitialactivity)
    {
        return vastinterstitialactivity.e;
    }

    static void e(VastInterstitialActivity vastinterstitialactivity)
    {
        vastinterstitialactivity.k();
    }

    static a f(VastInterstitialActivity vastinterstitialactivity)
    {
        return vastinterstitialactivity.c;
    }

    private RelativeLayout h()
    {
        i = new RelativeLayout(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(10);
        layoutparams.setMargins(0, 10, 10, 0);
        i.setId(4);
        i.setLayoutParams(layoutparams);
        ImageView imageview = new ImageView(this);
        imageview.setImageBitmap(a("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"));
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams1.addRule(11);
        imageview.setLayoutParams(layoutparams1);
        imageview.setOnClickListener(new android.view.View.OnClickListener() {

            final VastInterstitialActivity a;

            public void onClick(View view)
            {
                a.g();
                a.finish();
            }

            
            {
                a = VastInterstitialActivity.this;
                super();
            }
        });
        i.addView(imageview);
        i.setVisibility(4);
        return i;
    }

    private RelativeLayout i()
    {
        RelativeLayout relativelayout = new RelativeLayout(this);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(12);
        layoutparams.addRule(14);
        layoutparams.setMargins(10, 10, 10, 10);
        relativelayout.setLayoutParams(layoutparams);
        h = new ImageView(this);
        h.setBackgroundResource(0x1080024);
        android.widget.RelativeLayout.LayoutParams layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        h.setLayoutParams(layoutparams1);
        h.setId(5);
        h.setOnClickListener(new android.view.View.OnClickListener() {

            final VastInterstitialActivity a;

            public void onClick(View view)
            {
                if (view.isSelected())
                {
                    com.mdotm.android.vast.VastInterstitialActivity.b(a).setBackgroundResource(0x1080024);
                    com.mdotm.android.vast.VastInterstitialActivity.c(a).c();
                    view.setSelected(false);
                    return;
                } else
                {
                    com.mdotm.android.vast.VastInterstitialActivity.b(a).setBackgroundResource(0x1080023);
                    com.mdotm.android.vast.VastInterstitialActivity.c(a).b();
                    view.setSelected(true);
                    return;
                }
            }

            
            {
                a = VastInterstitialActivity.this;
                super();
            }
        });
        relativelayout.addView(h);
        return relativelayout;
    }

    private RelativeLayout j()
    {
        com.mdotm.android.e.d.b(this, "getVideoLayout");
        RelativeLayout relativelayout = new RelativeLayout(this);
        relativelayout.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        g.setOnTouchListener(new android.view.View.OnTouchListener() {

            final VastInterstitialActivity a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                int l = motionevent.getAction();
                com.mdotm.android.e.d.b(this, (new StringBuilder("onTouch :: ")).append(l).toString());
                if (l == 0 && !com.mdotm.android.vast.VastInterstitialActivity.d(a))
                {
                    com.mdotm.android.vast.VastInterstitialActivity.a(a, true);
                    VastInterstitialActivity.e(a);
                }
                return false;
            }

            
            {
                a = VastInterstitialActivity.this;
                super();
            }
        });
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-2, -2);
        layoutparams.addRule(13);
        g.setLayoutParams(layoutparams);
        relativelayout.addView(g);
        relativelayout.addView(h());
        relativelayout.addView(i());
        return relativelayout;
    }

    private void k()
    {
        com.mdotm.android.e.d.b(this, "  Ad clicked  ");
        if (j != null && j.size() > 0)
        {
            int l = 0;
            do
            {
                if (l >= j.size())
                {
                    return;
                }
                (new Thread((String)j.get(l)) {

                    final VastInterstitialActivity a;
                    private final String b;

                    public void run()
                    {
                        a.c();
                        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(b));
                        intent.addFlags(0x10000000);
                        try
                        {
                            a.startActivity(intent);
                        }
                        catch (Exception exception)
                        {
                            com.mdotm.android.e.d.b(this, (new StringBuilder("Could not open browser on ad click to ")).append(exception).toString());
                        }
                        if (com.mdotm.android.vast.VastInterstitialActivity.f(a) != null)
                        {
                            com.mdotm.android.vast.VastInterstitialActivity.f(a).b();
                        }
                    }

            
            {
                a = VastInterstitialActivity.this;
                b = s;
                super();
            }
                }).start();
                l++;
            } while (true);
        } else
        {
            com.mdotm.android.e.d.a(this, "selected ads landing url is null");
            return;
        }
    }

    public Bitmap a(String s)
    {
        Bitmap bitmap;
        try
        {
            byte abyte0[] = com.mdotm.android.e.c.a(s, 0);
            bitmap = BitmapFactory.decodeByteArray(abyte0, 0, abyte0.length);
        }
        catch (Exception exception)
        {
            exception.getMessage();
            return null;
        }
        return bitmap;
    }

    public void a()
    {
        com.mdotm.android.e.d.b(this, "show close button");
        f.post(new Runnable() {

            final VastInterstitialActivity a;

            public void run()
            {
                if (com.mdotm.android.vast.VastInterstitialActivity.a(a) != null)
                {
                    com.mdotm.android.vast.VastInterstitialActivity.a(a).setVisibility(0);
                }
            }

            
            {
                a = VastInterstitialActivity.this;
                super();
            }
        });
    }

    public void b()
    {
        h.setBackgroundResource(0x1080023);
        h.setSelected(true);
    }

    public void c()
    {
        e = true;
        com.mdotm.android.e.d.b(this, "clicked on ad");
        if (c != null)
        {
            c.d();
        }
        if (g != null)
        {
            g.d();
        }
    }

    public void d()
    {
        if (c != null)
        {
            c.b();
        }
    }

    public void e()
    {
        com.mdotm.android.e.d.b(this, "completed playing video");
        h.setBackgroundResource(0x1080024);
        h.setSelected(false);
    }

    public void f()
    {
        com.mdotm.android.e.d.b(this, "Error while palying video");
        if (c != null)
        {
            c.c();
        }
        g();
    }

    public void g()
    {
        com.mdotm.android.e.d.b(this, "onDismiss is called");
        a = true;
        if (c != null)
        {
            c.a();
        } else
        {
            com.mdotm.android.e.d.a(this, "InterstitialActionListener is null. So ignoring the interstitial dismiss callback");
        }
        finish();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    protected void onCreate(Bundle bundle)
    {
        com.mdotm.android.e.d.b(this, "onCreate is called");
        super.onCreate(bundle);
        f = new Handler();
        b = (e)getIntent().getExtras().getSerializable("response");
        d = getIntent().getExtras().getLong("InterstitialActionListenerId");
        com.mdotm.android.e.d.b(this, (new StringBuilder("listener id ")).append(d).toString());
        c = com.mdotm.android.e.f.a().a(d);
        if (b == null) goto _L2; else goto _L1
_L1:
        RelativeLayout relativelayout;
        ArrayList arraylist;
        int l;
        if (getIntent().getExtras().getInt("ScreenOrientation") == 1)
        {
            setRequestedOrientation(7);
        } else
        if (getIntent().getExtras().getInt("ScreenOrientation") == 2)
        {
            setRequestedOrientation(6);
        }
        relativelayout = new RelativeLayout(this);
        relativelayout.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-1, -1));
        relativelayout.setBackgroundColor(0xff444444);
        arraylist = b.c();
        l = ((com.mdotm.android.vast.b)arraylist.get(0)).a();
        com.mdotm.android.e.d.b(this, (new StringBuilder("Vast ad type :: ")).append(l).toString());
        l;
        JVM INSTR tableswitch 1 1: default 220
    //                   1 265;
           goto _L3 _L4
_L3:
        com.mdotm.android.e.d.a(this, "This format is not supported ");
        g();
_L6:
        com.mdotm.android.e.d.b(this, "onCreate finish");
        return;
_L4:
        com.mdotm.android.vast.c c1 = (com.mdotm.android.vast.c)arraylist.get(0);
        j = c1.c();
        g = new com.mdotm.android.vast.f(this, c1, this, this, f);
        relativelayout.addView(j());
        setContentView(relativelayout);
        continue; /* Loop/switch isn't completed */
_L2:
        com.mdotm.android.e.d.b(this, "Ad response is null");
        g();
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onDestroy()
    {
        super.onDestroy();
        com.mdotm.android.e.f.a().b(d);
        if (g != null)
        {
            g.d();
        }
    }

    public boolean onKeyDown(int l, KeyEvent keyevent)
    {
label0:
        {
            com.mdotm.android.e.d.b(this, (new StringBuilder("Key down ")).append(l).toString());
            if (l == 4)
            {
                if (i == null || i.getVisibility() != 0)
                {
                    break label0;
                }
                g();
            }
            return super.onKeyDown(l, keyevent);
        }
        return true;
    }

    protected void onPause()
    {
        com.mdotm.android.e.d.b(this, "onPause is called");
        super.onPause();
        if (g != null)
        {
            g.c();
        }
        if (!e && !a)
        {
            g();
        }
    }

    protected void onResume()
    {
        if (!e) goto _L2; else goto _L1
_L1:
        e = false;
        g();
_L4:
        super.onResume();
        return;
_L2:
        if (g != null && g.a())
        {
            g.b();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }
}
