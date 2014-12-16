// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Serializable;
import org.apache.http.Header;

// Referenced classes of package com.millennialmedia.android:
//            MMLog

class HttpMMHeaders
    implements Parcelable, Serializable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public HttpMMHeaders createFromParcel(Parcel parcel)
        {
            return new HttpMMHeaders(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public HttpMMHeaders[] newArray(int i)
        {
            return new HttpMMHeaders[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final String g = com/millennialmedia/android/HttpMMHeaders.getName();
    boolean a;
    long b;
    String c;
    boolean d;
    boolean e;
    String f;

    public HttpMMHeaders(Parcel parcel)
    {
        try
        {
            boolean aflag[] = new boolean[3];
            parcel.readBooleanArray(aflag);
            a = aflag[0];
            d = aflag[1];
            e = aflag[2];
            c = parcel.readString();
            f = parcel.readString();
            b = parcel.readLong();
            return;
        }
        catch (Exception exception)
        {
            MMLog.a(g, "Header serializing failed", exception);
        }
    }

    public HttpMMHeaders(Header aheader[])
    {
        int i = aheader.length;
        for (int j = 0; j < i; j++)
        {
            Header header = aheader[j];
            a(header);
            b(header);
            c(header);
            d(header);
            e(header);
            f(header);
        }

    }

    private void a(Header header)
    {
        if ("X-MM-TRANSPARENT".equalsIgnoreCase(header.getName()))
        {
            String s = header.getValue();
            if (s != null)
            {
                a = Boolean.parseBoolean(s);
            }
        }
    }

    private void b(Header header)
    {
        if ("X-MM-TRANSITION".equalsIgnoreCase(header.getName()))
        {
            c = header.getValue();
        }
    }

    private void c(Header header)
    {
        if ("X-MM-TRANSITION-DURATION".equalsIgnoreCase(header.getName()))
        {
            String s = header.getValue();
            if (s != null)
            {
                b = (long)(1000F * Float.parseFloat(s));
            }
        }
    }

    private void d(Header header)
    {
        if ("X-MM-USE-CUSTOM-CLOSE".equalsIgnoreCase(header.getName()))
        {
            d = Boolean.parseBoolean(header.getValue());
        }
    }

    private void e(Header header)
    {
        if ("X-MM-ENABLE-HARDWARE-ACCELERATION".equalsIgnoreCase(header.getName()))
        {
            e = Boolean.parseBoolean(header.getValue());
        }
    }

    private void f(Header header)
    {
        if ("X-MM-ACID".equalsIgnoreCase(header.getName()))
        {
            f = header.getValue();
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        boolean aflag[] = new boolean[3];
        aflag[0] = a;
        aflag[1] = d;
        aflag[2] = e;
        parcel.writeBooleanArray(aflag);
        parcel.writeString(c);
        parcel.writeString(f);
        parcel.writeLong(b);
    }

}
