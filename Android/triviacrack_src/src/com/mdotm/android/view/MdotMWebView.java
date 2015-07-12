// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.view;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import com.mdotm.android.c.c;
import com.mdotm.android.d.b;
import com.mdotm.android.e.d;

class MdotMWebView extends WebView
    implements android.view.GestureDetector.OnDoubleTapListener, android.view.GestureDetector.OnGestureListener
{

    static final android.widget.FrameLayout.LayoutParams e = new android.widget.FrameLayout.LayoutParams(-1, -1);
    public boolean a;
    long b;
    long c;
    long d;
    private GestureDetector f;
    private Context g;
    private View h;
    private FrameLayout i;
    private FrameLayout j;
    private FrameLayout k;
    private FrameLayout l;
    private c m;
    private b n;
    private boolean o;

    public MdotMWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        o = true;
        a = false;
        b = 0L;
        c = 0L;
        d = 0L;
        a(context);
    }

    public MdotMWebView(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        o = true;
        a = false;
        b = 0L;
        c = 0L;
        d = 0L;
        a(context);
    }

    public MdotMWebView(Context context, b b1, c c1, int i1)
    {
        super(context);
        o = true;
        a = false;
        b = 0L;
        c = 0L;
        d = 0L;
        com.mdotm.android.e.d.b(this, "html resource MdotMWebView");
        a = false;
        m = c1;
        n = b1;
        a(context);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(b(i1), a(i1));
        layoutparams.addRule(13);
        setLayoutParams(layoutparams);
        setBackgroundColor(0);
        f = new GestureDetector(this);
        f.setOnDoubleTapListener(this);
    }

    private int a(int i1)
    {
        if (1 == i1)
        {
            return (75 * n.i()) / 100;
        } else
        {
            return n.i();
        }
    }

    private void a(Context context)
    {
        g = context;
        l = new FrameLayout(context);
        k = new FrameLayout(g);
        j = new FrameLayout(g);
        i = new FrameLayout(g);
        k.addView(i);
        LinearLayout linearlayout = new LinearLayout(g);
        k.addView(linearlayout);
        linearlayout.addView(j);
        l.addView(k, e);
        WebSettings websettings = getSettings();
        websettings.setJavaScriptEnabled(true);
        setInitialScale(100);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        websettings.setAllowFileAccess(true);
        if (android.os.Build.VERSION.SDK_INT > 7)
        {
            websettings.setPluginState(android.webkit.WebSettings.PluginState.ON);
        } else
        {
            websettings.setPluginsEnabled(true);
        }
        com.mdotm.android.e.d.b(this, (new StringBuilder("loading url ")).append(n.d()).toString());
        loadData((new StringBuilder("<html><body style='margin:0px;padding:0px'>")).append(n.d()).append("</body></html>").toString(), "text/html", "utf-8");
        setFocusable(true);
    }

    private int b(int i1)
    {
        if (1 == i1)
        {
            return (75 * n.h()) / 100;
        } else
        {
            return n.h();
        }
    }

    public boolean onDoubleTap(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onDoubleTapEvent(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onDown(MotionEvent motionevent)
    {
        return false;
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
    }

    public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        return false;
    }

    public boolean onKeyDown(int i1, KeyEvent keyevent)
    {
        if (i1 == 4 && h == null && canGoBack())
        {
            goBack();
            return true;
        } else
        {
            return super.onKeyDown(i1, keyevent);
        }
    }

    public void onLongPress(MotionEvent motionevent)
    {
    }

    public boolean onScroll(MotionEvent motionevent, MotionEvent motionevent1, float f1, float f2)
    {
        return false;
    }

    public void onShowPress(MotionEvent motionevent)
    {
    }

    public boolean onSingleTapConfirmed(MotionEvent motionevent)
    {
        return false;
    }

    public boolean onSingleTapUp(MotionEvent motionevent)
    {
        m.c();
        return false;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        f.onTouchEvent(motionevent);
        return super.onTouchEvent(motionevent);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        o = flag;
        com.mdotm.android.e.d.b(this, (new StringBuilder("Webview has focus ")).append(o).toString());
    }

}
