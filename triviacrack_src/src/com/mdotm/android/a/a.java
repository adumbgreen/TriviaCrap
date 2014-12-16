// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import com.mdotm.android.b.c;
import com.mdotm.android.e.d;
import java.io.File;

// Referenced classes of package com.mdotm.android.a:
//            b

public class a extends b
{

    private static a j;
    final String a = "FileName";
    final String b = "lastUsed";
    final String c = "HtmlName";
    final String d = "ResourceName";
    final String e = "CacheLocation";
    final String f = "Location";
    private final String g = "CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );";
    private final String h = "CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );";
    private final String i = "CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);";

    public a(Context context, String s, int k)
    {
        super(context, s, k);
        a();
    }

    public static a a(Context context)
    {
        com/mdotm/android/a/a;
        JVM INSTR monitorenter ;
        a a1;
        if (j == null)
        {
            j = new a(context, "AdDatabase.db", 1);
        }
        a1 = j;
        com/mdotm/android/a/a;
        JVM INSTR monitorexit ;
        return a1;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean c(String s, String s1)
    {
        Cursor cursor = null;
        if (s1 == null) goto _L2; else goto _L1
_L1:
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        Exception exception;
        SQLiteDatabase sqlitedatabase;
        Exception exception1;
        Cursor cursor1;
        Cursor cursor2;
        Exception exception5;
        int k;
        try
        {
            cursor2 = sqlitedatabase1.query("AdHtmlResources", new String[] {
                "HtmlName"
            }, (new StringBuilder("HtmlName!= '")).append(s1).append("' AND ").append("ResourceName").append(" = '").append(s).append("'").toString(), null, null, null, null);
        }
        catch (Exception exception2)
        {
            cursor = sqlitedatabase1;
            cursor1 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            sqlitedatabase = sqlitedatabase1;
            exception = exception3;
            cursor = null;
        }
        if (cursor2 == null) goto _L4; else goto _L3
_L3:
        k = cursor2.getCount();
        if (k > 0)
        {
            if (cursor2 != null && !cursor2.isClosed())
            {
                cursor2.close();
            }
            if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
            {
                sqlitedatabase1.close();
            }
            return true;
        }
          goto _L4
        exception1;
        cursor1 = null;
_L7:
        if (cursor1 != null && !cursor1.isClosed())
        {
            cursor1.close();
        }
        if (cursor != null && cursor.isOpen())
        {
            cursor.close();
        }
_L2:
        return false;
        exception;
        sqlitedatabase = null;
_L5:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        throw exception;
_L4:
        if (cursor2 != null && !cursor2.isClosed())
        {
            cursor2.close();
        }
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
        }
          goto _L2
        exception5;
        cursor = cursor2;
        sqlitedatabase = sqlitedatabase1;
        exception = exception5;
          goto _L5
        Exception exception4;
        exception4;
        cursor = sqlitedatabase1;
        cursor1 = cursor2;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void a()
    {
        this;
        JVM INSTR monitorenter ;
        SQLiteDatabase sqlitedatabase = null;
        com.mdotm.android.e.d.b(this, "creating table");
        SQLiteDatabase sqlitedatabase2;
        com.mdotm.android.e.d.b(this, "Create table is called");
        sqlitedatabase2 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS AdCache (  FileName TEXT NOT NULL,lastUsed INTEGER );");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS AdHtmlResources (  HtmlName TEXT NOT NULL,ResourceName TEXT );");
        sqlitedatabase.execSQL("CREATE TABLE IF NOT EXISTS CacheLocation ( Location INTEGER NOT NULL);");
        com.mdotm.android.e.d.b(this, (new StringBuilder("database path is ")).append(sqlitedatabase.getPath()).toString());
        sqlitedatabase.close();
        com.mdotm.android.e.d.b(this, "DB CLOSED");
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception3;
        exception3;
        sqlitedatabase.close();
        com.mdotm.android.e.d.b(this, "DB CLOSED");
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
        Exception exception1;
        exception1;
        SQLiteDatabase sqlitedatabase1;
        Exception exception2;
        sqlitedatabase1 = null;
        exception2 = exception1;
_L4:
        sqlitedatabase1.close();
        com.mdotm.android.e.d.b(this, "DB CLOSED");
        throw exception2;
        Exception exception4;
        exception4;
        sqlitedatabase1 = sqlitedatabase;
        exception2 = exception4;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(String s, Context context, int k, String s1)
    {
        String s2;
        String as[];
        int l;
        int i1;
        if (k == 2)
        {
            s2 = (new StringBuilder()).append(context.getCacheDir()).append("/").append(c.b).append("/").toString();
        } else
        {
            s2 = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(c.b).append("/").toString();
        }
        if (s == null) goto _L2; else goto _L1
_L1:
        if (!c(s, s1))
        {
            (new File((new StringBuilder(String.valueOf(s2))).append(s).toString())).delete();
        }
        b(s, s1);
        as = a(s);
        if (as == null) goto _L2; else goto _L3
_L3:
        l = as.length;
        i1 = 0;
_L6:
        if (i1 < l) goto _L4; else goto _L2
_L2:
        return;
_L4:
        a(as[i1], context, k, s);
        i1++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    public void a(String s, String s1)
    {
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("FileName", s);
        contentvalues.put("lastUsed", Long.valueOf(System.currentTimeMillis()));
        com.mdotm.android.e.d.b(this, (new StringBuilder("Inserting file name ")).append(s).append(" to ").append(s1).toString());
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        sqlitedatabase.insert(s1, null, contentvalues);
        com.mdotm.android.e.d.b(this, "Name inserted successfuly");
        if (sqlitedatabase != null)
        {
            sqlitedatabase.close();
        }
    }

    public boolean a(int k)
    {
        ContentValues contentvalues;
        contentvalues = new ContentValues();
        contentvalues.put("Location", Integer.valueOf(k));
        com.mdotm.android.e.d.b(this, (new StringBuilder("Inserting location name ")).append(k).append(" to ").append("CacheLocation").toString());
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        SQLiteDatabase sqlitedatabase = sqlitedatabase1;
        sqlitedatabase.delete("CacheLocation", null, null);
        sqlitedatabase.insert("CacheLocation", null, contentvalues);
        com.mdotm.android.e.d.b(this, "location inserted successfuly");
        boolean flag;
        flag = true;
        if (sqlitedatabase != null)
        {
            sqlitedatabase.close();
        }
_L2:
        return flag;
        Exception exception2;
        exception2;
        sqlitedatabase = null;
_L5:
        com.mdotm.android.e.d.b(this, "Exception while inserting");
        flag = false;
        if (sqlitedatabase == null) goto _L2; else goto _L1
_L1:
        sqlitedatabase.close();
        return false;
        Exception exception;
        exception;
        Exception exception1;
        sqlitedatabase = null;
        exception1 = exception;
_L4:
        if (sqlitedatabase != null)
        {
            sqlitedatabase.close();
        }
        throw exception1;
        exception1;
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception3;
        exception3;
          goto _L5
    }

    public boolean a(Context context, int k)
    {
        SQLiteDatabase sqlitedatabase = null;
        Cursor cursor;
        sqlitedatabase = getWritableDatabase();
        cursor = sqlitedatabase.rawQuery("SELECT FileName FROM AdCache ORDER BY lastUsed ASC LIMIT 1", null);
        com.mdotm.android.e.d.a(this, (new StringBuilder("delete from DB:")).append(cursor.moveToFirst()).toString());
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (!cursor.moveToFirst()) goto _L2; else goto _L3
_L3:
        String s;
        s = cursor.getString(cursor.getColumnIndex("FileName"));
        cursor.close();
        if (k != 2) goto _L5; else goto _L4
_L4:
        String s1 = (new StringBuilder()).append(context.getCacheDir()).append("/").append(c.b).append("/").toString();
_L19:
        if (s == null) goto _L7; else goto _L6
_L6:
        if (s.equalsIgnoreCase("null") || s.trim().length() <= 0) goto _L7; else goto _L8
_L8:
        String as[];
        File file1 = new File((new StringBuilder(String.valueOf(s1))).append(s).toString());
        if (file1.exists())
        {
            file1.delete();
        }
        sqlitedatabase.delete("AdCache", (new StringBuilder("FileName='")).append(s).append("'").toString(), null);
        as = a(s);
        if (as == null) goto _L7; else goto _L9
_L9:
        int i1 = as.length;
        int j1 = 0;
_L11:
        if (j1 < i1) goto _L10; else goto _L7
_L7:
        boolean flag;
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        flag = true;
_L16:
        return flag;
_L5:
        boolean flag1;
        File file;
        File afile[];
        int l;
        try
        {
            s1 = (new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(c.b).append("/").toString();
            continue; /* Loop/switch isn't completed */
        }
        catch (Exception exception1)
        {
            flag = false;
        }
        finally
        {
            if (sqlitedatabase != null && sqlitedatabase.isOpen())
            {
                sqlitedatabase.close();
            }
            throw exception;
        }
        continue; /* Loop/switch isn't completed */
_L10:
        a(as[j1], context, k, s);
        j1++;
          goto _L11
_L2:
        file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(c.b).append("/").append(c.c).toString());
        if (!file.exists()) goto _L7; else goto _L12
_L12:
        afile = file.listFiles();
        l = 0;
_L14:
        if (l >= afile.length) goto _L7; else goto _L13
_L13:
        afile[l].delete();
        l++;
          goto _L14
          goto _L7
        if (sqlitedatabase == null) goto _L16; else goto _L15
_L15:
        flag1 = sqlitedatabase.isOpen();
        flag = false;
        if (!flag1) goto _L16; else goto _L17
_L17:
        sqlitedatabase.close();
        return false;
        if (true) goto _L19; else goto _L18
_L18:
    }

    public String[] a(String s)
    {
        Object obj = null;
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        Cursor cursor1 = sqlitedatabase1.query("AdHtmlResources", new String[] {
            "ResourceName"
        }, (new StringBuilder("HtmlName= '")).append(s).append("'").toString(), null, null, null, null);
        String as2[];
        if (!cursor1.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_333;
        }
        as2 = new String[cursor1.getCount()];
        int k = 0;
_L8:
        int l = k + 1;
        boolean flag;
        as2[k] = cursor1.getString(0);
        flag = cursor1.moveToNext();
        if (flag) goto _L2; else goto _L1
_L1:
        String as1[] = as2;
_L9:
        String as[];
        if (cursor1 != null && !cursor1.isClosed())
        {
            cursor1.close();
        }
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
        }
        as = as1;
_L4:
        return as;
        Exception exception1;
        exception1;
        Cursor cursor;
        cursor = null;
        as = null;
_L7:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (obj == null || !((SQLiteDatabase) (obj)).isOpen()) goto _L4; else goto _L3
_L3:
        ((SQLiteDatabase) (obj)).close();
        return as;
        Exception exception;
        exception;
        SQLiteDatabase sqlitedatabase = null;
_L6:
        if (obj != null && !((Cursor) (obj)).isClosed())
        {
            ((Cursor) (obj)).close();
        }
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        throw exception;
        Exception exception3;
        exception3;
        sqlitedatabase = sqlitedatabase1;
        exception = exception3;
        obj = null;
        continue; /* Loop/switch isn't completed */
        Exception exception5;
        exception5;
        obj = cursor1;
        sqlitedatabase = sqlitedatabase1;
        exception = exception5;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception2;
        exception2;
        obj = sqlitedatabase1;
        as = null;
        cursor = null;
          goto _L7
        Exception exception4;
        exception4;
        cursor = cursor1;
        obj = sqlitedatabase1;
        as = null;
          goto _L7
        Exception exception6;
        exception6;
        cursor = cursor1;
        obj = sqlitedatabase1;
        as = as2;
          goto _L7
_L2:
        k = l;
          goto _L8
        as1 = null;
          goto _L9
    }

    public int b()
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        Cursor cursor;
        Cursor cursor1;
        Exception exception;
        Exception exception1;
        Cursor cursor2;
        Exception exception5;
        int k;
        try
        {
            cursor2 = sqlitedatabase1.query("CacheLocation", new String[] {
                "Location"
            }, null, null, null, null, null);
        }
        catch (Exception exception2)
        {
            sqlitedatabase = sqlitedatabase1;
            cursor1 = null;
            continue; /* Loop/switch isn't completed */
        }
        finally
        {
            sqlitedatabase = sqlitedatabase1;
            exception = exception3;
            cursor = null;
        }
        cursor = cursor2;
        if (cursor == null) goto _L2; else goto _L1
_L1:
        if (cursor.getCount() <= 0) goto _L2; else goto _L3
_L3:
        com.mdotm.android.e.d.b(this, (new StringBuilder("location column index  ")).append(cursor.getColumnIndex("Location")).append(" row count ").append(cursor.getCount()).toString());
        cursor.moveToFirst();
        k = cursor.getInt(cursor.getColumnIndex("Location"));
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
        }
        return k;
        exception1;
        cursor1 = null;
_L7:
        if (cursor1 != null && !cursor1.isClosed())
        {
            cursor1.close();
        }
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
_L4:
        return 0;
        exception;
        cursor = null;
_L5:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        throw exception;
_L2:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
        }
          goto _L4
        exception5;
        sqlitedatabase = sqlitedatabase1;
        exception = exception5;
          goto _L5
        Exception exception4;
        exception4;
        sqlitedatabase = sqlitedatabase1;
        cursor1 = cursor;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void b(Context context)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase2 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase.delete("AdCache", null, null);
        sqlitedatabase.delete("AdHtmlResources", null, null);
        sqlitedatabase.delete("CacheLocation", null, null);
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
_L2:
        return;
        Exception exception2;
        exception2;
        if (sqlitedatabase == null || !sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        sqlitedatabase.close();
        return;
        Exception exception;
        exception;
        SQLiteDatabase sqlitedatabase1;
        Exception exception1;
        sqlitedatabase1 = null;
        exception1 = exception;
_L4:
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
        }
        throw exception1;
        Exception exception3;
        exception3;
        sqlitedatabase1 = sqlitedatabase;
        exception1 = exception3;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void b(String s)
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase2 = getWritableDatabase();
        sqlitedatabase = sqlitedatabase2;
        sqlitedatabase.execSQL((new StringBuilder("DELETE FROM AdCache WHERE FileName = '")).append(s).append("'").toString());
        sqlitedatabase.execSQL((new StringBuilder("DELETE FROM AdHtmlResources WHERE HtmlName = '")).append(s).append("'").toString());
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
_L2:
        return;
        Exception exception2;
        exception2;
        if (sqlitedatabase == null || !sqlitedatabase.isOpen()) goto _L2; else goto _L1
