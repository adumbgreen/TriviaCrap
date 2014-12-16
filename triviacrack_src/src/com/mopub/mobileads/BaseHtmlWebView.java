// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebSettings;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.VersionCode;

// Referenced classes of package com.mopub.mobileads:
//            BaseWebView, bk, ViewGestureDetector, AdConfiguration

public class BaseHtmlWebView extends BaseWebView
    implements bk
{

    private final ViewGestureDetector b;
    private boolean c;

    public BaseHtmlWebView(Context context, AdConfiguration adconfiguration)
    {
        super(context);
        a();
        getSettings().setJavaScriptEnabled(true);
        b = new ViewGestureDetector(context, this, adconfiguration);
        b.a(this);
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.ICE_CREAM_SANDWICH))
        {
            b(true);
        }
        setBackgroundColor(0);
    }

    static ViewGestureDetector a(BaseHtmlWebView basehtmlwebview)
    {
        return basehtmlwebview.b;
    }

    private void a()
    {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    void a(String s)
    {
        loadDataWithBaseURL("http://ads.mopub.com/", s, "text/html", "utf-8", null);
    }

    void a(boolean flag)
    {
        setOnTouchListener(new android.view.View.OnTouchListener(flag) {

            final boolean a;
            final BaseHtmlWebView b;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                BaseHtmlWebView.a(b).a(motionevent);
                return motionevent.getAction() == 2 && !a;
            }

            
            {
                b = BaseHtmlWebView.this;
                a = flag;
                super();
            }
        });
    }

    public void init(boolean flag)
    {
        a(flag);
    }

    public void loadUrl(String s)
    {
        if (s != null)
        {
            MoPubLog.d((new StringBuilder()).append("Loading url: ").append(s).toString());
            if (s.startsWith("javascript:"))
            {
                super.loadUrl(s);
                return;
            }
        }
    }

    public void onResetUserClick()
    {
        c = false;
    }

    public void onUserClick()
    {
        c = true;
    }

    public boolean wasClicked()
    {
        return c;
    }
}
