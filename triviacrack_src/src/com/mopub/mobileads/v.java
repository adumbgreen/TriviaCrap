// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.MoPubBrowser;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.IntentUtils;
import com.mopub.mobileads.util.Utils;

// Referenced classes of package com.mopub.mobileads:
//            BaseHtmlWebView, HtmlWebViewListener, MoPubErrorCode

class v extends WebViewClient
{

    private final Context a;
    private HtmlWebViewListener b;
    private BaseHtmlWebView c;
    private final String d;
    private final String e;

    v(HtmlWebViewListener htmlwebviewlistener, BaseHtmlWebView basehtmlwebview, String s, String s1)
    {
        b = htmlwebviewlistener;
        c = basehtmlwebview;
        d = s;
        e = s1;
        a = basehtmlwebview.getContext();
    }

    private void a(Uri uri)
    {
        String s;
        String s1;
        Intent intent;
        String s2;
        try
        {
            s = uri.getQueryParameter("fnc");
            s1 = uri.getQueryParameter("data");
        }
        catch (UnsupportedOperationException unsupportedoperationexception)
        {
            MoPubLog.w((new StringBuilder()).append("Could not handle custom intent with uri: ").append(uri).toString());
            return;
        }
        intent = new Intent(s);
        intent.addFlags(0x10000000);
        intent.putExtra("com.mopub.intent.extra.AD_CLICK_DATA", s1);
        s2 = (new StringBuilder()).append("Could not handle custom intent: ").append(s).append(". Is your intent spelled correctly?").toString();
        a(a, intent, s2);
    }

    private boolean a(String s)
    {
        return s.startsWith("mopub://");
    }

    private boolean b(String s)
    {
        Uri uri;
        String s1;
        if (!a(s))
        {
            return false;
        }
        uri = Uri.parse(s);
        s1 = uri.getHost();
        if (!"finishLoad".equals(s1)) goto _L2; else goto _L1
_L1:
        b.onLoaded(c);
_L4:
        return true;
_L2:
        if ("close".equals(s1))
        {
            b.onCollapsed();
        } else
        if ("failLoad".equals(s1))
        {
            b.onFailed(MoPubErrorCode.UNSPECIFIED);
        } else
        if ("custom".equals(s1))
        {
            a(uri);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean c(String s)
    {
        return s.startsWith("tel:") || s.startsWith("voicemail:") || s.startsWith("sms:") || s.startsWith("mailto:") || s.startsWith("geo:") || s.startsWith("google.streetview:");
    }

    private boolean d(String s)
    {
        if (!c(s))
        {
            return false;
        } else
        {
            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
            intent.addFlags(0x10000000);
            String s1 = (new StringBuilder()).append("Could not handle intent with URI: ").append(s).append(". Is this intent supported on your phone?").toString();
            a(a, intent, s1);
            return true;
        }
    }

    private boolean e(String s)
    {
        return s.startsWith("mopubnativebrowser://");
    }

    private boolean f(String s)
    {
        if (e(s))
        {
            Uri uri = Uri.parse(s);
            String s1;
            try
            {
                s1 = uri.getQueryParameter("url");
            }
            catch (UnsupportedOperationException unsupportedoperationexception)
            {
                MoPubLog.w((new StringBuilder()).append("Could not handle url: ").append(s).toString());
                return false;
            }
            if ("navigate".equals(uri.getHost()) && s1 != null)
            {
                Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s1));
                intent.setFlags(0x10000000);
                String s2 = (new StringBuilder()).append("Could not handle intent with URI: ").append(s).append(". Is this intent supported on your phone?").toString();
                a(a, intent, s2);
                return true;
            }
        }
        return false;
    }

    private boolean g(String s)
    {
        return s.startsWith("http://") || s.startsWith("https://");
    }

    private boolean h(String s)
    {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(s));
        intent.addFlags(0x10000000);
        return a(a, intent, "Unable to open intent.");
    }

    private void i(String s)
    {
        if (s == null || s.equals(""))
        {
            s = "about:blank";
        }
        MoPubLog.d((new StringBuilder()).append("Final URI to show in browser: ").append(s).toString());
        Intent intent = new Intent(a, com/mopub/common/MoPubBrowser);
        intent.putExtra("URL", s);
        intent.addFlags(0x10000000);
        if (!a(a, intent, "Could not handle intent action. . Perhaps you forgot to declare com.mopub.common.MoPubBrowser in your Android manifest file."))
        {
            Intent intent1 = new Intent("android.intent.action.VIEW", Uri.parse("about:blank"));
            intent1.setFlags(0x10000000);
            a(a, intent1, null);
        }
    }

    boolean a(Context context, Intent intent, String s)
    {
        boolean flag;
        if (!c.wasClicked())
        {
            flag = false;
        } else
        {
            flag = Utils.executeIntent(context, intent, s);
            if (flag)
            {
                b.onClicked();
                c.onResetUserClick();
                return flag;
            }
        }
        return flag;
    }

    public void onPageStarted(WebView webview, String s, Bitmap bitmap)
    {
        if (e != null && s.startsWith(e))
        {
            webview.stopLoading();
            i(s);
        }
    }

    public boolean shouldOverrideUrlLoading(WebView webview, String s)
    {
        if (!b(s) && !d(s) && !f(s))
        {
            MoPubLog.d((new StringBuilder()).append("Ad clicked. Click URL: ").append(s).toString());
            if (g(s) || !IntentUtils.canHandleApplicationUrl(a, s) || !h(s))
            {
                i(s);
                return true;
            }
        }
        return true;
    }
}