_L1:
        sqlitedatabase.close();
        return;
        Exception exception;
        exception;
        SQLiteDatabase sqlitedatabase1;
        Exception exception1;
        sqlitedatabase1 = null;
        exception1 = exception;
_L4:
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
        }
        throw exception1;
        Exception exception3;
        exception3;
        sqlitedatabase1 = sqlitedatabase;
        exception1 = exception3;
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void b(String s, String s1)
    {
        SQLiteDatabase sqlitedatabase = null;
        sqlitedatabase = getWritableDatabase();
        sqlitedatabase.execSQL((new StringBuilder("DELETE FROM AdHtmlResources WHERE ResourceName = '")).append(s).append("' AND ").append("HtmlName").append("='").append(s1).append("'").toString());
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        return;
        Exception exception;
        exception;
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        throw exception;
    }

    public String[] c()
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase2 = getWritableDatabase();
        Cursor cursor2 = sqlitedatabase2.query("AdCache", new String[] {
            "FileName"
        }, null, null, null, null, null);
        Cursor cursor;
        cursor = cursor2;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_294;
        }
        String as[];
        if (cursor.getCount() <= 0)
        {
            break MISSING_BLOCK_LABEL_294;
        }
        as = new String[cursor.getCount()];
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        int k = 0;
_L8:
        int l = k + 1;
        boolean flag;
        as[k] = cursor.getString(0);
        flag = cursor.moveToNext();
        if (flag) goto _L4; else goto _L3
