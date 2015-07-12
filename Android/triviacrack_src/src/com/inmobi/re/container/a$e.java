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
//            a, IMWebView

class a
    implements android.view..OnTouchListener
{

    final a a;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        return true;
    }

    nt(a a1)
    {
        a = a1;
        super();
    }

    // Unreferenced inner class com/inmobi/re/container/a
    class a extends WebChromeClient
    {

        final IMWebView a;

        public void onGeolocationPermissionsShowPrompt(String s, android.webkit.GeolocationPermissions.Callback callback)
        {
            try
            {
                android.app.AlertDialog.Builder builder = new android.app.AlertDialog.Builder(IMWebView.h(a));
                builder.setTitle("Locations access");
                builder.setMessage("Allow location access").setCancelable(true).setPositiveButton("Accept", new a.g(callback, s)).setNegativeButton("Decline", new a.f(callback, s));
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
            try
            {
                (new android.app.AlertDialog.Builder(webview.getContext())).setTitle(s).setMessage(s1).setPositiveButton(0x104000a, new a.c(jsresult)).setCancelable(false).create().show();
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
            IMWebView.a(a, IMWebView.g(a), new a.b());
            IMWebView.g(a).setOnTouchListener(new a.e(this));
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
                IMWebView.k(a).setOnFocusChangeListener(new a.d());
                framelayout.addView(IMWebView.g(a), new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                Log.debug("[InMobi]-[RE]-4.3.0", "Registering");
                IMWebView.a(a, IMWebView.g(a), new a.h());
                return;
            }
            try
            {
                IMWebView.a(a, view);
                view.setBackgroundColor(0xff000000);
                Log.debug("[InMobi]-[RE]-4.3.0", (new StringBuilder()).append("adding ").append(view).toString());
                framelayout.addView(view, new android.widget.AbsoluteLayout.LayoutParams(-1, -1, 0, 0));
                IMWebView.a(a, IMWebView.g(a), new a.a());
                return;
            }
            catch (Exception exception)
            {
                Log.internal("[InMobi]-[RE]-4.3.0", "IMWebview onShowCustomView exception ", exception);
            }
        }

            a(IMWebView imwebview)
            {
                a = imwebview;
                super();
            }

        // Unreferenced inner class com/inmobi/re/container/a$a
        class a.a
            implements android.view.View.OnKeyListener
        {

            final a a;

            public boolean onKey(View view, int i, KeyEvent keyevent)
            {
                Log.debug("[InMobi]-[RE]-4.3.0", "Back Button pressed when html5 video is playing");
                IMWebView.l(a.a);
                return false;
            }

                    a.a()
                    {
                        a = a.this;
                        super();
                    }
        }


        // Unreferenced inner class com/inmobi/re/container/a$b
        class a.b
            implements android.view.View.OnTouchListener
        {

            final a a;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                return false;
            }

                    a.b()
                    {
                        a = a.this;
                        super();
                    }
        }


        // Unreferenced inner class com/inmobi/re/container/a$c
        class a.c
            implements android.content.DialogInterface.OnClickListener
        {

            final JsResult a;
            final a b;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.confirm();
            }

                    a.c(JsResult jsresult)
                    {
                        b = a.this;
                        a = jsresult;
                        super();
                    }
        }


        // Unreferenced inner class com/inmobi/re/container/a$d
        class a.d
            implements android.view.View.OnFocusChangeListener
        {

            final a a;

            public void onFocusChange(View view, boolean flag)
            {
                IMWebView.k(a.a).requestFocus();
            }

                    a.d()
                    {
                        a = a.this;
                        super();
                    }
        }


        // Unreferenced inner class com/inmobi/re/container/a$f
        class a.f
            implements android.content.DialogInterface.OnClickListener
        {

            final android.webkit.GeolocationPermissions.Callback a;
            final String b;
            final a c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.invoke(b, false, false);
            }

                    a.f(android.webkit.GeolocationPermissions.Callback callback, String s)
                    {
                        c = a.this;
                        a = callback;
                        b = s;
                        super();
                    }
        }


        // Unreferenced inner class com/inmobi/re/container/a$g
        class a.g
            implements android.content.DialogInterface.OnClickListener
        {

            final android.webkit.GeolocationPermissions.Callback a;
            final String b;
            final a c;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                a.invoke(b, true, false);
            }

                    a.g(android.webkit.GeolocationPermissions.Callback callback, String s)
                    {
                        c = a.this;
                        a = callback;
                        b = s;
                        super();
                    }
        }


        // Unreferenced inner class com/inmobi/re/container/a$h
        class a.h
            implements android.view.View.OnKeyListener
        {

            final a a;

            public boolean onKey(View view, int i, KeyEvent keyevent)
            {
                if (4 == keyevent.getKeyCode() && keyevent.getAction() == 0)
                {
                    Log.debug("[InMobi]-[RE]-4.3.0", "Back Button pressed when html5 video is playing");
                    IMWebView.k(a.a).stopPlayback();
                    IMWebView.l(a.a);
                }
                return false;
            }

                    a.h()
                    {
                        a = a.this;
                        super();
                    }
        }

    }

}
