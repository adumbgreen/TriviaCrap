// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.util.TypedValue;
import android.view.View;
import android.widget.LinearLayout;
import com.google.ads.mediation.customevent.CustomEventBannerListener;
import com.google.ads.mediation.customevent.CustomEventListener;
import com.smartadserver.android.library.SASBannerView;
import com.smartadserver.android.library.ui.a;

// Referenced classes of package com.etermax.admob.smartads:
//            SmartAdsBaseContainer

public class SmartAdsBannerContainer extends SmartAdsBaseContainer
{

    protected LinearLayout mContainer;

    public SmartAdsBannerContainer(Activity activity, int i, String s, int j)
    {
        super(activity, i, s, j);
    }

    protected void adClicked()
    {
    }

    protected void destroy()
    {
        super.destroy();
        mContainer.removeAllViews();
    }

    protected a getResponseHandler(final CustomEventBannerListener listener)
    {
        ((SASBannerView)mView).setOnClickListener(new android.view.View.OnClickListener() {

            final SmartAdsBannerContainer this$0;
            final CustomEventBannerListener val$listener;

            public void onClick(View view)
            {
                com.etermax.a.a.c("admob ads", "SmartAdsBannerContainer - onClick");
                listener.onClick();
            }

            
            {
                this$0 = SmartAdsBannerContainer.this;
                listener = customeventbannerlistener;
                super();
            }
        });
        return new a() {

            final SmartAdsBannerContainer this$0;
            final CustomEventBannerListener val$listener;

            public void adLoadingCompleted(com.smartadserver.android.library.d.a a1)
            {
                com.etermax.a.a.c("admob ads", "SmartAdsBannerContainer - adLoadingCompleted");
                listener.onReceivedAd(mContainer);
            }

            public void adLoadingFailed(Exception exception)
            {
                com.etermax.a.a.b("admob ads", "SmartAdsBannerContainer - adLoadingFailed", exception);
                listener.onFailedToReceiveAd();
            }

            
            {
                this$0 = SmartAdsBannerContainer.this;
                listener = customeventbannerlistener;
                super();
            }
        };
    }

    protected volatile a getResponseHandler(CustomEventListener customeventlistener)
    {
        return getResponseHandler((CustomEventBannerListener)customeventlistener);
    }

    protected void initAdsView(Context context)
    {
        mView = new SASBannerView(context);
        mContainer = new LinearLayout(context);
        int i = (int)TypedValue.applyDimension(1, 50F, context.getResources().getDisplayMetrics());
        ((SASBannerView)mView).setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, i));
        ((SASBannerView)mView).setLoaderView(getLoader(context, 0x66000000));
        mContainer.setLayoutParams(new android.view.ViewGroup.LayoutParams(-1, i));
        mContainer.addView(mView);
    }
}
