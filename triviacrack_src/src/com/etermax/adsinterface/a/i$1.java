// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.etermax.a.a;
import com.etermax.i;
import com.etermax.k;

// Referenced classes of package com.etermax.adsinterface.a:
//            h, i, m, a

class a
    implements h
{

    final com.etermax.adsinterface.a.i a;

    public void contentLoadCompleted(Bitmap bitmap)
    {
        com.etermax.a.a.c("Admob ads", "CustomBannerContainerfinished loading custom image");
        View view = LayoutInflater.from(i.b(a)).inflate(k.custom_banner_image, null);
        ImageView imageview = (ImageView)view.findViewById(i.ad_image);
        imageview.setImageBitmap(bitmap);
        com.etermax.adsinterface.a.i.a(a).onReceivedAd(view);
        imageview.setOnClickListener(a);
        i.c(a).a(System.currentTimeMillis());
    }

    public void contentLoadCompleted(WebView webview)
    {
        com.etermax.a.a.c("Admob ads", "CustomBannerContainer finished loading custom web content");
        FrameLayout framelayout = (FrameLayout)LayoutInflater.from(i.b(a)).inflate(k.custom_banner_richmedia, new LinearLayout(i.b(a)), false);
        framelayout.addView(webview, 0, new android.view.Group.LayoutParams(-1, -1));
        com.etermax.adsinterface.a.i.a(a).onReceivedAd(framelayout);
        framelayout.findViewById(i.click_interceptor).setOnClickListener(a);
        i.c(a).a(System.currentTimeMillis());
    }

    public void contentLoadFailed(Exception exception)
    {
        com.etermax.a.a.c("Admob ads", (new StringBuilder()).append("CustomBannerContainer failed to load custom content: ").append(exception.getMessage()).toString());
        com.etermax.adsinterface.a.i.a(a).onFailedToReceiveAd();
    }

    rams(com.etermax.adsinterface.a.i j)
    {
        a = j;
        super();
    }
}
