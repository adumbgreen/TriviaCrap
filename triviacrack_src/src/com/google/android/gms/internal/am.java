// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

// Referenced classes of package com.google.android.gms.internal:
//            m, fw

public final class am
    implements SafeParcelable
{

    public static final m CREATOR = new m();
    public final int a;
    public final String b;
    public final int c;
    public final int d;
    public final boolean e;
    public final int f;
    public final int g;
    public final am h[];

    public am()
    {
        this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
    }

    am(int i, String s, int j, int k, boolean flag, int l, int i1, 
            am aam[])
    {
        a = i;
        b = s;
        c = j;
        d = k;
        e = flag;
        f = l;
        g = i1;
        h = aam;
    }

    public am(Context context, AdSize adsize)
    {
        this(context, new AdSize[] {
            adsize
        });
    }

    public am(Context context, AdSize aadsize[])
    {
        int i = 0;
        super();
        AdSize adsize = aadsize[0];
        a = 2;
        e = false;
        f = adsize.getWidth();
        c = adsize.getHeight();
        boolean flag;
        boolean flag1;
        DisplayMetrics displaymetrics;
        int k;
        int l;
        if (f == -1)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (c == -2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        displaymetrics = context.getResources().getDisplayMetrics();
        if (flag)
        {
            g = a(displaymetrics);
            k = (int)((float)g / displaymetrics.density);
        } else
        {
            int j = f;
            g = com.google.android.gms.internal.fw.a(displaymetrics, f);
            k = j;
        }
        if (flag1)
        {
            l = c(displaymetrics);
        } else
        {
            l = c;
        }
        d = com.google.android.gms.internal.fw.a(displaymetrics, l);
        if (flag || flag1)
        {
            b = (new StringBuilder()).append(k).append("x").append(l).append("_as").toString();
        } else
        {
            b = adsize.toString();
        }
        if (aadsize.length > 1)
        {
            h = new am[aadsize.length];
            for (; i < aadsize.length; i++)
            {
                h[i] = new am(context, aadsize[i]);
            }

        } else
        {
            h = null;
        }
    }

    public am(am am1, am aam[])
    {
        this(2, am1.b, am1.c, am1.d, am1.e, am1.f, am1.g, aam);
    }

    public static int a(DisplayMetrics displaymetrics)
    {
        return displaymetrics.widthPixels;
    }

    public static int b(DisplayMetrics displaymetrics)
    {
        return (int)((float)c(displaymetrics) * displaymetrics.density);
    }

    private static int c(DisplayMetrics displaymetrics)
    {
        int i = (int)((float)displaymetrics.heightPixels / displaymetrics.density);
        if (i <= 400)
        {
            return 32;
        }
        return i > 720 ? 90 : 50;
    }

    public AdSize a()
    {
        return com.google.android.gms.ads.a.a(f, c, b);
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        com.google.android.gms.internal.m.a(this, parcel, i);
    }

}
