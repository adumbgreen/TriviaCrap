// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.os.Parcel;
import android.os.Parcelable;

class <init> extends android.view.iew.SavedState
{

    public static final android.os.yView.SavedState.a CREATOR = new android.os.Parcelable.Creator() {

        public AdViewOverlayView.SavedState createFromParcel(Parcel parcel)
        {
            return new AdViewOverlayView.SavedState(parcel, null);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public AdViewOverlayView.SavedState[] newArray(int i)
        {
            return new AdViewOverlayView.SavedState[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    };
    String a;
    public Object customInlineLayoutParams;

    public void writeToParcel(Parcel parcel, int i)
    {
        super.rcel(parcel, i);
        parcel.writeString(a);
    }


    private _cls1(Parcel parcel)
    {
        super(parcel);
        a = parcel.readString();
    }

    a(Parcel parcel, a a1)
    {
        this(parcel);
    }

    <init>(Parcelable parcelable)
    {
        super(parcelable);
    }
}
