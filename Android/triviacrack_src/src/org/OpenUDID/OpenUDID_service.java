// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.OpenUDID;

import android.app.Service;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;

public class OpenUDID_service extends Service
{

    public OpenUDID_service()
    {
    }

    public IBinder onBind(Intent intent)
    {
        return new Binder() {

            final OpenUDID_service a;

            public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            {
                SharedPreferences sharedpreferences = a.getSharedPreferences("openudid_prefs", 0);
                parcel1.writeInt(parcel.readInt());
                parcel1.writeString(sharedpreferences.getString("openudid", null));
                return true;
            }

            
            {
                a = OpenUDID_service.this;
                super();
            }
        };
    }
}