_L3:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase2 != null && sqlitedatabase2.isOpen())
        {
            sqlitedatabase2.close();
        }
        return as;
_L2:
        as = null;
          goto _L3
        Exception exception1;
        exception1;
        Cursor cursor1;
        SQLiteDatabase sqlitedatabase1;
        cursor1 = null;
        sqlitedatabase1 = null;
_L7:
        if (cursor1 != null && !cursor1.isClosed())
        {
            cursor1.close();
        }
        Exception exception;
        Exception exception2;
        Exception exception3;
        Exception exception4;
        Exception exception5;
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
            return null;
        } else
        {
            return null;
        }
        exception;
        cursor = null;
_L6:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        throw exception;
        exception3;
        sqlitedatabase = sqlitedatabase2;
        exception = exception3;
        cursor = null;
        continue; /* Loop/switch isn't completed */
        exception5;
        sqlitedatabase = sqlitedatabase2;
        exception = exception5;
        if (true) goto _L6; else goto _L5
_L5:
        exception2;
        sqlitedatabase1 = sqlitedatabase2;
        cursor1 = null;
          goto _L7
        exception4;
        sqlitedatabase1 = sqlitedatabase2;
        cursor1 = cursor;
          goto _L7
_L4:
        k = l;
          goto _L8
        as = null;
          goto _L3
    }

    public String[] c(String s)
    {
        Object obj = null;
        SQLiteDatabase sqlitedatabase1 = getWritableDatabase();
        Cursor cursor1 = sqlitedatabase1.query("AdHtmlResources", new String[] {
            "HtmlName"
        }, (new StringBuilder("ResourceName= '")).append(s).append("'").toString(), null, null, null, null);
        String as2[];
        if (!cursor1.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_333;
        }
        as2 = new String[cursor1.getCount()];
        int k = 0;
_L8:
        int l = k + 1;
        boolean flag;
        as2[k] = cursor1.getString(0);
        flag = cursor1.moveToNext();
        if (flag) goto _L2; else goto _L1
_L1:
        String as1[] = as2;
_L9:
        String as[];
        if (cursor1 != null && !cursor1.isClosed())
        {
            cursor1.close();
        }
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
        }
        as = as1;
