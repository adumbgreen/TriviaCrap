// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.controller.mraid;

import android.os.Parcel;
import android.os.Parcelable;

public class SASMRAIDVideoConfig
    implements Parcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public SASMRAIDVideoConfig a(Parcel parcel)
        {
            return new SASMRAIDVideoConfig(parcel);
        }

        public SASMRAIDVideoConfig[] a(int j)
        {
            return new SASMRAIDVideoConfig[j];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int j)
        {
            return a(j);
        }

    };
    private String a;
    private int b;
    private int c;
    private boolean d;
    private boolean e;
    private boolean f;
    private boolean g;
    private String h;
    private String i;

    private SASMRAIDVideoConfig(Parcel parcel)
    {
        boolean flag = true;
        super();
        a = parcel.readString();
        b = parcel.readInt();
        c = parcel.readInt();
        boolean flag1;
        boolean flag2;
        boolean flag3;
        if (parcel.readByte() == flag)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        d = flag1;
        if (parcel.readByte() == flag)
        {
            flag2 = flag;
        } else
        {
            flag2 = false;
        }
        e = flag2;
        if (parcel.readByte() == flag)
        {
            flag3 = flag;
        } else
        {
            flag3 = false;
        }
        f = flag3;
        if (parcel.readByte() != flag)
        {
            flag = false;
        }
        g = flag;
        h = parcel.readString();
        i = parcel.readString();
    }


    public SASMRAIDVideoConfig(String s, int j, int k, boolean flag, boolean flag1, boolean flag2, boolean flag3, 
            String s1, String s2)
    {
        a = s;
        b = j;
        c = k;
        d = flag;
        e = flag1;
        f = flag2;
        g = flag3;
        h = s1;
        i = s2;
    }

    public boolean a()
    {
        return d;
    }

    public boolean b()
    {
        return e;
    }

    public boolean c()
    {
        return f;
    }

    public boolean d()
    {
        return g;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean e()
    {
        return h.equals("fullscreen");
    }

    public boolean f()
    {
        return i.equals("exit");
    }

    public String g()
    {
        return a;
    }

    public float h()
    {
        if (c != 0)
        {
            return (float)b / (float)c;
        } else
        {
            return 0.0F;
        }
    }

    public void writeToParcel(Parcel parcel, int j)
    {
        int k = 1;
        parcel.writeString(a);
        parcel.writeInt(b);
        parcel.writeInt(c);
        int l;
        int i1;
        int j1;
        if (d)
        {
            l = k;
        } else
        {
            l = 0;
        }
        parcel.writeByte((byte)l);
        if (e)
        {
            i1 = k;
        } else
        {
            i1 = 0;
        }
        parcel.writeByte((byte)i1);
        if (f)
        {
            j1 = k;
        } else
        {
            j1 = 0;
        }
        parcel.writeByte((byte)j1);
        if (!g)
        {
            k = 0;
        }
        parcel.writeByte((byte)k);
        parcel.writeString(h);
        parcel.writeString(i);
    }

}
