// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.ads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.admarvel.android.util.Logging;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;

// Referenced classes of package com.admarvel.android.ads:
//            AdMarvelInternalWebView, w, AdMarvelActivity, AdMarvelUtils

class b
    implements Runnable
{

    private final WeakReference a;
    private final WeakReference b;

    public void run()
    {
        if (b == null) goto _L2; else goto _L1
_L1:
        AdMarvelInternalWebView admarvelinternalwebview = (AdMarvelInternalWebView)b.get();
          goto _L3
_L30:
        if (AdMarvelInternalWebView.a(admarvelinternalwebview))
        {
            break; /* Loop/switch isn't completed */
        }
        if (a == null) goto _L5; else goto _L4
_L4:
        Context context = (Context)a.get();
_L23:
        if (context == null)
        {
            break; /* Loop/switch isn't completed */
        }
        Activity activity;
        if (!(context instanceof Activity))
        {
            break; /* Loop/switch isn't completed */
        }
        activity = (Activity)context;
        ViewGroup viewgroup;
        LinearLayout linearlayout;
        w w1;
        b b1;
        if (activity == null)
        {
            break; /* Loop/switch isn't completed */
        }
        AdMarvelActivity admarvelactivity;
        try
        {
            viewgroup = (ViewGroup)activity.getWindow().findViewById(0x1020002);
            linearlayout = (LinearLayout)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE").toString());
        }
        catch (Exception exception)
        {
            Logging.log((new StringBuilder()).append("Exception").append(exception.getMessage()).toString());
            return;
        }
        if (linearlayout == null) goto _L7; else goto _L6
_L6:
        if (!AdMarvelInternalWebView.b(admarvelinternalwebview)) goto _L9; else goto _L8
_L8:
        if (AdMarvelInternalWebView.c(admarvelinternalwebview)) goto _L11; else goto _L10
_L10:
        linearlayout.setVisibility(8);
_L7:
        if (!AdMarvelInternalWebView.d(admarvelinternalwebview).get())
        {
            break; /* Loop/switch isn't completed */
        }
        if (admarvelinternalwebview.getParent() == null || !(admarvelinternalwebview.getParent() instanceof RelativeLayout))
        {
            break MISSING_BLOCK_LABEL_492;
        }
        w1 = (w)((RelativeLayout)admarvelinternalwebview.getParent()).findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("CONTROLS").toString());
_L28:
        if (!AdMarvelInternalWebView.e(admarvelinternalwebview).compareAndSet(false, true)) goto _L13; else goto _L12
_L12:
        if (activity == null) goto _L15; else goto _L14
_L14:
        if (!(activity instanceof AdMarvelActivity)) goto _L15; else goto _L16
_L16:
        admarvelactivity = (AdMarvelActivity)activity;
        if (!admarvelactivity.c()) goto _L18; else goto _L17
_L17:
        if (AdMarvelUtils.isLogDumpEnabled())
        {
            admarvelinternalwebview.loadUrl("javascript:window.ADMARVEL.fetchWebViewHtmlContent(document.getElementsByTagName('html')[0].outerHTML);");
            ((AdMarvelActivity)activity).h();
        }
_L26:
        if (admarvelactivity == null) goto _L15; else goto _L19
_L19:
        if (admarvelactivity.a == null) goto _L21; else goto _L20
_L20:
        b1 = (adUrl)admarvelactivity.a.get();
_L27:
        if (b1 == null) goto _L15; else goto _L22
_L22:
        b1.adUrl();
_L15:
        admarvelinternalwebview.clearHistory();
        if (w1 == null)
        {
            break MISSING_BLOCK_LABEL_317;
        }
        w1.setVisibility(0);
        admarvelinternalwebview.setVisibility(0);
_L13:
        if (w1 == null)
        {
            break; /* Loop/switch isn't completed */
        }
        if (AdMarvelInternalWebView.e(admarvelinternalwebview).get())
        {
            w1.a();
            w1.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("PROGRESS_BAR").toString()).setVisibility(8);
            return;
        }
        break; /* Loop/switch isn't completed */
_L5:
        context = null;
          goto _L23
_L11:
        ImageView imageview;
        linearlayout.setVisibility(0);
        imageview = (ImageView)viewgroup.findViewWithTag((new StringBuilder()).append(admarvelinternalwebview.GUID).append("BTN_CLOSE_IMAGE").toString());
        if (imageview == null) goto _L7; else goto _L24
_L24:
        imageview.setVisibility(4);
          goto _L7
_L9:
        linearlayout.setVisibility(0);
          goto _L7
_L18:
        if (!AdMarvelUtils.isLogDumpEnabled()) goto _L26; else goto _L25
_L25:
        ((AdMarvelActivity)activity).i();
          goto _L26
_L21:
        b1 = null;
          goto _L27
        w1 = null;
          goto _L28
_L3:
        if (admarvelinternalwebview != null) goto _L30; else goto _L29
_L29:
        return;
_L2:
        admarvelinternalwebview = null;
          goto _L3
        if (true) goto _L30; else goto _L31
_L31:
    }

    public (AdMarvelInternalWebView admarvelinternalwebview, Context context)
    {
        a = new WeakReference(context);
        b = new WeakReference(admarvelinternalwebview);
    }
}
