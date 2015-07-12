// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.admob.smartads;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.etermax.a.a;
import com.google.ads.mediation.customevent.CustomEventListener;
import com.smartadserver.android.library.ui.SASAdView;
import com.smartadserver.android.library.ui.e;

public abstract class SmartAdsBaseContainer
{

    protected Activity mActivity;
    private int mFormatId;
    private String mPageId;
    private int mSiteId;
    protected SASAdView mView;

    public SmartAdsBaseContainer(Activity activity, int i, String s, int j)
    {
        mActivity = activity;
        mSiteId = i;
        mPageId = s;
        mFormatId = j;
        initAdsView(activity);
    }

    protected abstract void adClicked();

    protected void destroy()
    {
        a.c("SMARTADS", "Smartads stopped");
        if (mView != null)
        {
            a.c("admob ads", (new StringBuilder()).append("SmartAdsBaseContainer - destroy - adWasOpened = ").append(mView.l()).toString());
            if (mView.l())
            {
                adClicked();
            }
            mView.b();
            mView = null;
        }
    }

    protected View getLoader(Context context, int i)
    {
        e e1 = new e(context);
        e1.setBackgroundColor(i);
        return e1;
    }

    protected abstract com.smartadserver.android.library.ui.a getResponseHandler(CustomEventListener customeventlistener);

    protected abstract void initAdsView(Context context);

    public void loadAd(CustomEventListener customeventlistener)
    {
        a.c("SMARTADS", "Smartads started");
        mView.a(mSiteId, mPageId, mFormatId, true, "", getResponseHandler(customeventlistener));
    }
}
