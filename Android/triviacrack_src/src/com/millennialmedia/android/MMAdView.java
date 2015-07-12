// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.BitmapFactory;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.animation.Animation;
import android.widget.ImageView;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.net.HttpURLConnection;
import java.net.URL;

// Referenced classes of package com.millennialmedia.android:
//            MMLayout, MMLog, MMAdImpl, MMRequest, 
//            MMSDK, DTOResizeParameters, MMAdImplController, MMWebView, 
//            RequestListener

public final class MMAdView extends MMLayout
    implements android.view.View.OnClickListener, android.view.animation.Animation.AnimationListener
{

    public static final int TRANSITION_DOWN = 3;
    public static final int TRANSITION_FADE = 1;
    public static final int TRANSITION_NONE = 0;
    public static final int TRANSITION_RANDOM = 4;
    public static final int TRANSITION_UP = 2;
    ImageView a;
    int b;
    int c;
    int d;
    int e;
    int f;
    ResizeView g;

    public MMAdView(Context context)
    {
        super(context);
        b = 4;
        c = 0;
        d = 0;
        e = -50;
        f = -50;
        h = new MMAdViewMMAdImpl(context);
        b(context);
    }

    public MMAdView(Context context, AttributeSet attributeset)
    {
        this(context, attributeset, 0);
    }

    public MMAdView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        b = 4;
        c = 0;
        d = 0;
        e = -50;
        f = -50;
        if (!isInEditMode())
        {
            MMLog.b("MMAdView", "Creating MMAdView from XML layout.");
            h = new MMAdViewMMAdImpl(context);
            if (attributeset != null)
            {
                setApid(attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "apid"));
                h.d = attributeset.getAttributeBooleanValue("http://millennialmedia.com/android/schema", "ignoreDensityScaling", false);
                String s = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "height");
                String s1 = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "width");
                try
                {
                    if (!TextUtils.isEmpty(s))
                    {
                        c = Integer.parseInt(s);
                    }
                    if (!TextUtils.isEmpty(s1))
                    {
                        d = Integer.parseInt(s1);
                    }
                }
                catch (NumberFormatException numberformatexception)
                {
                    MMLog.a("MMAdView", "Error reading attrs file from xml", numberformatexception);
                }
                if (h.b != null)
                {
                    h.b.a = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "age");
                    h.b.b = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "children");
                    h.b.c = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "education");
                    h.b.d = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "ethnicity");
                    h.b.e = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "gender");
                    h.b.f = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "income");
                    h.b.g = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "keywords");
                    h.b.h = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "marital");
                    h.b.i = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "politics");
                    h.b.j = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "vendor");
                    h.b.k = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "zip");
                }
                this.i = attributeset.getAttributeValue("http://millennialmedia.com/android/schema", "goalId");
            }
            b(context);
            return;
        } else
        {
            c(context);
            return;
        }
    }

    private void a(int i)
    {
        try
        {
            Class aclass[] = new Class[1];
            aclass[0] = Float.TYPE;
            Method method = android/view/View.getMethod("setTranslationX", aclass);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            method.invoke(this, aobj);
            return;
        }
        catch (Exception exception)
        {
            MMLog.a("MMAdView", "Unable to call setTranslationX", exception);
        }
    }

    private void a(View view)
    {
        this;
        JVM INSTR monitorenter ;
        if (view == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        android.view.ViewParent viewparent = getParent();
        if (viewparent == null)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        if (viewparent instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)viewparent;
            if (view.getParent() != null)
            {
                viewgroup.removeView(view);
            }
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(MMAdView mmadview, View view)
    {
        mmadview.b(view);
    }

    private void b(int i)
    {
        try
        {
            Class aclass[] = new Class[1];
            aclass[0] = Float.TYPE;
            Method method = android/view/View.getMethod("setTranslationY", aclass);
            Object aobj[] = new Object[1];
            aobj[0] = Integer.valueOf(i);
            method.invoke(this, aobj);
            return;
        }
        catch (Exception exception)
        {
            MMLog.a("MMAdView", "Unable to call setTranslationY", exception);
        }
    }

    private void b(Context context)
    {
        setBackgroundColor(0);
        h.f = "b";
        setOnClickListener(this);
        setFocusable(true);
        a = new ImageView(context);
        a.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
        a.setVisibility(8);
        addView(a, new android.widget.RelativeLayout.LayoutParams(-2, -2));
        setLayoutParams(new android.widget.RelativeLayout.LayoutParams(-2, -2));
    }

    private void b(View view)
    {
        this;
        JVM INSTR monitorenter ;
        Context context;
        a(view);
        context = getContext();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        Window window;
        if (!(context instanceof Activity))
        {
            break MISSING_BLOCK_LABEL_66;
        }
        window = ((Activity)context).getWindow();
        if (window == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        View view1 = window.getDecorView();
        if (view1 == null)
        {
            break MISSING_BLOCK_LABEL_66;
        }
        if (view1 instanceof ViewGroup)
        {
            ((ViewGroup)view1).addView(view);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void b(MMAdView mmadview, View view)
    {
        mmadview.a(view);
    }

    private void c()
    {
        if (d())
        {
            android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
            f = layoutparams.width;
            e = layoutparams.height;
            if (f <= 0)
            {
                f = getWidth();
            }
            if (e <= 0)
            {
                e = getHeight();
            }
        }
    }

    private void c(Context context)
    {
        FileOutputStream fileoutputstream;
        ImageView imageview;
        fileoutputstream = null;
        imageview = new ImageView(context);
        String s2 = System.getProperty("java.io.tmpdir");
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        if (!s2.endsWith(File.separator))
        {
            s2 = (new StringBuilder()).append(s2).append(File.separator).toString();
        }
        File file;
        InputStream inputstream1;
        file = new File((new StringBuilder()).append(s2).append("millenial355jns6u3l1nmedia.png").toString());
        if (file.exists())
        {
            break MISSING_BLOCK_LABEL_413;
        }
        HttpURLConnection httpurlconnection = (HttpURLConnection)(new URL("http://images.millennialmedia.com/9513/192134.gif")).openConnection();
        httpurlconnection.setDoOutput(true);
        httpurlconnection.setConnectTimeout(10000);
        httpurlconnection.connect();
        inputstream1 = httpurlconnection.getInputStream();
        FileOutputStream fileoutputstream1 = new FileOutputStream(file);
        byte abyte0[] = new byte[1024];
_L3:
        int i = inputstream1.read(abyte0);
        if (i <= 0) goto _L2; else goto _L1
_L1:
        fileoutputstream1.write(abyte0, 0, i);
          goto _L3
        Exception exception;
        exception;
        InputStream inputstream;
        fileoutputstream = fileoutputstream1;
        inputstream = inputstream1;
_L10:
        MMLog.a("MMAdView", "Error with eclipse xml image display: ", exception);
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_214;
        }
        inputstream.close();
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_222;
        }
        fileoutputstream.close();
_L7:
        addView(imageview);
        return;
_L2:
        fileoutputstream = fileoutputstream1;
        inputstream = inputstream1;
_L11:
        Bitmap bitmap = BitmapFactory.decodeFile(file.getAbsolutePath());
        if (imageview == null || bitmap == null)
        {
            break MISSING_BLOCK_LABEL_260;
        }
        imageview.setImageBitmap(bitmap);
        if (inputstream == null) goto _L5; else goto _L4
_L4:
        inputstream.close();
_L5:
        if (fileoutputstream == null) goto _L7; else goto _L6
_L6:
        fileoutputstream.close();
          goto _L7
        Exception exception3;
        exception3;
        String s;
        String s1;
        s = "MMAdView";
        s1 = "Error closing file";
_L8:
        MMLog.a(s, s1, exception3);
          goto _L7
        Exception exception1;
        exception1;
        inputstream = null;
_L9:
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_319;
        }
        inputstream.close();
        if (fileoutputstream != null)
        {
            try
            {
                fileoutputstream.close();
            }
            catch (Exception exception2)
            {
                MMLog.a("MMAdView", "Error closing file", exception2);
            }
        }
        throw exception1;
        exception3;
        s = "MMAdView";
        s1 = "Error closing file";
          goto _L8
        exception1;
        inputstream = inputstream1;
        fileoutputstream = null;
          goto _L9
        exception1;
        fileoutputstream = fileoutputstream1;
        inputstream = inputstream1;
          goto _L9
        exception1;
          goto _L9
        exception;
        fileoutputstream = null;
        inputstream = null;
          goto _L10
        exception;
        inputstream = inputstream1;
        fileoutputstream = null;
          goto _L10
        exception;
          goto _L10
        fileoutputstream = null;
        inputstream = null;
          goto _L11
    }

    private boolean d()
    {
        return f == -50 && e == -50;
    }

    private void getAdInternal()
    {
        if (h != null)
        {
            h.f();
        }
    }

    void a()
    {
        this;
        JVM INSTR monitorenter ;
        android.view.ViewParent viewparent;
        if (!MMSDK.c())
        {
            break MISSING_BLOCK_LABEL_129;
        }
        l();
        if (!d())
        {
            android.view.ViewGroup.LayoutParams layoutparams = getLayoutParams();
            layoutparams.width = f;
            layoutparams.height = e;
            a(0);
            b(0);
            f = -50;
            e = -50;
        }
        if (g == null)
        {
            break MISSING_BLOCK_LABEL_129;
        }
        j = true;
        g.a(this);
        viewparent = getParent();
        if (viewparent == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        if (viewparent instanceof ViewGroup)
        {
            ViewGroup viewgroup = (ViewGroup)viewparent;
            if (g.getParent() != null)
            {
                viewgroup.removeView(g);
            }
        }
        j = false;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    void a(DTOResizeParameters dtoresizeparameters)
    {
        this;
        JVM INSTR monitorenter ;
        android.view.ViewParent viewparent;
        a.setImageBitmap(null);
        if (!MMSDK.c())
        {
            break MISSING_BLOCK_LABEL_227;
        }
        if (g == null)
        {
            g = new ResizeView(getContext());
            g.setId(0x121f0dbe);
            g.setLayoutParams(new android.widget.RelativeLayout.LayoutParams(1, 1));
            g.setBackgroundColor(0);
        }
        if (g.getParent() != null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        viewparent = getParent();
        if (viewparent == null)
        {
            break MISSING_BLOCK_LABEL_114;
        }
        if (viewparent instanceof ViewGroup)
        {
            ((ViewGroup)viewparent).addView(g);
        }
        BannerBounds bannerbounds = new BannerBounds(dtoresizeparameters);
        if (!dtoresizeparameters.f)
        {
            bannerbounds.a();
        }
        int ai[] = new int[2];
        getLocationInWindow(ai);
        b(this);
        int ai1[] = new int[2];
        getLocationInWindow(ai1);
        c();
        int i = ai[0] - ai1[0];
        int j = ai[1] - ai1[1];
        bannerbounds.a(getLayoutParams());
        a(i + bannerbounds.a);
        b(j + bannerbounds.b);
        setCloseArea(dtoresizeparameters.c);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public volatile void addBlackView()
    {
        super.addBlackView();
    }

    void b()
    {
        h.p();
    }

    public void getAd()
    {
        if (h != null && h.c != null)
        {
            getAd(h.c);
            return;
        } else
        {
            getAdInternal();
            return;
        }
    }

    public void getAd(RequestListener requestlistener)
    {
        if (h != null)
        {
            h.c = requestlistener;
        }
        getAdInternal();
    }

    public volatile String getApid()
    {
        return super.getApid();
    }

    public volatile boolean getIgnoresDensityScaling()
    {
        return super.getIgnoresDensityScaling();
    }

    public volatile RequestListener getListener()
    {
        return super.getListener();
    }

    public volatile MMRequest getMMRequest()
    {
        return super.getMMRequest();
    }

    public void onAnimationEnd(Animation animation)
    {
        a.setVisibility(8);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    public void onClick(View view)
    {
        MMLog.b("MMAdView", (new StringBuilder()).append("On click for ").append(view.getId()).append(" view, ").append(view).append(" adimpl").append(h).toString());
        onTouchEvent(MotionEvent.obtain(0L, System.currentTimeMillis(), 1, 0.0F, 0.0F, 0));
    }

    protected void onLayout(boolean flag, int i, int j, int k, int l)
    {
        super.onLayout(flag, i, j, k, l);
        Utils.ThreadUtils.a(new Runnable() {

            final MMAdView a;

            public void run()
            {
                float f1 = a.getContext().getResources().getDisplayMetrics().density;
                if (a.d <= 0)
                {
                    a.d = (int)((float)a.getWidth() / f1);
                }
                if (a.c <= 0)
                {
                    a.c = (int)((float)a.getHeight() / f1);
                }
            }

            
            {
                a = MMAdView.this;
                super();
            }
        });
    }

    public volatile boolean onTouchEvent(MotionEvent motionevent)
    {
        return super.onTouchEvent(motionevent);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        super.onWindowFocusChanged(flag);
        if (flag && h != null && h.k != null)
        {
            if (h.k.b == null)
            {
                h.k.b = MMAdImplController.d(h);
            }
            MMWebView mmwebview = h.k.b;
            if (mmwebview != null && !mmwebview.a(h.h) && !mmwebview.c.equals("expanded"))
            {
                mmwebview.v();
                addView(mmwebview);
                return;
            }
        }
    }

    public volatile void removeBlackView()
    {
        super.removeBlackView();
    }

    public volatile void setApid(String s)
    {
        super.setApid(s);
    }

    public void setBackgroundColor(int i)
    {
        super.setBackgroundColor(i);
        if (h != null && h.k != null && h.k.b != null)
        {
            h.k.b.setBackgroundColor(i);
        }
    }

    public void setHeight(int i)
    {
        c = i;
    }

    public volatile void setIgnoresDensityScaling(boolean flag)
    {
        super.setIgnoresDensityScaling(flag);
    }

    public volatile void setListener(RequestListener requestlistener)
    {
        super.setListener(requestlistener);
    }

    public volatile void setMMRequest(MMRequest mmrequest)
    {
        super.setMMRequest(mmrequest);
    }

    public void setTransitionType(int i)
    {
        b = i;
    }

    public void setWidth(int i)
    {
        d = i;
    }

    private class MMAdViewMMAdImpl extends MMLayout.MMLayoutMMAdImpl
    {
        private class MMAdViewWebViewClientListener extends MMAdImpl.BasicWebViewClientListener
        {

            public void onPageFinished(String s)
            {
                super.onPageFinished(s);
                MMAdImpl mmadimpl = (MMAdImpl)a.get();
                if (mmadimpl != null && mmadimpl.h())
                {
                    mmadimpl.i();
                }
            }

            MMAdViewWebViewClientListener(MMAdImpl mmadimpl)
            {
                super(mmadimpl);
            }
        }


        final MMAdView a;

        void a(Bitmap bitmap)
        {
            a.a.setImageBitmap(bitmap);
            a.a.setVisibility(0);
            a.a.bringToFront();
        }

        void a(Map map)
        {
            if (a.c > 0)
            {
                map.put("hsht", String.valueOf(a.c));
            }
            if (a.d > 0)
            {
                map.put("hswd", String.valueOf(a.d));
            }
            super.a(map);
        }

        boolean h()
        {
            return a.b != 0;
        }

        public boolean hasCachedVideoSupport()
        {
            return false;
        }

        void i()
        {
            if (a.a.getDrawable() == null) goto _L2; else goto _L1
_L1:
            int j;
            j = a.b;
            if (j == 4)
            {
                j = (new Random()).nextInt(4);
            }
            j;
            JVM INSTR tableswitch 2 3: default 60
        //                       2 113
        //                       3 136;
               goto _L3 _L4 _L5
_L3:
            Object obj = new AlphaAnimation(1.0F, 0.0F);
_L7:
            ((Animation) (obj)).setDuration(1000L);
            ((Animation) (obj)).setAnimationListener(a);
            ((Animation) (obj)).setFillEnabled(true);
            ((Animation) (obj)).setFillBefore(true);
            ((Animation) (obj)).setFillAfter(true);
            MMSDK.a(new Runnable(((Animation) (obj))) {

                final Animation a;
                final MMAdViewMMAdImpl b;

                public void run()
                {
                    b.a.a.startAnimation(a);
                }

                
                {
                    b = MMAdViewMMAdImpl.this;
                    a = animation;
                    super();
                }
            });
_L2:
            return;
_L4:
            obj = new TranslateAnimation(0.0F, 0.0F, 0.0F, -(float)a.getHeight());
            continue; /* Loop/switch isn't completed */
_L5:
            obj = new TranslateAnimation(0.0F, 0.0F, 0.0F, a.getHeight());
            if (true) goto _L7; else goto _L6
_L6:
        }

        public boolean isBanner()
        {
            return true;
        }

        String m()
        {
            return "millennialmedia.action.ACTION_GETAD_FAILED";
        }

        String n()
        {
            return "millennialmedia.action.ACTION_GETAD_SUCCEEDED";
        }

        String o()
        {
            return "getad";
        }

        boolean q()
        {
            return a.getWindowToken() != null;
        }

        public MMAdViewMMAdImpl(Context context)
        {
            a = MMAdView.this;
            super(MMAdView.this, context);
            m = new MMAdViewWebViewClientListener(this);
        }
    }


    private class ResizeView extends View
    {

        final MMAdView a;

        void a(View view)
        {
            this;
            JVM INSTR monitorenter ;
            MMAdView.b(a, view);
            if (getParent() != null && (getParent() instanceof ViewGroup))
            {
                ((ViewGroup)getParent()).addView(view);
            }
            this;
            JVM INSTR monitorexit ;
            return;
            Exception exception;
            exception;
            throw exception;
        }

        protected void onRestoreInstanceState(Parcelable parcelable)
        {
            MMLog.b("MMAdView", "onRestoreInstanceState");
            MMAdView.a(a, a);
            super.onRestoreInstanceState(parcelable);
        }

        protected Parcelable onSaveInstanceState()
        {
            MMLog.b("MMAdView", "onSaveInstanceState");
            a(a);
            return super.onSaveInstanceState();
        }

        public ResizeView(Context context)
        {
            a = MMAdView.this;
            super(context);
        }
    }


    private class BannerBounds
    {

        int a;
        int b;
        DTOResizeParameters c;
        final MMAdView d;

        private BoundsResult a(int i, int j, int k, int l)
        {
            if (j + (i + k) <= l) goto _L2; else goto _L1
_L1:
            j += l - k;
            if (j >= 0) goto _L4; else goto _L3
_L3:
            j = 0;
            k = l;
_L6:
            class BoundsResult
            {

                int a;
                int b;
                final BannerBounds c;

                private BoundsResult()
                {
                    c = BannerBounds.this;
                    super();
                }

            }

            BoundsResult boundsresult = new BoundsResult();
            boundsresult.a = j - i;
            boundsresult.b = k;
            return boundsresult;
_L4:
            if (j + k > l)
            {
                j = l - k;
            }
            continue; /* Loop/switch isn't completed */
_L2:
            if (j <= 0)
            {
                j = i;
            }
            if (true) goto _L6; else goto _L5
_L5:
        }

        private void b()
        {
            int ai[] = new int[2];
            d.getLocationInWindow(ai);
            BoundsResult boundsresult = a(ai[0], c.d, c.a, c.g);
            c.a = boundsresult.b;
            a = boundsresult.a;
        }

        private void c()
        {
            int ai[] = new int[2];
            d.getLocationInWindow(ai);
            BoundsResult boundsresult = a(ai[1], c.e, c.b, c.h);
            c.b = boundsresult.b;
            b = boundsresult.a;
        }

        android.view.ViewGroup.LayoutParams a(android.view.ViewGroup.LayoutParams layoutparams)
        {
            layoutparams.width = c.a;
            layoutparams.height = c.b;
            return layoutparams;
        }

        void a()
        {
            b();
            c();
        }

        BannerBounds(DTOResizeParameters dtoresizeparameters)
        {
            d = MMAdView.this;
            super();
            c = dtoresizeparameters;
            a = dtoresizeparameters.d;
            b = dtoresizeparameters.e;
        }
    }

}
