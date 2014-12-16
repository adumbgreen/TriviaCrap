// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import java.io.Externalizable;
import java.io.ObjectInput;
import java.io.ObjectOutput;

// Referenced classes of package com.millennialmedia.android:
//            CachedAd, HttpMMHeaders, MMLog, OverlaySettings, 
//            HandShake, MMAdImpl

class InterstitialAd extends CachedAd
    implements Parcelable, Externalizable
{

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public InterstitialAd createFromParcel(Parcel parcel)
        {
            return new InterstitialAd(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public InterstitialAd[] newArray(int k)
        {
            return new InterstitialAd[k];
        }

        public volatile Object[] newArray(int k)
        {
            return newArray(k);
        }

    };
    private static final String j = com/millennialmedia/android/InterstitialAd.getName();
    String g;
    String h;
    HttpMMHeaders i;

    public InterstitialAd()
    {
    }

    InterstitialAd(Parcel parcel)
    {
        super(parcel);
        try
        {
            g = parcel.readString();
            h = parcel.readString();
            i = (HttpMMHeaders)parcel.readParcelable(com/millennialmedia/android/HttpMMHeaders.getClassLoader());
            return;
        }
        catch (Exception exception)
        {
            MMLog.a(j, "Interstitial problem reading parcel: ", exception);
        }
    }

    private Intent b(Context context, long l)
    {
        Intent intent = new Intent();
        OverlaySettings overlaysettings = new OverlaySettings();
        overlaysettings.n = l;
        overlaysettings.i = g;
        overlaysettings.j = h;
        overlaysettings.a(i);
        overlaysettings.m = true;
        intent.putExtra("settings", overlaysettings);
        intent.putExtra("internalId", l);
        return intent;
    }

    void a(Context context, long l)
    {
        Utils.IntentUtils.a(context, b(context, l));
    }

    boolean a(Context context)
    {
        return true;
    }

    boolean a(Context context, MMAdImpl mmadimpl, boolean flag)
    {
        if (!flag) goto _L2; else goto _L1
_L1:
        if (g == null || g.length() <= 0 || h == null || h.length() <= 0 || !HandShake.a(context).a(mmadimpl.f, c)) goto _L4; else goto _L3
_L3:
        return true;
_L4:
        return false;
_L2:
        if (g == null || g.length() <= 0 || h == null || h.length() <= 0)
        {
            return false;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    boolean b(Context context)
    {
        return true;
    }

    int c()
    {
        return 2;
    }

    String d()
    {
        return "Interstitial";
    }

    boolean d(Context context)
    {
        return true;
    }

    public int describeContents()
    {
        return 0;
    }

    public void readExternal(ObjectInput objectinput)
    {
        super.readExternal(objectinput);
        g = (String)objectinput.readObject();
        h = (String)objectinput.readObject();
        i = (HttpMMHeaders)objectinput.readObject();
    }

    public void writeExternal(ObjectOutput objectoutput)
    {
        super.writeExternal(objectoutput);
        objectoutput.writeObject(g);
        objectoutput.writeObject(h);
        objectoutput.writeObject(i);
    }

    public void writeToParcel(Parcel parcel, int k)
    {
        super.writeToParcel(parcel, k);
        parcel.writeString(g);
        parcel.writeString(h);
        parcel.writeParcelable(i, k);
    }

}