_L4:
        return as;
        Exception exception1;
        exception1;
        Cursor cursor;
        cursor = null;
        as = null;
_L7:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (obj == null || !((SQLiteDatabase) (obj)).isOpen()) goto _L4; else goto _L3
_L3:
        ((SQLiteDatabase) (obj)).close();
        return as;
        Exception exception;
        exception;
        SQLiteDatabase sqlitedatabase = null;
_L6:
        if (obj != null && !((Cursor) (obj)).isClosed())
        {
            ((Cursor) (obj)).close();
        }
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        throw exception;
        Exception exception3;
        exception3;
        sqlitedatabase = sqlitedatabase1;
        exception = exception3;
        obj = null;
        continue; /* Loop/switch isn't completed */
        Exception exception5;
        exception5;
        obj = cursor1;
        sqlitedatabase = sqlitedatabase1;
        exception = exception5;
        if (true) goto _L6; else goto _L5
_L5:
        Exception exception2;
        exception2;
        obj = sqlitedatabase1;
        as = null;
        cursor = null;
          goto _L7
        Exception exception4;
        exception4;
        cursor = cursor1;
        obj = sqlitedatabase1;
        as = null;
          goto _L7
        Exception exception6;
        exception6;
        cursor = cursor1;
        obj = sqlitedatabase1;
        as = as2;
          goto _L7
