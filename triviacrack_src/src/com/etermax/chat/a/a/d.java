// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteQueryBuilder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.etermax.chat.a.a:
//            c, e, g, b, 
//            h

public class d extends c
{

    Context a;

    public d()
    {
    }

    private long a(String s)
    {
        SQLiteDatabase sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getWritableDatabase();
        Cursor cursor = sqlitedatabase.rawQuery(s, null);
        long l;
        if (cursor.moveToFirst())
        {
            l = 1L + cursor.getLong(0);
        } else
        {
            l = 0L;
        }
        sqlitedatabase.close();
        return l;
    }

    public long a()
    {
        return a("SELECT MAX(conversationId) FROM Conversation");
    }

    public ArrayList a(long l)
    {
        SQLiteDatabase sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getReadableDatabase();
        ArrayList arraylist = new ArrayList();
        Cursor cursor = sqlitedatabase.rawQuery((new StringBuilder()).append("SELECT * FROM Message WHERE conversationId=").append(l).append(";").toString(), null);
        if (cursor.moveToFirst())
        {
            do
            {
                g g1 = new g();
                g1.a(cursor.getLong(cursor.getColumnIndex("messageId")));
                g1.b(cursor.getLong(cursor.getColumnIndex("senderId")));
                g1.c(l);
                g1.a(cursor.getInt(cursor.getColumnIndex("messageOrder")));
                g1.a(cursor.getString(cursor.getColumnIndex("message")));
                g1.b(cursor.getString(cursor.getColumnIndex("messageType")));
                g1.d(cursor.getLong(cursor.getColumnIndex("time")));
                g1.d(cursor.getString(cursor.getColumnIndex("application")));
                g1.c(cursor.getString(cursor.getColumnIndex("reason")));
                g1.a(Long.valueOf(cursor.getLong(cursor.getColumnIndex("userToMention"))));
                g1.a(false);
                arraylist.add(g1);
            } while (cursor.moveToNext());
        }
        cursor.close();
        sqlitedatabase.close();
        return arraylist;
    }

