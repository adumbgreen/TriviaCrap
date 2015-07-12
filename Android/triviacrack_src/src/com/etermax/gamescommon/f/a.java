// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.f;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.etermax.gamescommon.f.b.b;
import com.j256.ormlite.android.apptools.OrmLiteSqliteOpenHelper;
import com.j256.ormlite.dao.DaoManager;
import com.j256.ormlite.support.ConnectionSource;
import com.j256.ormlite.table.TableUtils;
import java.sql.SQLException;

public class a extends OrmLiteSqliteOpenHelper
{

    public a(Context context)
    {
        super(context, "common.db", null, 3);
    }

    public void close()
    {
        super.close();
    }

    public void onCreate(SQLiteDatabase sqlitedatabase, ConnectionSource connectionsource)
    {
        try
        {
            TableUtils.createTable(connectionsource, com/etermax/gamescommon/f/b/a);
            DaoManager.createDao(connectionsource, com/etermax/gamescommon/f/b/a);
            TableUtils.createTable(connectionsource, com/etermax/gamescommon/f/b/b);
            DaoManager.createDao(connectionsource, com/etermax/gamescommon/f/b/b);
            return;
        }
        catch (SQLException sqlexception)
        {
            sqlexception.printStackTrace();
        }
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, ConnectionSource connectionsource, int i, int j)
    {
        try
        {
            TableUtils.dropTable(connectionsource, com/etermax/gamescommon/f/b/a, true);
            TableUtils.dropTable(connectionsource, com/etermax/gamescommon/f/b/b, true);
            onCreate(sqlitedatabase, connectionsource);
            return;
        }
        catch (SQLException sqlexception)
        {
            sqlexception.printStackTrace();
        }
    }
}
