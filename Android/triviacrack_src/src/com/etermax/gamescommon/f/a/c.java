// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.f.a;

import android.content.Context;
import com.etermax.a.a;
import com.etermax.gamescommon.f.b.b;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.Dao;
import com.j256.ormlite.stmt.DeleteBuilder;
import com.j256.ormlite.stmt.QueryBuilder;
import com.j256.ormlite.stmt.Where;
import java.sql.SQLException;
import java.util.List;

// Referenced classes of package com.etermax.gamescommon.f.a:
//            a

public class c extends com.etermax.gamescommon.f.a.a
{

    public c(Context context)
    {
        super(context);
    }

    protected OrmLiteSqliteOpenHelper a(Context context)
    {
        return b(context);
    }

    public List a(b b1)
    {
        this;
        JVM INSTR monitorenter ;
        QueryBuilder querybuilder;
        Where where;
        Integer integer;
        super.a();
        querybuilder = a.getDao(com/etermax/gamescommon/f/b/b).queryBuilder();
        where = querybuilder.where();
        integer = b1.a();
        int i;
        i = 0;
        if (integer == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        where.eq("notificationId", b1.a());
        i = 1;
        if (b1.b() == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        where.eq("gameId", b1.b());
        i++;
        if (b1.c() == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        where.eq("userId", b1.c());
        i++;
        if (b1.d() == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        where.eq("username", b1.d());
        i++;
        if (b1.f() == null)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        where.eq("messageId", b1.f());
        i++;
        if (b1.g() == null)
        {
            break MISSING_BLOCK_LABEL_168;
        }
        where.eq("message", b1.g());
        i++;
        if (b1.h() == null)
        {
            break MISSING_BLOCK_LABEL_190;
        }
        where.eq("stackedMessage", b1.h());
        i++;
        if (b1.i() == null)
        {
            break MISSING_BLOCK_LABEL_212;
        }
        where.eq("time", b1.i());
        i++;
        List list;
        list = null;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_272;
        }
        if (i <= 1)
        {
            break MISSING_BLOCK_LABEL_234;
        }
        where.and(i);
        List list1;
        querybuilder.orderBy("time", false);
        com.j256.ormlite.stmt.PreparedQuery preparedquery = querybuilder.prepare();
        list1 = a.getDao(com/etermax/gamescommon/f/b/b).query(preparedquery);
        list = list1;
        b();
_L2:
        this;
        JVM INSTR monitorexit ;
        return list;
        SQLException sqlexception;
        sqlexception;
        com.etermax.a.a.a("NotificationsCacheDao", "ERROR EN findByCriteria", sqlexception);
        b();
        list = null;
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception2;
        exception2;
        com.etermax.a.a.a("NotificationsCacheDao", "ERROR EN findByCriteria", exception2);
        b();
        list = null;
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        b();
        throw exception;
    }

    public List a(Integer integer, Long long1, Long long2, Integer integer1)
    {
        this;
        JVM INSTR monitorenter ;
        QueryBuilder querybuilder;
        Where where;
        super.a();
        querybuilder = a.getDao(com/etermax/gamescommon/f/b/b).queryBuilder();
        where = querybuilder.where();
        if (integer != null) goto _L2; else goto _L1
_L1:
        where.isNull("notificationId");
_L7:
        if (long1 != null) goto _L4; else goto _L3
_L3:
        where.isNull("gameId");
_L9:
        if (long2 != null) goto _L6; else goto _L5
_L5:
        where.isNull("userId");
_L10:
        if (integer1 != null)
        {
            break MISSING_BLOCK_LABEL_226;
        }
        where.isNull("messageId");
_L11:
        List list1;
        where.and(4);
        querybuilder.orderBy("time", false);
        com.j256.ormlite.stmt.PreparedQuery preparedquery = querybuilder.prepare();
        list1 = a.getDao(com/etermax/gamescommon/f/b/b).query(preparedquery);
        List list = list1;
        b();
_L8:
        this;
        JVM INSTR monitorexit ;
        return list;
_L2:
        where.eq("notificationId", integer);
          goto _L7
        SQLException sqlexception;
        sqlexception;
        com.etermax.a.a.a("NotificationsCacheDao", "ERROR EN findByCriteria", sqlexception);
        b();
        list = null;
          goto _L8
        Exception exception1;
        exception1;
        throw exception1;
_L4:
        where.eq("gameId", long1);
          goto _L9
        Exception exception2;
        exception2;
        com.etermax.a.a.a("NotificationsCacheDao", "ERROR EN findByCriteria", exception2);
        b();
        list = null;
          goto _L8
_L6:
        where.eq("userId", long2);
          goto _L10
        Exception exception;
        exception;
        b();
        throw exception;
        where.eq("messageId", integer1);
          goto _L11
    }

    protected com.etermax.gamescommon.f.a b(Context context)
    {
        return new com.etermax.gamescommon.f.a(context);
    }

    public void b(b b1)
    {
        this;
        JVM INSTR monitorenter ;
        DeleteBuilder deletebuilder;
        Where where;
        Integer integer;
        super.a();
        deletebuilder = a.getDao(com/etermax/gamescommon/f/b/b).deleteBuilder();
        where = deletebuilder.where();
        integer = b1.a();
        int i;
        i = 0;
        if (integer == null)
        {
            break MISSING_BLOCK_LABEL_58;
        }
        where.eq("notificationId", b1.a());
        i = 1;
        if (b1.c() == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        where.eq("userId", b1.c());
        i++;
        if (b1.d() == null)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        where.eq("username", b1.d());
        i++;
        if (b1.g() == null)
        {
            break MISSING_BLOCK_LABEL_124;
        }
        where.eq("message", b1.g());
        i++;
        if (b1.i() == null)
        {
            break MISSING_BLOCK_LABEL_146;
        }
        where.eq("time", b1.i());
        i++;
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_189;
        }
        if (i <= 1)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        where.and(i);
        com.j256.ormlite.stmt.PreparedDelete prepareddelete = deletebuilder.prepare();
        a.getDao(com/etermax/gamescommon/f/b/b).delete(prepareddelete);
        b();
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        SQLException sqlexception;
        sqlexception;
        com.etermax.a.a.a("NotificationsCacheDao", (new StringBuilder()).append("ERROR en delete by criteria: ").append(b1).toString(), sqlexception);
        b();
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception1;
        exception1;
        throw exception1;
        Exception exception;
        exception;
        b();
        throw exception;
    }
}
