// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.inmobi.re.controller;

import android.os.Parcel;

// Referenced classes of package com.inmobi.re.controller:
//            e

public class rcelable extends rcelable
{

    public static final android.os.er.ReflectedParcelable CREATOR = new e();
    public int backgroundColor;
    public float backgroundOpacity;
    public boolean useBackground;


    public rcelable()
    {
        useBackground = false;
        backgroundColor = 0;
        backgroundOpacity = 0.0F;
    }

    protected backgroundOpacity(Parcel parcel)
    {
        super(parcel);
    }

    // Unreferenced inner class com/inmobi/re/controller/e
    final class e
        implements android.os.Parcelable.Creator
    {

        public JSController.Properties a(Parcel parcel)
        {
            return new JSController.Properties(parcel);
        }

        public JSController.Properties[] a(int i)
        {
            return new JSController.Properties[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int i)
        {
            return a(i);
        }

            e()
            {
            }
    }

}
