// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.ImageView;
import com.etermax.a.a;
import com.etermax.i;
import com.etermax.k;
import com.etermax.p;
import java.io.UnsupportedEncodingException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.params.HttpParams;

// Referenced classes of package com.etermax.adsinterface.a:
//            a, e, l

public class d extends Dialog
    implements android.view.View.OnClickListener
{

    private static long a = 3000L;
    private e b;
    private com.etermax.adsinterface.a.a c;
    private ViewGroup d;
    private Button e;
    private ImageView f;
    private long g;
    private Bitmap h;

    public d(Context context, e e1)
    {
        super(context, p.CustomDialogAdMobs);
        b = e1;
        g = SystemClock.elapsedRealtime();
    }

    static Button a(d d1)
    {
        return d1.e;
    }

    private void a(String s)
    {
        (new Thread(new Runnable(s) {

            final String a;
            final d b;

            public void run()
            {
                try
                {
                    DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
                    defaulthttpclient.getParams().setParameter("http.useragent", "Custom user agent");
                    defaulthttpclient.execute(new HttpPost(a));
                    return;
                }
                catch (Exception exception)
                {
                    exception.printStackTrace();
                }
            }

            
            {
                b = d.this;
                a = s;
                super();
            }
        })).start();
    }

    private void b()
    {
        if (c.h())
        {
            e.setVisibility(8);
            (new Handler()).postDelayed(new Runnable() {

                final d a;

                public void run()
                {
                    com.etermax.adsinterface.a.d.a(a).setVisibility(0);
                }

            
            {
                a = d.this;
                super();
            }
            }, a);
        }
    }

    public void a()
    {
        c = null;
        if (h != null && !h.isRecycled())
        {
            h.recycle();
        }
        h = null;
    }

    public void a(com.etermax.adsinterface.a.a a1, Bitmap bitmap)
    {
        c = a1;
        d.setVisibility(8);
        f.setVisibility(0);
        h = bitmap;
        f.setImageBitmap(h);
        b();
    }

    public void a(com.etermax.adsinterface.a.a a1, WebView webview)
    {
        c = a1;
        f.setVisibility(8);
        d.removeAllViews();
        d.addView(webview);
        d.setVisibility(0);
        b();
    }

    public void onBackPressed()
    {
        super.onBackPressed();
        b.onAdCanceled();
    }

    public void onClick(View view)
    {
        Intent intent;
        String s;
        String s1;
        try
        {
            if (view == e)
            {
                b.onAdCanceled();
                dismiss();
                return;
            }
        }
        catch (ActivityNotFoundException activitynotfoundexception)
        {
            com.etermax.a.a.a("ActivityNotFoundException", "error while trying to open link", activitynotfoundexception);
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            com.etermax.a.a.a("NullPointerException", "error while trying to click link more than once", nullpointerexception);
            return;
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            com.etermax.a.a.a("UnsupportedEncodingException", "error while trying to add session GET parameter in link", unsupportedencodingexception);
            return;
        }
        com.etermax.a.a.c("admob ads", "CustomAdsContainer - onClick");
        intent = new Intent();
        if (c.g() == null) goto _L2; else goto _L1
_L1:
        String s2 = c.g();
        intent.setClassName(view.getContext(), s2);
        if (c.a() != null)
        {
            intent.putExtra("com.etermax.gamescommon.from", c.a());
        }
_L3:
        intent.addFlags(0x14000000);
        getContext().startActivity(intent);
        a(c.d());
        b.onAdClicked();
        dismiss();
        return;
_L2:
        s = c.c();
        if (!c.k())
        {
            break MISSING_BLOCK_LABEL_228;
        }
        s1 = ((l)view.getContext().getApplicationContext()).c(s);
_L4:
        intent.setAction("android.intent.action.VIEW");
        intent.setData(Uri.parse(s1));
          goto _L3
        s1 = s;
          goto _L4
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(k.interstitial_container);
        getWindow().setLayout(-1, -1);
        setCancelable(true);
        setCanceledOnTouchOutside(false);
        f = (ImageView)findViewById(i.ad_image);
        e = (Button)findViewById(i.ad_close_button);
        f.setOnClickListener(this);
        e.setOnClickListener(this);
        d = (ViewGroup)findViewById(i.ad_web_container);
    }

    public void onDetachedFromWindow()
    {
        a();
        super.onDetachedFromWindow();
    }

    public boolean onKeyDown(int j, KeyEvent keyevent)
    {
        boolean flag = c.h();
        boolean flag1 = false;
        if (j == 4)
        {
            flag1 = false;
            if (flag)
            {
                int i1 = SystemClock.elapsedRealtime() - g != a;
                flag1 = false;
                if (i1 > 0)
                {
                    b.onAdCanceled();
                    dismiss();
                    flag1 = true;
                }
            }
        }
        return flag1;
    }

}
