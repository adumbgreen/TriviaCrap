// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.widget.ImageButton;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMLog

class VideoImage
    implements Parcelable, Externalizable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public VideoImage createFromParcel(Parcel parcel)
        {
            return new VideoImage(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public VideoImage[] newArray(int i1)
        {
            return new VideoImage[i1];
        }

        public volatile Object[] newArray(int i1)
        {
            return newArray(i1);
        }

    };
    private static final String v = com/millennialmedia/android/VideoImage.getName();
    String a;
    long b;
    String c[];
    String d;
    String e;
    int f;
    int g;
    int h;
    int i;
    int j;
    int k;
    int l;
    int m;
    long n;
    long o;
    float p;
    float q;
    long r;
    boolean s;
    ImageButton t;
    android.widget.RelativeLayout.LayoutParams u;

    public VideoImage()
    {
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        p = 1.0F;
        q = 1.0F;
        r = 1000L;
    }

    VideoImage(Parcel parcel)
    {
        boolean flag;
        flag = true;
        super();
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        p = 1.0F;
        q = 1.0F;
        r = 1000L;
        a = parcel.readString();
        b = parcel.readLong();
        c = new String[parcel.readInt()];
        parcel.readStringArray(c);
        d = parcel.readString();
        e = parcel.readString();
        f = parcel.readInt();
        g = parcel.readInt();
        h = parcel.readInt();
        i = parcel.readInt();
        j = parcel.readInt();
        k = parcel.readInt();
        l = parcel.readInt();
        m = parcel.readInt();
        n = parcel.readLong();
        o = parcel.readLong();
        p = parcel.readFloat();
        q = parcel.readFloat();
        r = parcel.readLong();
        if (parcel.readInt() != flag)
        {
            flag = false;
        }
        s = flag;
        return;
        Exception exception;
        exception;
        MMLog.a(v, "VideoImage parcel creation exception: ", exception);
        return;
    }

    VideoImage(JSONObject jsonobject)
    {
        f = 0;
        g = 0;
        h = 0;
        i = 0;
        p = 1.0F;
        q = 1.0F;
        r = 1000L;
        a(jsonobject);
    }

    private void a(JSONObject jsonobject)
    {
        int i1 = 0;
        if (jsonobject == null)
        {
            return;
        }
        a = jsonobject.optString("image", null);
        b = jsonobject.optLong("contentLength");
        JSONArray jsonarray = jsonobject.optJSONArray("activity");
        if (jsonarray != null)
        {
            c = new String[jsonarray.length()];
            for (; i1 < jsonarray.length(); i1++)
            {
                c[i1] = jsonarray.optString(i1);
            }

        } else
        {
            c = new String[0];
        }
        d = jsonobject.optString("url", null);
        e = jsonobject.optString("overlayOrientation", null);
        j = jsonobject.optInt("android-layout");
        k = jsonobject.optInt("android-layoutAnchor");
        l = jsonobject.optInt("android-layout2");
        m = jsonobject.optInt("android-layoutAnchor2");
        f = jsonobject.optInt("android-paddingTop");
        h = jsonobject.optInt("android-paddingLeft");
        i = jsonobject.optInt("android-paddingRight");
        g = jsonobject.optInt("android-paddingBottom");
        n = (long)(1000D * jsonobject.optDouble("appearanceDelay", 0.0D));
        o = (long)(1000D * jsonobject.optDouble("inactivityTimeout", 0.0D));
        JSONObject jsonobject1 = jsonobject.optJSONObject("opacity");
        if (jsonobject1 != null)
        {
            p = (float)jsonobject1.optDouble("start", 1.0D);
            q = (float)jsonobject1.optDouble("end", 1.0D);
            r = (long)(1000D * jsonobject1.optDouble("fadeDuration", 1.0D));
        }
        s = jsonobject.optBoolean("is_leavebehind");
    }

    String a()
    {
        if (a != null)
        {
            Uri uri = Uri.parse(a);
            if (uri != null && uri.getLastPathSegment() != null)
            {
                return uri.getLastPathSegment().replaceFirst("\\.[^\\.]*$", ".dat");
            }
        }
        return null;
    }

    public int describeContents()
    {
        return 0;
    }

    public void readExternal(ObjectInput objectinput)
    {
        a = (String)objectinput.readObject();
        b = objectinput.readLong();
        int i1 = objectinput.readInt();
        c = new String[i1];
        for (int j1 = 0; j1 < i1; j1++)
        {
            c[j1] = (String)objectinput.readObject();
        }

        d = (String)objectinput.readObject();
        e = (String)objectinput.readObject();
        f = objectinput.readInt();
        g = objectinput.readInt();
        h = objectinput.readInt();
        i = objectinput.readInt();
        j = objectinput.readInt();
        k = objectinput.readInt();
        l = objectinput.readInt();
        m = objectinput.readInt();
        n = objectinput.readLong();
        o = objectinput.readLong();
        p = objectinput.readFloat();
        q = objectinput.readFloat();
        r = objectinput.readLong();
        s = objectinput.readBoolean();
    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        objectoutput.writeObject(a);
        objectoutput.writeLong(b);
        objectoutput.writeInt(c.length);
        String as[] = c;
        int i1 = as.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            objectoutput.writeObject(as[j1]);
        }

        objectoutput.writeObject(d);
        objectoutput.writeObject(e);
        objectoutput.writeInt(f);
        objectoutput.writeInt(g);
        objectoutput.writeInt(h);
        objectoutput.writeInt(i);
        objectoutput.writeInt(j);
        objectoutput.writeInt(k);
        objectoutput.writeInt(l);
        objectoutput.writeInt(m);
        objectoutput.writeLong(n);
        objectoutput.writeLong(o);
        objectoutput.writeFloat(p);
        objectoutput.writeFloat(q);
        objectoutput.writeLong(r);
        objectoutput.writeBoolean(s);
    }

    public void writeToParcel(Parcel parcel, int i1)
    {
        parcel.writeString(a);
        parcel.writeLong(b);
        parcel.writeInt(c.length);
        parcel.writeStringArray(c);
        parcel.writeString(d);
        parcel.writeString(e);
        parcel.writeInt(f);
        parcel.writeInt(g);
        parcel.writeInt(h);
        parcel.writeInt(i);
        parcel.writeInt(j);
        parcel.writeInt(k);
        parcel.writeInt(l);
        parcel.writeInt(m);
        parcel.writeLong(n);
        parcel.writeLong(o);
        parcel.writeFloat(p);
        parcel.writeFloat(q);
        parcel.writeLong(r);
        int j1;
        if (s)
        {
            j1 = 1;
        } else
        {
            j1 = 0;
        }
        parcel.writeInt(j1);
    }

}