_L2:
        k = l;
          goto _L8
        as1 = null;
          goto _L9
    }

    public String[] d()
    {
        SQLiteDatabase sqlitedatabase = null;
        SQLiteDatabase sqlitedatabase2 = getWritableDatabase();
        Cursor cursor2 = sqlitedatabase2.query("AdHtmlResources", new String[] {
            "ResourceName"
        }, null, null, null, null, null);
        Cursor cursor;
        cursor = cursor2;
        if (cursor == null)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        String as[];
        if (cursor.getCount() <= 0)
        {
            break MISSING_BLOCK_LABEL_293;
        }
        as = new String[cursor.getCount()];
        if (!cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        int k = 0;
_L8:
        int l = k + 1;
        boolean flag;
        as[k] = cursor.getString(0);
        flag = cursor.moveToNext();
        if (flag) goto _L4; else goto _L3
_L3:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase2 != null && sqlitedatabase2.isOpen())
        {
            sqlitedatabase2.close();
        }
        return as;
_L2:
        as = null;
          goto _L3
        Exception exception1;
        exception1;
        Cursor cursor1;
        SQLiteDatabase sqlitedatabase1;
        cursor1 = null;
        sqlitedatabase1 = null;
_L7:
        if (cursor1 != null && !cursor1.isClosed())
        {
            cursor1.close();
        }
        Exception exception;
        Exception exception2;
        Exception exception3;
        Exception exception4;
        Exception exception5;
        if (sqlitedatabase1 != null && sqlitedatabase1.isOpen())
        {
            sqlitedatabase1.close();
            return null;
        } else
        {
            return null;
        }
        exception;
        cursor = null;
_L6:
        if (cursor != null && !cursor.isClosed())
        {
            cursor.close();
        }
        if (sqlitedatabase != null && sqlitedatabase.isOpen())
        {
            sqlitedatabase.close();
        }
        throw exception;
        exception3;
        sqlitedatabase = sqlitedatabase2;
        exception = exception3;
        cursor = null;
        continue; /* Loop/switch isn't completed */
        exception5;
        sqlitedatabase = sqlitedatabase2;
        exception = exception5;
        if (true) goto _L6; else goto _L5
_L5:
        exception2;
        sqlitedatabase1 = sqlitedatabase2;
        cursor1 = null;
          goto _L7
        exception4;
        sqlitedatabase1 = sqlitedatabase2;
        cursor1 = cursor;
          goto _L7
_L4:
        k = l;
          goto _L8
        as = null;
          goto _L3
    }

    public volatile void onCreate(SQLiteDatabase sqlitedatabase)
    {
        super.onCreate(sqlitedatabase);
    }

    public volatile void onUpgrade(SQLiteDatabase sqlitedatabase, int k, int l)
    {
        super.onUpgrade(sqlitedatabase, k, l);
    }
}
