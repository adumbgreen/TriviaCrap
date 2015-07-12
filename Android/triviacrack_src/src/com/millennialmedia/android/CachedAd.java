// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.os.Parcel;
import java.io.Externalizable;
import java.io.File;
import java.io.FileFilter;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMSDK, MMLog, VideoAd, AdCache, 
//            MMAdImpl

abstract class CachedAd
    implements Externalizable
{

    String a;
    Date b;
    long c;
    String d;
    int e;
    boolean f;
    private String g;

    CachedAd()
    {
        f = false;
        c = System.currentTimeMillis();
    }

    protected CachedAd(Parcel parcel)
    {
        f = false;
        try
        {
            g = parcel.readString();
            a = parcel.readString();
            b = (Date)parcel.readSerializable();
            c = parcel.readLong();
            boolean aflag[] = new boolean[1];
            parcel.readBooleanArray(aflag);
            f = aflag[0];
            d = parcel.readString();
            e = parcel.readInt();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    static CachedAd a(String s)
    {
        if (MMSDK.a < 5) goto _L2; else goto _L1
_L1:
        int i;
        MMLog.a("CachedAd", "Received cached ad.");
        i = s.length();
        if (i <= 1000) goto _L4; else goto _L3
_L3:
        int j;
        int k;
        j = 999;
        k = 0;
_L7:
        int j1;
        if (j >= i)
        {
            break MISSING_BLOCK_LABEL_117;
        }
        MMLog.a("CachedAd", s.substring(k, j));
        j1 = j + 1000;
        if (j1 <= i) goto _L6; else goto _L5
_L5:
        int i1 = i - 1;
_L8:
        MMLog.a("CachedAd", s.substring(j, i1));
_L2:
        if (s.length() > 0)
        {
            return new VideoAd(s);
        } else
        {
            return null;
        }
_L4:
        MMLog.a("CachedAd", s);
          goto _L2
_L6:
        int k1 = j;
        j = j1;
        k = k1;
          goto _L7
        int l = k;
        i1 = j;
        j = l;
          goto _L8
    }

    static String a(CachedAd cachedad)
    {
        return cachedad.g;
    }

    abstract void a(Context context, long l);

    protected void a(JSONObject jsonobject)
    {
        String s;
        SimpleDateFormat simpledateformat;
        g = jsonobject.optString("id", null);
        a = jsonobject.optString("vid", null);
        d = jsonobject.optString("content-url", null);
        s = jsonobject.optString("expiration", null);
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        simpledateformat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss ZZZZ");
        b = simpledateformat.parse(s);
        return;
        ParseException parseexception;
        parseexception;
        MMLog.a("CachedAd", "Exception deserializing cached ad: ", parseexception);
        return;
    }

    boolean a()
    {
        return b != null && b.getTime() <= System.currentTimeMillis();
    }

    abstract boolean a(Context context);

    abstract boolean a(Context context, MMAdImpl mmadimpl, boolean flag);

    void b(String s)
    {
        g = s;
    }

    boolean b()
    {
        return g != null && g.length() > 0 && d != null && d.length() > 0;
    }

    abstract boolean b(Context context);

    abstract int c();

    void c(Context context)
    {
        int i;
        File file;
        i = 0;
        file = AdCache.h(context);
        if (file == null || !file.isDirectory())
        {
            break MISSING_BLOCK_LABEL_100;
        }
        File afile[];
        afile = file.listFiles(new FileFilter() {

            final CachedAd a;

            public boolean accept(File file1)
            {
                return file1.isFile() && file1.getName().startsWith(CachedAd.a(a));
            }

            
            {
                a = CachedAd.this;
                super();
            }
        });
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(afile.length);
        aobj[1] = g;
        MMLog.a("CachedAd", String.format("Deleting %d files for %s.", aobj));
_L1:
        if (i >= afile.length)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        afile[i].delete();
        i++;
          goto _L1
        Exception exception;
        exception;
        MMLog.a("CachedAd", "Exception deleting cached ad: ", exception);
    }

    abstract String d();

    abstract boolean d(Context context);

    String e()
    {
        return g;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof CachedAd))
        {
            return false;
        } else
        {
            CachedAd cachedad = (CachedAd)obj;
            return g.equals(cachedad.g);
        }
    }

    public void readExternal(ObjectInput objectinput)
    {
        g = (String)objectinput.readObject();
        a = (String)objectinput.readObject();
        b = (Date)objectinput.readObject();
        c = objectinput.readLong();
        d = (String)objectinput.readObject();
    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        objectoutput.writeObject(g);
        objectoutput.writeObject(a);
        objectoutput.writeObject(b);
        objectoutput.writeLong(c);
        objectoutput.writeObject(d);
    }

    protected void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeString(g);
        parcel.writeString(a);
        parcel.writeSerializable(b);
        parcel.writeLong(c);
        boolean aflag[] = new boolean[1];
        aflag[0] = f;
        parcel.writeBooleanArray(aflag);
        parcel.writeString(d);
        parcel.writeInt(e);
    }
}
