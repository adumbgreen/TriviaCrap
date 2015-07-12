// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.re.container;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.inmobi.commons.internal.Log;

// Referenced classes of package com.inmobi.re.container:
//            IMWebView

class a extends WebChromeClient
{

    final IMWebView a;

    a(IMWebView imwebview)
    {
        a = imwebview;
        super();
    }

    public void onGeolocationPermissionsShowPrompt(String s, android.webkit.GeolocationPermissions.Callback callback)
    {
        try
        {
            android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(IMWebView.h(a));
            builder.setTitle("Locations access");
            class f
                implements android.content.DialogInterface.OnClickListener
            {

                final android.webkit.GeolocationPermissions.Callback a;
                final String b;
                final a c;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    a.invoke(b, false, false);
                }

            f(android.webkit.GeolocationPermissions.Callback callback, String s)
            {
                c = a.this;
                a = callback;
                b = s;
                super();
            }
            }

            class g
                implements android.content.DialogInterface.OnClickListener
            {

                final android.webkit.GeolocationPermissions.Callback a;
                final String b;
                final a c;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    a.invoke(b, true, false);
                }

            g(android.webkit.GeolocationPermissions.Callback callback, String s)
            {
                c = a.this;
                a = callback;
                b = s;
                super();
            }
            }

            builder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new g(callback, s)).setNegativeButton("Decline", new f(callback, s));
            builder.create().show();
            super.onGeolocationPermissionsShowPrompt(s, callback);
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[RE]-4.3.0", "Exception while accessing location from creative ", exception);
        }
        callback.invoke(s, false, false);
    }

    public boolean onJsAlert(WebView webview, String s, String s1, JsResult jsresult)
    {
        Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("IMWebView-> onJsAlert, ").append(s1).toString());
        class c
            implements android.content.DialogInterface.OnClickListener
        {

            final JsResult a;
            final a b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.confirm();
            }

            c(JsResult jsresult)
            {
                b = a.this;
                a = jsresult;
                super();
            }
        }

        try
        {
            (new android.app.AlertDialog.Builder(webview.getContext())).setTitle(s).setMessage(s1).setPositiveButton(0x104000a, new c(jsresult)).setCancelable(false).create().show();
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[RE]-4.3.0", "webchrome client exception onJSAlert ", exception);
        }
        return true;
    }

    public void onShowCustomView(View view, android.webkit.WebChromeClient.CustomViewCallback customviewcallback)
    {
        IMWebView.a(a, view);
        IMWebView.a(a, customviewcallback);
        Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("onShowCustomView ******************************").append(view).toString());
        FrameLayout framelayout;
        class b
            implements android.view.View.OnTouchListener
        {

            final a a;

            public boolean onTouch(View view1, MotionEvent motionevent)
            {
                return false;
            }

            b()
            {
                a = a.this;
                super();
            }
        }

        IMWebView.a(a, IMWebView.g(a), new b());
        class e
            implements android.view.View.OnTouchListener
        {

            final a a;

            public boolean onTouch(View view1, MotionEvent motionevent)
            {
                return true;
            }

            e()
            {
                a = a.this;
                super();
            }
        }

        IMWebView.g(a).setOnTouchListener(new e());
        if (!(view instanceof FrameLayout))
        {
            break MISSING_BLOCK_LABEL_345;
        }
        IMWebView.a(a, (FrameLayout)view);
        framelayout = (FrameLayout)IMWebView.h(a).findViewById(0x1020002);
        if (IMWebView.i(a).getFocusedChild() instanceof VideoView)
        {
            IMWebView.a(a, (VideoView)IMWebView.i(a).getFocusedChild());
            IMWebView.i(a).setBackgroundColor(0xff000000);
            IMWebView.k(a).setOnCompletionListener(IMWebView.j(a));
            class d
                implements android.view.View.OnFocusChangeListener
            {

                final a a;

                public void onFocusChange(View view1, boolean flag)
                {
                    IMWebView.k(a.a).requestFocus();
                }

            d()
            {
                a = a.this;
                super();
            }
            }

            IMWebView.k(a).setOnFocusChangeListener(new d());
            framelayout.addView(IMWebView.g(a), new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
            Log.debug("[InMobi]-[RE]-4.3.0", "Registering");
            class h
                implements android.view.View.OnKeyListener
            {

                final a a;

                public boolean onKey(View view1, int i, KeyEvent keyevent)
                {
                    if (4 == keyevent.getKeyCode() && keyevent.getAction() == 0)
                    {
                        Log.debug("[InMobi]-[RE]-4.3.0", "Back Button pressed when html5 video is playing");
                        IMWebView.k(a.a).stopPlayback();
                        IMWebView.l(a.a);
                    }
                    return false;
                }

            h()
            {
                a = a.this;
                super();
            }
            }

            IMWebView.a(a, IMWebView.g(a), new h());
            return;
        }
        try
        {
            IMWebView.a(a, view);
            view.setBackgroundColor(0xff000000);
            Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("adding ").append(view).toString());
            framelayout.addView(view, new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
            class a
                implements android.view.View.OnKeyListener
            {

                final a a;

                public boolean onKey(View view1, int i, KeyEvent keyevent)
                {
                    Log.debug("[InMobi]-[RE]-4.3.0", "Back Button pressed when html5 video is playing");
                    IMWebView.l(a.a);
                    return false;
                }

            a()
            {
                a = a.this;
                super();
            }
            }

            IMWebView.a(a, IMWebView.g(a), new a());
            return;
        }
        catch (Exception exception)
        {
            Log.internal("[InMobi]-[RE]-4.3.0", "IMWebview onShowCustomView exception ", exception);
        }
    }
}
