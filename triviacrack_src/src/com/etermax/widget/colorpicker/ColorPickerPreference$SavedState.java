// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.widget.colorpicker;

import android.os.Parcel;
import android.os.Parcelable;

class a extends android.preference..SavedState
{

    public static final android.os.eference.SavedState.a CREATOR = new android.os.Parcelable.Creator() {

        public ColorPickerPreference.SavedState a(Parcel parcel)
        {
            return new ColorPickerPreference.SavedState(parcel);
        }

        public ColorPickerPreference.SavedState[] a(int i)
        {
            return new ColorPickerPreference.SavedState[i];
        }

        public Object createFromParcel(Parcel parcel)
        {
            return a(parcel);
        }

        public Object[] newArray(int i)
        {
            return a(i);
        }

    };
    int a;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.Parcel(parcel, i);
        parcel.writeInt(a);
    }


    public _cls1(Parcel parcel)
    {
        super(parcel);
        a = parcel.readInt();
    }

    public a(Parcelable parcelable)
    {
        super(parcelable);
    }
}
