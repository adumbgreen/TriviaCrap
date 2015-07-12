// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.f.a;

import android.content.Context;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import java.sql.SQLException;

public abstract class a
{

    protected OrmLiteSqliteOpenHelper a;
    private Context b;

    public a(Context context)
    {
        b = context;
    }

    protected abstract OrmLiteSqliteOpenHelper a(Context context);

    public void a()
    {
        if (a != null && a.isOpen())
        {
            break MISSING_BLOCK_LABEL_29;
        }
        a = a(b);
        return;
        Exception exception;
        exception;
        exception.printStackTrace();
        return;
    }

    public void a(Class class1, Object obj)
    {
        a();
        a.getDao(class1).update(obj);
        b();
        return;
        SQLException sqlexception;
        sqlexception;
        com.etermax.a.a.a("AbstractDao", "ERROR IN ABSTRACTDAO", sqlexception);
        b();
        return;
        Exception exception;
        exception;
        b();
        throw exception;
    }

    public boolean a(Class class1)
    {
        int j;
        a();
        j = a.getDao(class1).deleteBuilder().delete();
        int i;
        i = j;
        b();
_L1:
        Exception exception;
        SQLException sqlexception;
        return i == 1;
        sqlexception;
        sqlexception.printStackTrace();
        b();
        i = 0;
          goto _L1
        exception;
        b();
        throw exception;
    }

    public boolean a(Class class1, Long long1)
    {
        int j;
        a();
        j = a.getDao(class1).deleteById(long1);
        int i;
        i = j;
        b();
_L1:
        Exception exception;
        SQLException sqlexception;
        return i == 1;
        sqlexception;
        com.etermax.a.a.a("AbstractDao", "ERROR IN ABSTRACTDAO", sqlexception);
        b();
        i = 0;
          goto _L1
        exception;
        b();
        throw exception;
    }

    public com.j256.ormlite.dao.Dao.CreateOrUpdateStatus b(Class class1, Object obj)
    {
        com.j256.ormlite.dao.Dao.CreateOrUpdateStatus createorupdatestatus;
        a();
        createorupdatestatus = a.getDao(class1).createOrUpdate(obj);
        b();
        return createorupdatestatus;
        SQLException sqlexception;
        sqlexception;
        com.etermax.a.a.a("AbstractDao", "ERROR IN ABSTRACTDAO", sqlexception);
        b();
        return null;
        Exception exception;
        exception;
        b();
        throw exception;
    }

    public Object b(Class class1, Long long1)
    {
        Object obj;
        a();
        obj = a.getDao(class1).queryForId(long1);
        b();
        return obj;
        SQLException sqlexception;
        sqlexception;
        com.etermax.a.a.a("AbstractDao", "ERROR IN ABSTRACTDAO", sqlexception);
        b();
        return null;
        Exception exception;
        exception;
        b();
        throw exception;
    }

    public void b()
    {
        if (a != null)
        {
            a.close();
        }
    }
}
