// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.OpenUDID;

import android.content.SharedPreferences;
import android.os.Binder;
import android.os.Parcel;

// Referenced classes of package org.OpenUDID:
//            OpenUDID_service

class a extends Binder
{

    final OpenUDID_service a;

    public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
    {
        SharedPreferences sharedpreferences = a.getSharedPreferences("openudid_prefs", 0);
        parcel1.writeInt(parcel.readInt());
        parcel1.writeString(sharedpreferences.getString("openudid", null));
        return true;
    }

    s(OpenUDID_service openudid_service)
    {
        a = openudid_service;
        super();
    }
}
