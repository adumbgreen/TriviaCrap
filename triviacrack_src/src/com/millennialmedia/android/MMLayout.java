// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import java.lang.reflect.Method;

// Referenced classes of package com.millennialmedia.android:
//            MMAd, MMLog, MMSDK, AdCache, 
//            MMAdImpl, MMAdImplController, InlineVideoView, MMWebView, 
//            BridgeMMSpeechkit, RequestListener, MMRequest

abstract class MMLayout extends RelativeLayout
    implements InlineVideoView.TransparentFix, MMAd
{

    public static final String KEY_HEIGHT = "height";
    public static final String KEY_WIDTH = "width";
    private static boolean b;
    private GestureDetector a;
    MMAdImpl h;
    String i;
    boolean j;
    View k;
    RelativeLayout l;
    InlineVideoView m;
    View n;

    protected MMLayout(Context context)
    {
        super(context);
        a(context);
    }

    protected MMLayout(Context context, AttributeSet attributeset, int i1)
    {
        super(context, attributeset, i1);
        a(context);
    }

    private void a()
    {
        if (n != null)
        {
            android.view.ViewParent viewparent = n.getParent();
            if (viewparent != null && (viewparent instanceof ViewGroup))
            {
                ((ViewGroup)viewparent).removeView(n);
                n = null;
            }
        }
        n = new View(getContext());
        n.setBackgroundColor(0xff000000);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        n.setLayoutParams(layoutparams);
        if (l != null && n.getParent() == null)
        {
            l.addView(n);
        }
    }

    static void a(MMLayout mmlayout, String s)
    {
        mmlayout.a(s);
    }

    private void a(String s)
    {
        if (k != null) goto _L2; else goto _L1
_L1:
        android.widget.RelativeLayout.LayoutParams layoutparams;
        k = new View(getContext());
        float f = getContext().getResources().getDisplayMetrics().density;
        layoutparams = new android.widget.RelativeLayout.LayoutParams((int)(50F * f), (int)(f * 50F));
        if (!"top-right".equals(s)) goto _L4; else goto _L3
_L3:
        layoutparams.addRule(11);
_L6:
        k.setOnClickListener(new android.view.View.OnClickListener() {

            final MMLayout a;

            public void onClick(View view)
            {
                a.b();
            }

            
            {
                a = MMLayout.this;
                super();
            }
        });
        addView(k, layoutparams);
_L2:
        return;
_L4:
        if ("top-center".equals(s))
        {
            layoutparams.addRule(14);
        } else
        if ("bottom-left".equals(s))
        {
            layoutparams.addRule(12);
        } else
        if ("bottom-center".equals(s))
        {
            layoutparams.addRule(12);
            layoutparams.addRule(14);
        } else
        if ("bottom-right".equals(s))
        {
            layoutparams.addRule(12);
            layoutparams.addRule(11);
        } else
        if ("center".equals(s))
        {
            layoutparams.addRule(13);
        }
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected final void a(Context context)
    {
        try
        {
            MMLog.c("MMLayout", "Initializing MMLayout.");
            MMSDK.f(context);
            MMSDK.g(context);
        }
        catch (Exception exception)
        {
            MMLog.a("MMLayout", "There was an exception initializing the MMAdView. ", exception);
            exception.printStackTrace();
        }
        a = new GestureDetector(context.getApplicationContext(), new LayoutGestureListener());
        if (!b)
        {
            MMLog.b("MMLayout", "********** Millennial Device Id *****************");
            MMLog.b("MMLayout", MMSDK.d(context));
            MMLog.b("MMLayout", "Use the above identifier to register this device and receive test ads. Test devices can be registered and administered through your account at http://mmedia.com.");
            MMLog.b("MMLayout", "*************************************************");
            AdCache.b(context);
            b = true;
        }
    }

    void a(String s, String s1)
    {
        if (MMSDK.a(getContext()))
        {
            if (h.k != null)
            {
                h.k.b(s, s1);
            }
            return;
        } else
        {
            MMLog.e("MMLayout", "No network available, can't load overlay.");
            return;
        }
    }

    boolean a(InlineVideoView.InlineParams inlineparams)
    {
        MMSDK.a(new Runnable(inlineparams) {

            final InlineVideoView.InlineParams a;
            final MMLayout b;

            public void run()
            {
                if (b.m != null)
                {
                    b.m.c(a);
                }
            }

            
            {
                b = MMLayout.this;
                a = inlineparams;
                super();
            }
        });
        return false;
    }

    public void addBlackView()
    {
        a();
        if (n != null)
        {
            n.setVisibility(0);
        }
    }

    void b()
    {
    }

    void b(InlineVideoView.InlineParams inlineparams)
    {
        if (m != null)
        {
            ViewGroup viewgroup = (ViewGroup)m.getParent();
            if (viewgroup != null)
            {
                viewgroup.removeView(m);
            }
            if (m.isPlaying())
            {
                m.stopPlayback();
            }
            m = null;
        }
        m = new InlineVideoView(this);
        m.b(inlineparams);
        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams(-1, -1);
        layoutparams.addRule(13, -1);
        m.setLayoutParams(layoutparams);
        e();
    }

    void b(String s)
    {
        if (MMSDK.a(getContext()))
        {
            if (h.k != null)
            {
                h.k.a(s);
            }
            return;
        } else
        {
            MMLog.e("MMLayout", "No network available, can't load overlay.");
            return;
        }
    }

    void e()
    {
        if (l != null && l.getParent() != null)
        {
            ((ViewGroup)l.getParent()).removeView(l);
        }
        l = new RelativeLayout(getContext());
        l.setId(0x35391858);
        if (m.getParent() != null)
        {
            ((ViewGroup)m.getParent()).removeView(m);
        }
        l.addView(m);
        if (n != null)
        {
            if (n.getParent() == null)
            {
                l.addView(n);
            }
            n.bringToFront();
        }
        addView(l, m.getCustomLayoutParams());
    }

    protected void finalize()
    {
        if (getId() == -1)
        {
            h.i = true;
            MMLog.b("MMLayout", (new StringBuilder()).append("finalize() for ").append(h).toString());
            MMAdImplController.e(h);
        }
    }

    void g()
    {
    }

    public String getApid()
    {
        return h.getApid();
    }

    public boolean getIgnoresDensityScaling()
    {
        return h.getIgnoresDensityScaling();
    }

    public RequestListener getListener()
    {
        return h.getListener();
    }

    public MMRequest getMMRequest()
    {
        return h.getMMRequest();
    }

    void h()
    {
    }

    void l()
    {
        if (k != null && k.getParent() != null && (k.getParent() instanceof ViewGroup))
        {
            ((ViewGroup)k.getParent()).removeView(k);
            k = null;
        }
    }

    void m()
    {
        if (m != null)
        {
            m.f();
            m = null;
        }
    }

    void n()
    {
        if (m != null)
        {
            m.g();
        }
    }

    void o()
    {
        if (m != null)
        {
            m.h();
        }
    }

    protected void onAttachedToWindow()
    {
        super.onAttachedToWindow();
        if (!isInEditMode())
        {
            MMLog.b("MMLayout", (new StringBuilder()).append("onAttachedToWindow for ").append(h).toString());
            if (getId() == -1)
            {
                MMLog.d("MMLayout", "MMAd missing id from getId(). Performance will be affected for configuration changes.");
            }
            if (!j)
            {
                MMAdImplController.b(h);
            }
            if (l != null)
            {
                l.bringToFront();
            }
            if (h != null && h.k != null && h.k.b != null)
            {
                h.k.b.A();
            }
        }
    }

    protected void onDetachedFromWindow()
    {
        super.onDetachedFromWindow();
        MMLog.b("MMLayout", (new StringBuilder()).append("onDetachedFromWindow for").append(h).toString());
        Context context = getContext();
        if (h.f == "i" && context != null && (context instanceof Activity) && ((Activity)context).isFinishing())
        {
            h.i = true;
        }
        if (!j)
        {
            MMAdImplController.e(h);
        }
    }

    protected void onRestoreInstanceState(Parcelable parcelable)
    {
        Bundle bundle = (Bundle)parcelable;
        long l1 = h.h;
        h.h = bundle.getLong("MMAdImplId");
        h.n = bundle.getLong("MMAdImplLinkedId");
        MMLog.b("MMLayout", (new StringBuilder()).append("onRestoreInstanceState replacing adImpl-").append(l1).append(" with ").append(h).append(" id=").append(getId()).toString());
        String s = bundle.getString("inlineVideoViewGson");
        if (s != null)
        {
            b(InlineVideoView.InlineParams.a(s));
        }
        super.onRestoreInstanceState(bundle.getParcelable("super"));
    }

    protected Parcelable onSaveInstanceState()
    {
        super.onSaveInstanceState();
        MMLog.b("MMLayout", (new StringBuilder()).append("onSaveInstanceState saving - ").append(h).append(" id=").append(getId()).toString());
        Bundle bundle = new Bundle();
        bundle.putParcelable("super", super.onSaveInstanceState());
        bundle.putLong("MMAdImplId", h.h);
        bundle.putLong("MMAdImplLinkedId", h.n);
        if (m != null)
        {
            if (m.isPlaying())
            {
                m.c.h = m.getCurrentPosition();
            }
            bundle.putString("inlineVideoViewGson", m.a());
        }
        return bundle;
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        return a.onTouchEvent(motionevent) || !isClickable() || super.onTouchEvent(motionevent);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        Object aobj[];
        BridgeMMMedia.Audio audio;
        if (flag)
        {
            if (m != null)
            {
                m.j();
            }
        } else
        if (m != null)
        {
            m.i();
        }
        aobj = new Object[3];
        aobj[0] = h;
        aobj[1] = Boolean.valueOf(flag);
        aobj[2] = MMAdImplController.c();
        MMLog.b("MMLayout", String.format("Window Focus Changed. For %s, Window in focus?: %b Controllers: %s", aobj));
        if (h != null && h.k != null && h.k.b != null)
        {
            if (flag)
            {
                h.k.b.onResumeWebView();
                h.k.b.q();
            } else
            {
                BridgeMMSpeechkit.a();
                h.k.b.p();
                h.k.b.onPauseWebView();
            }
        }
        if (!flag && (getContext() instanceof Activity))
        {
            Activity activity = (Activity)getContext();
            if (activity == null || activity.isFinishing() && h != null)
            {
                h.i = true;
                if (h.k != null && h.k.b != null)
                {
                    h.k.b.o();
                    MMAdImplController.e(h);
                }
            }
        }
        audio = BridgeMMMedia.Audio.a(getContext());
        if (audio == null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorenter ;
        audio.b();
        this;
        JVM INSTR monitorexit ;
_L2:
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    void p()
    {
        if (m != null)
        {
            m.i();
        }
    }

    void q()
    {
        if (m != null)
        {
            m.j();
        }
    }

    boolean r()
    {
        return m != null && m.k();
    }

    public void removeBlackView()
    {
        if (n != null)
        {
            n.setVisibility(4);
        }
    }

    public void setApid(String s)
    {
        h.setApid(s);
    }

    void setCloseArea(String s)
    {
        post(new Runnable(s) {

            final String a;
            final MMLayout b;

            public void run()
            {
                MMLayout.a(b, a);
            }

            
            {
                b = MMLayout.this;
                a = s;
                super();
            }
        });
    }

    public void setIgnoresDensityScaling(boolean flag)
    {
        h.setIgnoresDensityScaling(flag);
    }

    public void setListener(RequestListener requestlistener)
    {
        h.setListener(requestlistener);
    }

    public void setMMRequest(MMRequest mmrequest)
    {
        h.setMMRequest(mmrequest);
    }

    void setMediaPlaybackRequiresUserGesture(boolean flag)
    {
        try
        {
            Class aclass[] = new Class[1];
            aclass[0] = Boolean.TYPE;
            Method method = android/webkit/WebView.getMethod("setMediaPlaybackRequiresUserGesture", aclass);
            Object aobj[] = new Object[1];
            aobj[0] = Boolean.valueOf(flag);
            method.invoke(this, aobj);
            return;
        }
        catch (Exception exception)
        {
            return;
        }
    }

    void setVideoSource(String s)
    {
        if (m != null)
        {
            m.a(s);
        }
    }

    private class LayoutGestureListener extends android.view.GestureDetector.SimpleOnGestureListener
    {

        WeakReference a;

        public boolean onFling(MotionEvent motionevent, MotionEvent motionevent1, float f, float f1)
        {
            while (motionevent == null || motionevent1 == null || Math.abs((int)(motionevent1.getX() - motionevent.getX())) <= 200 || Math.abs(f) <= Math.abs(f1)) 
            {
                return false;
            }
            if (f <= 0.0F) goto _L2; else goto _L1
_L1:
            if (MMSDK.a == 0)
            {
                MMLog.c("MMLayout", "Enabling debug and verbose logging.");
                MMSDK.a = 3;
            } else
            {
                MMLog.c("MMLayout", "Disabling debug and verbose logging.");
                MMSDK.a = 0;
            }
_L4:
            return true;
_L2:
            MMLayout mmlayout = (MMLayout)a.get();
            if (mmlayout != null)
            {
                MMSDK.a(mmlayout.h);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

        public LayoutGestureListener()
        {
            a = new WeakReference(MMLayout.this);
        }
    }

}
