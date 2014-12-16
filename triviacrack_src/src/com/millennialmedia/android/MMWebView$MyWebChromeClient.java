// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.pm.PackageManager;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.Toast;
import java.lang.ref.WeakReference;

// Referenced classes of package com.millennialmedia.android:
//            MMWebView

class a extends WebChromeClient
{

    WeakReference a;

    private String a(Context context)
    {
        PackageManager packagemanager = context.getApplicationContext().getPackageManager();
        android.content.pm.ApplicationInfo applicationinfo1 = packagemanager.getApplicationInfo(context.getPackageName(), 0);
        android.content.pm.ApplicationInfo applicationinfo = applicationinfo1;
_L1:
        android.content.pm.xception xception;
        Object obj;
        if (applicationinfo != null)
        {
            obj = packagemanager.getApplicationLabel(applicationinfo);
        } else
        {
            obj = "This app";
        }
        return (String)(String)obj;
        xception;
        applicationinfo = null;
          goto _L1
    }

    static void a(a a1, boolean flag)
    {
        a1.a(flag);
    }

    private void a(boolean flag)
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            android.content.hromeClient hromeclient = mmwebview.getContext().getSharedPreferences("MillennialMediaSettings", 0).edit();
            hromeclient.Boolean("mm_use_geo_location", flag);
            hromeclient.mit();
        }
    }

    private boolean a()
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            return !mmwebview.getContext().getSharedPreferences("MillennialMediaSettings", 0).contains("mm_use_geo_location");
        } else
        {
            return false;
        }
    }

    private boolean b()
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            return mmwebview.getContext().getSharedPreferences("MillennialMediaSettings", 0).getBoolean("mm_use_geo_location", false);
        } else
        {
            return false;
        }
    }

    public void onConsoleMessage(String s, int i, String s1)
    {
        super.onConsoleMessage(s, i, s1);
    }

    public void onGeolocationPermissionsShowPrompt(String s, android.webkit.ack ack)
    {
        if (!a())
        {
            break MISSING_BLOCK_LABEL_120;
        }
        if (!b()) goto _L2; else goto _L1
_L1:
        ack.invoke(s, true, true);
_L4:
        return;
_L2:
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview == null) goto _L4; else goto _L3
_L3:
        android.app.Activity activity = mmwebview.i();
        if (activity == null) goto _L4; else goto _L5
_L5:
        android.app.istener istener = new android.app.WebChromeClient.a(activity);
        istener.(a(activity));
        istener.ge("Would like to use your Current Location.").iveButton("Allow", new android.content.DialogInterface.OnClickListener(ack, s) {

            final android.webkit.GeolocationPermissions.Callback a;
            final String b;
            final MMWebView.MyWebChromeClient c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MMWebView.MyWebChromeClient.a(c, true);
                a.invoke(b, true, true);
            }

            
            {
                c = MMWebView.MyWebChromeClient.this;
                a = callback;
                b = s;
                super();
            }
        }).iveButton("Don't Allow", new android.content.DialogInterface.OnClickListener(ack, s) {

            final android.webkit.GeolocationPermissions.Callback a;
            final String b;
            final MMWebView.MyWebChromeClient c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                MMWebView.MyWebChromeClient.a(c, false);
                a.invoke(b, false, false);
            }

            
            {
                c = MMWebView.MyWebChromeClient.this;
                a = callback;
                b = s;
                super();
            }
        });
        istener.WebChromeClient().show();
        return;
        ack.invoke(s, false, false);
        return;
    }

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
            {
                return super.onJsAlert(webview, s, s1, jsresult);
            }
            Toast.makeText(mmwebview.getContext(), s1, 0).show();
        }
        return true;
    }

    public boolean onJsBeforeUnload(WebView webview, String s, String s1, JsResult jsresult)
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
            {
                return super.onJsBeforeUnload(webview, s, s1, jsresult);
            }
            Toast.makeText(mmwebview.getContext(), s1, 0).show();
        }
        return true;
    }

    public boolean onJsConfirm(WebView webview, String s, String s1, JsResult jsresult)
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
            {
                return super.onJsConfirm(webview, s, s1, jsresult);
            }
            Toast.makeText(mmwebview.getContext(), s1, 0).show();
        }
        return true;
    }

    public boolean onJsPrompt(WebView webview, String s, String s1, String s2, JsPromptResult jspromptresult)
    {
        MMWebView mmwebview = (MMWebView)a.get();
        if (mmwebview != null)
        {
            if (mmwebview.getContext() != mmwebview.getContext().getApplicationContext())
            {
                return super.onJsPrompt(webview, s, s1, s2, jspromptresult);
            }
            Toast.makeText(mmwebview.getContext(), s1, 0).show();
        }
        return true;
    }

    _cls2.b(MMWebView mmwebview)
    {
        a = new WeakReference(mmwebview);
    }
}
