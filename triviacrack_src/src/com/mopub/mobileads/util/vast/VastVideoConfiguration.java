// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads.util.vast;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.mopub.mobileads.util.vast:
//            VastCompanionAd

public class VastVideoConfiguration
    implements Serializable
{

    private ArrayList a;
    private ArrayList b;
    private ArrayList c;
    private ArrayList d;
    private ArrayList e;
    private ArrayList f;
    private ArrayList g;
    private String h;
    private String i;
    private String j;
    private VastCompanionAd k;

    public VastVideoConfiguration()
    {
        a = new ArrayList();
        b = new ArrayList();
        c = new ArrayList();
        d = new ArrayList();
        e = new ArrayList();
        f = new ArrayList();
        g = new ArrayList();
    }

    public void addClickTrackers(List list)
    {
        g.addAll(list);
    }

    public void addCompleteTrackers(List list)
    {
        f.addAll(list);
    }

    public void addFirstQuartileTrackers(List list)
    {
        c.addAll(list);
    }

    public void addImpressionTrackers(List list)
    {
        a.addAll(list);
    }

    public void addMidpointTrackers(List list)
    {
        d.addAll(list);
    }

    public void addStartTrackers(List list)
    {
        b.addAll(list);
    }

    public void addThirdQuartileTrackers(List list)
    {
        e.addAll(list);
    }

    public String getClickThroughUrl()
    {
        return h;
    }

    public List getClickTrackers()
    {
        return g;
    }

    public List getCompleteTrackers()
    {
        return f;
    }

    public String getDiskMediaFileUrl()
    {
        return j;
    }

    public List getFirstQuartileTrackers()
    {
        return c;
    }

    public List getImpressionTrackers()
    {
        return a;
    }

    public List getMidpointTrackers()
    {
        return d;
    }

    public String getNetworkMediaFileUrl()
    {
        return i;
    }

    public List getStartTrackers()
    {
        return b;
    }

    public List getThirdQuartileTrackers()
    {
        return e;
    }

    public VastCompanionAd getVastCompanionAd()
    {
        return k;
    }

    public void setClickThroughUrl(String s)
    {
        h = s;
    }

    public void setDiskMediaFileUrl(String s)
    {
        j = s;
    }

    public void setNetworkMediaFileUrl(String s)
    {
        i = s;
    }

    public void setVastCompanionAd(VastCompanionAd vastcompanionad)
    {
        k = vastcompanionad;
    }
}
