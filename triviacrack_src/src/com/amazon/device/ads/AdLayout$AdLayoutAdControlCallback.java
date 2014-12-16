// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.device.ads;

import android.graphics.Rect;

// Referenced classes of package com.amazon.device.ads:
//            AdControlCallback, AdLayout, AdController, AdState, 
//            AdEvent, AdListener, ExtendedAdListener, ParameterMap, 
//            AdError, MetricsCollector, AdContainer, AdProperties

class this._cls0
    implements AdControlCallback
{

    private AdProperties properties;
    final AdLayout this$0;

    public int adClosing()
    {
        return !AdLayout.access$100(AdLayout.this).getAdState().equals(AdState.EXPANDED) ? 2 : 0;
    }

    boolean handleAdEvent(AdEvent adevent)
    {
        switch (vice.ads.AdEvent.AdEventType[adevent.getAdEventType().AdEventType()])
        {
        default:
            return false;

        case 1: // '\001'
            AdLayout.access$500(AdLayout.this).onAdExpanded(AdLayout.this);
            return true;

        case 2: // '\002'
            AdLayout.access$500(AdLayout.this).onAdCollapsed(AdLayout.this);
            return true;

        case 3: // '\003'
            break;
        }
        if (AdLayout.access$500(AdLayout.this) instanceof ExtendedAdListener)
        {
            Rect rect = (Rect)adevent.getParameters().getParameter("positionOnScreen");
            ((ExtendedAdListener)AdLayout.access$500(AdLayout.this)).onAdResized(rect);
        }
        return true;
    }

    public boolean isAdReady(boolean flag)
    {
        return prepareAd(flag);
    }

    void notifyAdShowing(AdProperties adproperties)
    {
        adShown();
        AdLayout.access$500(AdLayout.this).onAdLoaded(AdLayout.this, adproperties);
    }

    public void onAdEvent(AdEvent adevent)
    {
        handleAdEvent(adevent);
    }

    public void onAdFailed(AdError aderror)
    {
        if (handleAdEvent.handleAdEvent(aderror.getCode()))
        {
            AdLayout.access$602(AdLayout.this, null);
        }
        AdLayout.access$500(AdLayout.this).onAdFailedToLoad(AdLayout.this, aderror);
    }

    public void onAdLoaded(AdProperties adproperties)
    {
        properties = adproperties;
        AdLayout.access$100(AdLayout.this).render();
    }

    public void onAdRendered()
    {
        AdLayout.access$100(AdLayout.this).getMetricsCollector().startMetric(this._fld0);
        if (AdLayout.access$400(AdLayout.this) != null)
        {
            removeView(AdLayout.access$400(AdLayout.this));
            AdLayout.access$400(AdLayout.this).destroy();
        }
        AdLayout.access$402(AdLayout.this, AdLayout.access$100(AdLayout.this).getView());
        android.widget.llback llback = new android.widget.llback.this._cls0(-1, -1, 17);
        addView(AdLayout.access$400(AdLayout.this), llback);
        notifyAdShowing(properties);
    }

    public void postAdRendered()
    {
    }

    ()
    {
        this$0 = AdLayout.this;
        super();
    }
}