    public void a(b b1)
    {
        SQLiteDatabase sqlitedatabase;
        ContentValues contentvalues;
        sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getWritableDatabase();
        contentvalues = new ContentValues();
        contentvalues.put("lastDate", Long.valueOf(b1.d()));
        contentvalues.put("privateKey", b1.b());
        contentvalues.put("publicKey", b1.a());
        contentvalues.put("type", Integer.valueOf(b1.f()));
        contentvalues.put("unread", Integer.valueOf(b1.e()));
        if (b1.c() != -1L) goto _L2; else goto _L1
_L1:
        contentvalues.put("conversationId", Long.valueOf(a()));
        sqlitedatabase.insertOrThrow("Conversation", null, contentvalues);
_L4:
        sqlitedatabase.close();
        return;
_L2:
        try
        {
            String as[] = new String[1];
            as[0] = String.valueOf(b1.c());
            sqlitedatabase.update("Conversation", contentvalues, "conversationId=?", as);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void a(ArrayList arraylist)
    {
        ArrayList arraylist1 = new ArrayList();
        ArrayList arraylist2 = new ArrayList();
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            g g3 = (g)iterator.next();
            if (g3.a() == -1L)
            {
                arraylist1.add(g3);
            } else
            if (g3.h())
            {
                arraylist2.add(g3);
            }
        } while (true);
        if (arraylist1.size() > 0)
        {
            long l = b();
            SQLiteDatabase sqlitedatabase1 = (new e(this, a, "DBPlaychat", null, 1)).getWritableDatabase();
            Iterator iterator2 = arraylist1.iterator();
            long l1 = l;
            while (iterator2.hasNext()) 
            {
                g g2 = (g)iterator2.next();
                g2.a(l1);
                l1++;
                ContentValues contentvalues1 = new ContentValues();
                contentvalues1.put("messageId", Long.valueOf(g2.a()));
                contentvalues1.put("message", g2.d());
                contentvalues1.put("conversationId", Long.valueOf(g2.c()));
                contentvalues1.put("messageOrder", Integer.valueOf(g2.g()));
                contentvalues1.put("senderId", Long.valueOf(g2.b()));
                contentvalues1.put("time", Long.valueOf(g2.f()));
                contentvalues1.put("messageType", g2.e());
                contentvalues1.put("application", g2.k());
                contentvalues1.put("reason", g2.i());
                contentvalues1.put("userToMention", g2.j());
                try
                {
                    sqlitedatabase1.insertOrThrow("Message", null, contentvalues1);
                }
                catch (Exception exception)
                {
                    String as1[] = new String[1];
                    as1[0] = String.valueOf(g2.a());
                    sqlitedatabase1.update("Message", contentvalues1, "messageId=?", as1);
                }
            }
            sqlitedatabase1.close();
        }
        if (arraylist2.size() > 0)
        {
            SQLiteDatabase sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getWritableDatabase();
            ContentValues contentvalues;
            String as[];
            for (Iterator iterator1 = arraylist2.iterator(); iterator1.hasNext(); sqlitedatabase.update("Message", contentvalues, "messageId=?", as))
            {
                g g1 = (g)iterator1.next();
                contentvalues = new ContentValues();
                contentvalues.put("message", g1.d());
                contentvalues.put("messageOrder", Integer.valueOf(g1.g()));
                contentvalues.put("senderId", Long.valueOf(g1.b()));
                contentvalues.put("time", Long.valueOf(g1.f()));
                contentvalues.put("messageType", g1.e());
                contentvalues.put("application", g1.k());
                contentvalues.put("reason", g1.i());
                contentvalues.put("userToMention", g1.j());
                as = new String[1];
                as[0] = String.valueOf(g1.a());
            }

            sqlitedatabase.close();
        }
    }

    public void a(List list)
    {
        SQLiteDatabase sqlitedatabase;
        Iterator iterator;
        long l1;
        sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getWritableDatabase();
        long l = c();
        iterator = list.iterator();
        l1 = l;
_L2:
        ContentValues contentvalues;
        long l2;
        if (!iterator.hasNext())
        {
            break; /* Loop/switch isn't completed */
        }
        h h1 = (h)iterator.next();
        if (h1.a() != -1L)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        contentvalues = new ContentValues();
        contentvalues.put("participantId", Long.valueOf(l1));
        l2 = l1 + 1L;
        contentvalues.put("conversationId", Long.valueOf(h1.b()));
        contentvalues.put("userId", Long.valueOf(h1.c()));
        sqlitedatabase.insertOrThrow("Participant", null, contentvalues);
        long l3 = l2;
_L3:
        l1 = l3;
        if (true) goto _L2; else goto _L1
        SQLException sqlexception;
        sqlexception;
        l3 = l2;
          goto _L3
_L1:
        sqlitedatabase.close();
        return;
        l3 = l1;
          goto _L3
    }

    public long b()
    {
        return a("SELECT MAX(messageId) FROM Message");
    }

    public b b(long l)
    {
        SQLiteDatabase sqlitedatabase;
        b b1;
        Cursor cursor;
        sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getReadableDatabase();
        if (sqlitedatabase == null)
        {
            return null;
        }
        b1 = new b();
        b1.a(l);
        cursor = sqlitedatabase.rawQuery((new StringBuilder()).append("SELECT * FROM Conversation WHERE conversationId=").append(l).toString(), null);
        boolean flag;
        if (cursor.moveToFirst())
        {
            do
            {
                b1.b(cursor.getLong(cursor.getColumnIndex("lastDate")));
                b1.b(cursor.getString(cursor.getColumnIndex("privateKey")));
                b1.a(cursor.getString(cursor.getColumnIndex("publicKey")));
                b1.b(cursor.getInt(cursor.getColumnIndex("type")));
                b1.a(cursor.getInt(cursor.getColumnIndex("unread")));
                flag = cursor.moveToNext();
            } while (flag);
        }
        cursor.close();
        sqlitedatabase.close();
        return b1;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        cursor.close();
        sqlitedatabase.close();
        return null;
        Exception exception;
        exception;
        cursor.close();
        sqlitedatabase.close();
        throw exception;
    }

    public void b(ArrayList arraylist)
    {
        if (arraylist.size() != 0)
        {
            SQLiteDatabase sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getWritableDatabase();
            Iterator iterator = arraylist.iterator();
            while (iterator.hasNext()) 
            {
                g g1 = (g)iterator.next();
                sqlitedatabase.delete("Message", (new StringBuilder()).append("messageId=").append(String.valueOf(g1.a())).toString(), null);
            }
        }
    }

    public long c()
    {
        return a("SELECT MAX(participantId) FROM Participant");
    }

    public ArrayList c(long l)
    {
        ArrayList arraylist;
        SQLiteDatabase sqlitedatabase;
        SQLiteQueryBuilder sqlitequerybuilder;
        arraylist = new ArrayList();
        sqlitedatabase = (new e(this, a, "DBPlaychat", null, 1)).getReadableDatabase();
        sqlitequerybuilder = new SQLiteQueryBuilder();
        sqlitequerybuilder.setTables("Participant");
        String as[] = new String[1];
        as[0] = String.valueOf(l);
        Cursor cursor = sqlitequerybuilder.query(sqlitedatabase, null, "conversationId=?", as, null, null, null);
        if (cursor.moveToFirst())
        {
            do
            {
                h h1 = new h();
                h1.a(cursor.getLong(cursor.getColumnIndex("participantId")));
                h1.c(cursor.getLong(cursor.getColumnIndex("userId")));
                h1.b(cursor.getLong(cursor.getColumnIndex("conversationId")));
                arraylist.add(h1);
            } while (cursor.moveToNext());
        }
        cursor.close();
        sqlitedatabase.close();
        return arraylist;
        Exception exception1;
        exception1;
        exception1.printStackTrace();
        sqlitedatabase.close();
        return arraylist;
        Exception exception;
        exception;
        sqlitedatabase.close();
        throw exception;
    }
}
