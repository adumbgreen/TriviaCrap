// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;

// Referenced classes of package com.millennialmedia.android:
//            HttpMMHeaders, MMLog

class OverlaySettings
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public OverlaySettings createFromParcel(Parcel parcel)
        {
            return new OverlaySettings(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public OverlaySettings[] newArray(int i1)
        {
            return new OverlaySettings[i1];
        }

        public volatile Object[] newArray(int i1)
        {
            return newArray(i1);
        }

    };
    boolean a;
    int b;
    String c;
    String d;
    int e;
    int f;
    boolean g;
    boolean h;
    String i;
    String j;
    HttpMMHeaders k;
    boolean l;
    boolean m;
    long n;
    private boolean o;
    private boolean p;
    private long q;
    private String r;

    OverlaySettings()
    {
        r = "";
        c = "";
        d = "";
        h = true;
        i = "";
        j = "";
        l = false;
    }

    OverlaySettings(Parcel parcel)
    {
        long l1;
        l1 = 0L;
        super();
        r = "";
        c = "";
        d = "";
        h = true;
        i = "";
        j = "";
        l = false;
        boolean aflag[] = new boolean[6];
        parcel.readBooleanArray(aflag);
        a = aflag[0];
        p = aflag[1];
        o = aflag[2];
        g = aflag[3];
        m = aflag[4];
        h = aflag[5];
        b = parcel.readInt();
        r = parcel.readString();
        q = parcel.readLong();
        if (q >= l1)
        {
            try
            {
                l1 = q;
            }
            catch (Exception exception)
            {
                MMLog.a("OverlaySettings", "Exception Overlaysettings creationg from parcel: ", exception);
                return;
            }
        }
        q = l1;
        c = parcel.readString();
        n = parcel.readLong();
        d = parcel.readString();
        e = parcel.readInt();
        f = parcel.readInt();
        i = parcel.readString();
        j = parcel.readString();
        k = (HttpMMHeaders)parcel.readParcelable(com/millennialmedia/android/HttpMMHeaders.getClassLoader());
        return;
    }

    void a()
    {
        MMLog.a("OverlaySettings", toString());
    }

    void a(long l1)
    {
        q = l1;
    }

    void a(HttpMMHeaders httpmmheaders)
    {
        k = httpmmheaders;
    }

    void a(String s)
    {
        r = s;
    }

    void a(boolean flag)
    {
        o = flag;
    }

    void b(boolean flag)
    {
        p = flag;
    }

    boolean b()
    {
        return !m && n != 0L;
    }

    boolean c()
    {
        return m && n != 0L;
    }

    boolean d()
    {
        return d != null && !d.equals("");
    }

    public int describeContents()
    {
        return 0;
    }

    boolean e()
    {
        boolean flag = true;
        if (!l)
        {
            l = flag;
            flag = false;
        }
        return flag;
    }

    long f()
    {
        long l1 = 0L;
        if (q > l1)
        {
            l1 = q;
        } else
        if (k != null)
        {
            return k.b;
        }
        return l1;
    }

    String g()
    {
        if (!TextUtils.isEmpty(r))
        {
            return r;
        }
        if (k != null && !TextUtils.isEmpty(k.c))
        {
            return k.c;
        } else
        {
            return "none";
        }
    }

    boolean h()
    {
        return o || k != null && k.d;
    }

    boolean i()
    {
        return p || k != null && k.a;
    }

    boolean j()
    {
        return k != null && k.e;
    }

    public String toString()
    {
        Object aobj[] = new Object[11];
        aobj[0] = Integer.valueOf(e);
        aobj[1] = Integer.valueOf(f);
        aobj[2] = Boolean.valueOf(g);
        aobj[3] = d;
        aobj[4] = Long.valueOf(n);
        aobj[5] = Integer.valueOf(b);
        aobj[6] = Long.valueOf(q);
        aobj[7] = r;
        aobj[8] = Boolean.valueOf(p);
        aobj[9] = Boolean.valueOf(o);
        aobj[10] = c;
        return String.format("height %d width %d modal %b urlToLoad %s creatorAdImplId %s shouldResizeOverlay: %d transitionTime: %d overlayTransition: %s shouldMakeOverlayTransparent: %b shouldShowCustomClose: %b Orientation: %s", aobj);
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        boolean aflag[] = new boolean[6];
        aflag[0] = a;
        aflag[1] = p;
        aflag[2] = o;
        aflag[3] = g;
        aflag[4] = m;
        aflag[5] = h;
        parcel.writeBooleanArray(aflag);
        parcel.writeInt(b);
        parcel.writeString(r);
        parcel.writeLong(q);
        parcel.writeString(c);
        parcel.writeLong(n);
        parcel.writeString(d);
        parcel.writeInt(e);
        parcel.writeInt(f);
        parcel.writeString(i);
        parcel.writeString(j);
        parcel.writeParcelable(k, i1);
    }

}
