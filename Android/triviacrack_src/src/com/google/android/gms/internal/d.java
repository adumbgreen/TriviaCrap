// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

// Referenced classes of package com.google.android.gms.internal:
//            fg, fz, h, b, 
//            am, f, fx, a, 
//            ak, e, ew, g, 
//            al

public final class d
    implements android.view.ViewTreeObserver.OnGlobalLayoutListener, android.view.ViewTreeObserver.OnScrollChangedListener
{

    private static final long m;
    private final Object a;
    private final WeakReference b;
    private WeakReference c;
    private final WeakReference d;
    private final b e;
    private final Context f;
    private final f g;
    private boolean h;
    private final WindowManager i;
    private final PowerManager j;
    private final KeyguardManager k;
    private e l;
    private boolean n;
    private boolean o;
    private long p;
    private boolean q;
    private BroadcastReceiver r;
    private HashSet s;

    public d(am am1, fg fg1)
    {
        this(am1, fg1, fg1.b.h(), ((View) (fg1.b)), ((f) (new h(fg1.b.getContext(), fg1.b.h()))));
    }

    public d(am am1, fg fg1, ew ew, View view, f f1)
    {
        a = new Object();
        n = false;
        o = false;
        p = 0x8000000000000000L;
        s = new HashSet();
        b = new WeakReference(fg1);
        d = new WeakReference(view);
        c = new WeakReference(null);
        q = true;
        e = new b(Integer.toString(fg1.hashCode()), ew, am1.b, fg1.j);
        g = f1;
        i = (WindowManager)view.getContext().getSystemService("window");
        j = (PowerManager)view.getContext().getApplicationContext().getSystemService("power");
        k = (KeyguardManager)view.getContext().getSystemService("keyguard");
        f = view.getContext().getApplicationContext();
        a(f1);
        g.a(new g() {

            final d a;

            public void a()
            {
                d.a(a, true);
                a.b(false);
                a.a();
            }

            
            {
                a = d.this;
                super();
            }
        });
        b(g);
        fx.c((new StringBuilder()).append("Tracking ad unit: ").append(e.d()).toString());
    }

    static f a(d d1)
    {
        return d1.g;
    }

    static boolean a(d d1, boolean flag)
    {
        d1.h = flag;
        return flag;
    }

    static b b(d d1)
    {
        return d1.e;
    }

    protected int a(int i1, DisplayMetrics displaymetrics)
    {
        float f1 = displaymetrics.density;
        return (int)((float)i1 / f1);
    }

    protected JSONObject a(View view)
    {
        int ai[] = new int[2];
        int ai1[] = new int[2];
        view.getLocationOnScreen(ai);
        view.getLocationInWindow(ai1);
        JSONObject jsonobject = h();
        DisplayMetrics displaymetrics = view.getContext().getResources().getDisplayMetrics();
        Rect rect = new Rect();
        rect.left = ai[0];
        rect.top = ai[1];
        rect.right = rect.left + view.getWidth();
        rect.bottom = rect.top + view.getHeight();
        Rect rect1 = new Rect();
        rect1.right = i.getDefaultDisplay().getWidth();
        rect1.bottom = i.getDefaultDisplay().getHeight();
        Rect rect2 = new Rect();
        boolean flag = view.getGlobalVisibleRect(rect2, null);
        Rect rect3 = new Rect();
        view.getLocalVisibleRect(rect3);
        jsonobject.put("viewBox", (new JSONObject()).put("top", a(rect1.top, displaymetrics)).put("bottom", a(rect1.bottom, displaymetrics)).put("left", a(rect1.left, displaymetrics)).put("right", a(rect1.right, displaymetrics))).put("adBox", (new JSONObject()).put("top", a(rect.top, displaymetrics)).put("bottom", a(rect.bottom, displaymetrics)).put("left", a(rect.left, displaymetrics)).put("right", a(rect.right, displaymetrics))).put("globalVisibleBox", (new JSONObject()).put("top", a(rect2.top, displaymetrics)).put("bottom", a(rect2.bottom, displaymetrics)).put("left", a(rect2.left, displaymetrics)).put("right", a(rect2.right, displaymetrics))).put("localVisibleBox", (new JSONObject()).put("top", a(rect3.top, displaymetrics)).put("bottom", a(rect3.bottom, displaymetrics)).put("left", a(rect3.left, displaymetrics)).put("right", a(rect3.right, displaymetrics))).put("screenDensity", displaymetrics.density).put("isVisible", a(view, flag)).put("isStopped", o).put("isPaused", n);
        return jsonobject;
    }

    protected void a()
    {
label0:
        {
            synchronized (a)
            {
                if (r == null)
                {
                    break label0;
                }
            }
            return;
        }
        IntentFilter intentfilter = new IntentFilter();
        intentfilter.addAction("android.intent.action.SCREEN_ON");
        intentfilter.addAction("android.intent.action.SCREEN_OFF");
        r = new BroadcastReceiver() {

            final d a;

            public void onReceive(Context context, Intent intent)
            {
                a.b(false);
            }

            
            {
                a = d.this;
                super();
            }
        };
        f.registerReceiver(r, intentfilter);
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void a(a a1)
    {
        s.add(a1);
    }

    public void a(e e1)
    {
        synchronized (a)
        {
            l = e1;
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void a(f f1)
    {
        f1.a("http://googleads.g.doubleclick.net/mads/static/sdk/native/sdk-core-v40.html");
    }

    protected void a(fz fz1, Map map)
    {
        b(false);
    }

    protected void a(JSONObject jsonobject)
    {
        JSONArray jsonarray = new JSONArray();
        JSONObject jsonobject1 = new JSONObject();
        jsonarray.put(jsonobject);
        jsonobject1.put("units", jsonarray);
        g.a("AFMA_updateActiveView", jsonobject1);
    }

    protected void a(boolean flag)
    {
        for (Iterator iterator = s.iterator(); iterator.hasNext(); ((a)iterator.next()).a(this, flag)) { }
    }

    protected boolean a(View view, boolean flag)
    {
        return view.getVisibility() == 0 && flag && view.isShown() && j.isScreenOn() && !k.inKeyguardRestrictedInputMode();
    }

    protected void b()
    {
        synchronized (a)
        {
            if (r != null)
            {
                f.unregisterReceiver(r);
                r = null;
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void b(f f1)
    {
        f1.a("/updateActiveView", new al() {

            final d a;

            public void a(fz fz1, Map map)
            {
                a.a(fz1, map);
            }

            
            {
                a = d.this;
                super();
            }
        });
        f1.a("/activeViewPingSent", new al() {

            final d a;

            public void a(fz fz1, Map map)
            {
                if (map.containsKey("pingType") && "unloadPing".equals(map.get("pingType")))
                {
                    a.c(d.a(a));
                    fx.c((new StringBuilder()).append("Unregistered GMSG handlers for: ").append(d.b(a).d()).toString());
                }
            }

            
            {
                a = d.this;
                super();
            }
        });
        f1.a("/visibilityChanged", new al() {

            final d a;

            public void a(fz fz1, Map map)
            {
                if (!map.containsKey("isVisible"))
                {
                    return;
                }
                boolean flag;
                Boolean boolean1;
                if ("1".equals(map.get("isVisible")) || "true".equals(map.get("isVisible")))
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                boolean1 = Boolean.valueOf(flag);
                a.a(boolean1.booleanValue());
            }

            
            {
                a = d.this;
                super();
            }
        });
        f1.a("/viewabilityChanged", ak.a);
    }

    protected void b(boolean flag)
    {
label0:
        {
            synchronized (a)
            {
                if (h && q)
                {
                    break label0;
                }
            }
            return;
        }
        long l1 = System.nanoTime();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        if (p + m <= l1)
        {
            break MISSING_BLOCK_LABEL_55;
        }
        obj;
        JVM INSTR monitorexit ;
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
        fg fg1;
        View view;
        p = l1;
        fg1 = (fg)b.get();
        view = (View)d.get();
        boolean flag1;
        JSONException jsonexception;
        if (view != null && fg1 != null)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_116;
        }
        c();
        obj;
        JVM INSTR monitorexit ;
        return;
        a(a(view));
_L1:
        f();
        d();
        obj;
        JVM INSTR monitorexit ;
        return;
        jsonexception;
        fx.b("Active view update failed.", jsonexception);
          goto _L1
    }

    public void c()
    {
        Object obj = a;
        obj;
        JVM INSTR monitorenter ;
        if (!q) goto _L2; else goto _L1
_L1:
        g();
        b();
        a(i());
_L3:
        q = false;
        d();
        fx.c((new StringBuilder()).append("Untracked ad unit: ").append(e.d()).toString());
_L2:
        return;
        JSONException jsonexception;
        jsonexception;
        fx.b("JSON Failure while processing active view data.", jsonexception);
          goto _L3
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void c(f f1)
    {
        f1.b("/viewabilityChanged");
        f1.b("/visibilityChanged");
        f1.b("/activeViewPingSent");
        f1.b("/updateActiveView");
    }

    protected void d()
    {
        if (l != null)
        {
            l.a(this);
        }
    }

    public boolean e()
    {
        boolean flag;
        synchronized (a)
        {
            flag = q;
        }
        return flag;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    protected void f()
    {
        View view = (View)d.get();
        if (view != null)
        {
            ViewTreeObserver viewtreeobserver = (ViewTreeObserver)c.get();
            ViewTreeObserver viewtreeobserver1 = view.getViewTreeObserver();
            if (viewtreeobserver1 != viewtreeobserver)
            {
                c = new WeakReference(viewtreeobserver1);
                viewtreeobserver1.addOnScrollChangedListener(this);
                viewtreeobserver1.addOnGlobalLayoutListener(this);
                return;
            }
        }
    }

    protected void g()
    {
        ViewTreeObserver viewtreeobserver = (ViewTreeObserver)c.get();
        if (viewtreeobserver == null || !viewtreeobserver.isAlive())
        {
            return;
        } else
        {
            viewtreeobserver.removeOnScrollChangedListener(this);
            viewtreeobserver.removeGlobalOnLayoutListener(this);
            return;
        }
    }

    protected JSONObject h()
    {
        JSONObject jsonobject = new JSONObject();
        jsonobject.put("afmaVersion", e.b()).put("activeViewJSON", e.c()).put("timestamp", TimeUnit.NANOSECONDS.toMillis(System.nanoTime())).put("adFormat", e.a()).put("hashCode", e.d());
        return jsonobject;
    }

    protected JSONObject i()
    {
        JSONObject jsonobject = h();
        jsonobject.put("doneReasonCode", "u");
        return jsonobject;
    }

    public void j()
    {
        synchronized (a)
        {
            o = true;
            b(false);
            g.a();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void k()
    {
        synchronized (a)
        {
            n = true;
            b(false);
            g.a();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void l()
    {
        synchronized (a)
        {
            g.b();
            n = false;
            b(false);
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onGlobalLayout()
    {
        b(false);
    }

    public void onScrollChanged()
    {
        b(true);
    }

    static 
    {
        m = TimeUnit.MILLISECONDS.toNanos(100L);
    }
}
