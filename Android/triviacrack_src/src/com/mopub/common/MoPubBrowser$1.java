// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.Toast;
import com.mopub.common.util.Drawables;
import com.mopub.common.util.IntentUtils;

// Referenced classes of package com.mopub.common:
//            MoPubBrowser

class it> extends WebViewClient
{

    final MoPubBrowser a;

    public void onPageFinished(WebView webview, String s)
    {
        super.onPageFinished(webview, s);
        android.graphics.drawable.Drawable drawable;
        android.graphics.drawable.Drawable drawable1;
        if (webview.canGoBack())
        {
            drawable = Drawables.LEFT_ARROW.decodeImage(a);
        } else
        {
            drawable = Drawables.UNLEFT_ARROW.decodeImage(a);
        }
        MoPubBrowser.b(a).setImageDrawable(drawable);
        if (webview.canGoForward())
        {
            drawable1 = Drawables.RIGHT_ARROW.decodeImage(a);
        } else
        {
            drawable1 = Drawables.UNRIGHT_ARROW.decodeImage(a);
        }
        MoPubBrowser.a(a).setImageDrawable(drawable1);
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        super.onPageStarted(webview, s, bitmap);
        MoPubBrowser.a(a).setImageDrawable(Drawables.UNRIGHT_ARROW.decodeImage(a));
    }

    public void onReceivedError(WebView webview, int i, String s, String s1)
    {
        Toast.makeText(a, (new StringBuilder()).append("MoPubBrowser error: ").append(s).toString(), 0).show();
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (s != null)
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            if (IntentUtils.isDeepLink(s) && IntentUtils.deviceCanHandleIntent(a, intent))
            {
                a.startActivity(intent);
                a.finish();
                return true;
            }
        }
        return false;
    }

    s(MoPubBrowser mopubbrowser)
    {
        a = mopubbrowser;
        super();
    }
}
