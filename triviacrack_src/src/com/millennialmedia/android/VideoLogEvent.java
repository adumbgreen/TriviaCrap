// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;
import org.json.JSONArray;
import org.json.JSONObject;

// Referenced classes of package com.millennialmedia.android:
//            MMLog

class VideoLogEvent
    implements Parcelable, Externalizable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public VideoLogEvent createFromParcel(Parcel parcel)
        {
            return new VideoLogEvent(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public VideoLogEvent[] newArray(int i)
        {
            return new VideoLogEvent[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    private static final String c = com/millennialmedia/android/VideoLogEvent.getName();
    long a;
    String b[];

    public VideoLogEvent()
    {
    }

    VideoLogEvent(Parcel parcel)
    {
        try
        {
            a = parcel.readLong();
            b = new String[parcel.readInt()];
            parcel.readStringArray(b);
            return;
        }
        catch (Exception exception)
        {
            MMLog.a(c, "VideoLogEvent parcel creation exception: ", exception);
        }
    }

    VideoLogEvent(JSONObject jsonobject)
    {
        a(jsonobject);
    }

    private void a(JSONObject jsonobject)
    {
        int i = 0;
        if (jsonobject != null)
        {
            a = 1000 * jsonobject.optInt("time");
            JSONArray jsonarray = jsonobject.optJSONArray("urls");
            if (jsonarray != null)
            {
                b = new String[jsonarray.length()];
                while (i < jsonarray.length()) 
                {
                    b[i] = jsonarray.optString(i);
                    i++;
                }
            } else
            {
                b = new String[0];
                return;
            }
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public void readExternal(ObjectInput objectinput)
    {
        a = objectinput.readLong();
        int i = objectinput.readInt();
        b = new String[i];
        for (int j = 0; j < i; j++)
        {
            b[j] = (String)objectinput.readObject();
        }

    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        objectoutput.writeLong(a);
        objectoutput.writeInt(b.length);
        String as[] = b;
        int i = as.length;
        for (int j = 0; j < i; j++)
        {
            objectoutput.writeObject(as[j]);
        }

    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeLong(a);
        parcel.writeInt(b.length);
        parcel.writeStringArray(b);
    }

}
