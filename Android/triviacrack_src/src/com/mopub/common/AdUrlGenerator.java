// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import android.content.Context;
import android.location.Location;
import com.mopub.common.util.IntentUtils;

// Referenced classes of package com.mopub.common:
//            BaseUrlGenerator

public abstract class AdUrlGenerator extends BaseUrlGenerator
{

    private static TwitterAppInstalledStatus e;
    protected Context a;
    protected String b;
    protected String c;
    protected Location d;

    public AdUrlGenerator(Context context)
    {
        a = context;
    }

    private void a(String s, ClientMetadata.MoPubNetworkType mopubnetworktype)
    {
        b(s, mopubnetworktype.toString());
    }

    private int m(String s)
    {
        return Math.min(3, s.length());
    }

    public static void setTwitterAppInstalledStatus(TwitterAppInstalledStatus twitterappinstalledstatus)
    {
        e = twitterappinstalledstatus;
    }

    protected void a()
    {
        if (e == TwitterAppInstalledStatus.UNKNOWN)
        {
            e = getTwitterAppInstallStatus();
        }
        if (e == TwitterAppInstalledStatus.INSTALLED)
        {
            b("ts", "1");
        }
    }

    protected void a(float f1)
    {
        b("sc_a", (new StringBuilder()).append("").append(f1).toString());
    }

    protected void a(Location location)
    {
        if (location != null)
        {
            b("ll", (new StringBuilder()).append(location.getLatitude()).append(",").append(location.getLongitude()).toString());
            b("lla", (new StringBuilder()).append("").append((int)location.getAccuracy()).toString());
        }
    }

    protected void a(ClientMetadata.MoPubNetworkType mopubnetworktype)
    {
        a("ct", mopubnetworktype);
    }

    protected void a(String s)
    {
        b("id", s);
    }

    protected void a(boolean flag)
    {
        if (flag)
        {
            b("mr", "1");
        }
    }

    protected void b(String s)
    {
        b("nv", s);
    }

    protected void c(String s)
    {
        b("q", s);
    }

    protected void d(String s)
    {
        b("z", s);
    }

    protected void e(String s)
    {
        b("o", s);
    }

    protected void f(String s)
    {
        String s1;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.substring(0, m(s));
        }
        b("mcc", s1);
    }

    protected void g(String s)
    {
        String s1;
        if (s == null)
        {
            s1 = "";
        } else
        {
            s1 = s.substring(m(s));
        }
        b("mnc", s1);
    }

    public TwitterAppInstalledStatus getTwitterAppInstallStatus()
    {
        if (IntentUtils.canHandleTwitterUrl(a))
        {
            return TwitterAppInstalledStatus.INSTALLED;
        } else
        {
            return TwitterAppInstalledStatus.NOT_INSTALLED;
        }
    }

    protected void h(String s)
    {
        b("iso", s);
    }

    protected void i(String s)
    {
        b("cn", s);
    }

    public AdUrlGenerator withAdUnitId(String s)
    {
        b = s;
        return this;
    }

    public AdUrlGenerator withFacebookSupported(boolean flag)
    {
        return this;
    }

    public AdUrlGenerator withKeywords(String s)
    {
        c = s;
        return this;
    }

    public AdUrlGenerator withLocation(Location location)
    {
        d = location;
        return this;
    }

    static 
    {
        e = TwitterAppInstalledStatus.UNKNOWN;
    }

    private class TwitterAppInstalledStatus extends Enum
    {

        public static final TwitterAppInstalledStatus INSTALLED;
        public static final TwitterAppInstalledStatus NOT_INSTALLED;
        public static final TwitterAppInstalledStatus UNKNOWN;
        private static final TwitterAppInstalledStatus a[];

        public static TwitterAppInstalledStatus valueOf(String s)
        {
            return (TwitterAppInstalledStatus)Enum.valueOf(com/mopub/common/AdUrlGenerator$TwitterAppInstalledStatus, s);
        }

        public static TwitterAppInstalledStatus[] values()
        {
            return (TwitterAppInstalledStatus[])a.clone();
        }

        static 
        {
            UNKNOWN = new TwitterAppInstalledStatus("UNKNOWN", 0);
            NOT_INSTALLED = new TwitterAppInstalledStatus("NOT_INSTALLED", 1);
            INSTALLED = new TwitterAppInstalledStatus("INSTALLED", 2);
            TwitterAppInstalledStatus atwitterappinstalledstatus[] = new TwitterAppInstalledStatus[3];
            atwitterappinstalledstatus[0] = UNKNOWN;
            atwitterappinstalledstatus[1] = NOT_INSTALLED;
            atwitterappinstalledstatus[2] = INSTALLED;
            a = atwitterappinstalledstatus;
        }

        private TwitterAppInstalledStatus(String s, int j)
        {
            super(s, j);
        }
    }

}
