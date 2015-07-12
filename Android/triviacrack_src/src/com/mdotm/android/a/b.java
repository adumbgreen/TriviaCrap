// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.mdotm.android.e.d;

class b extends SQLiteOpenHelper
{

    public b(Context context, String s, int i)
    {
        super(context, s, null, i);
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        this;
        JVM INSTR monitorenter ;
        d.c(this, "oncreate of DbAdapter is called");
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        this;
        JVM INSTR monitorenter ;
    }
}
