// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.chat.a.a;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;

// Referenced classes of package com.etermax.chat.a.a:
//            d

public class e extends SQLiteOpenHelper
{

    final d a;

    public e(d d, Context context, String s, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, int i)
    {
        a = d;
        super(context, s, cursorfactory, i);
    }

    private void a(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS Message");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS Conversation");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS Participant");
        sqlitedatabase.execSQL("DROP TABLE IF EXISTS User");
    }

    private void b(SQLiteDatabase sqlitedatabase)
    {
        sqlitedatabase.execSQL("CREATE TABLE Message (messageId INTEGER PRIMARY KEY,senderId INTEGER,conversationId INTEGER, message TEXT, messageType INTEGER, time INTEGER, messageOrder INTEGER, reason TEXT, userToMention INTEGER, application TEXT);");
        sqlitedatabase.execSQL("CREATE TABLE Conversation (conversationId INTEGER PRIMARY KEY, lastDate INTEGER, unread INTEGER, type INTEGER, publicKey TEXT, privateKey TEXT);");
        sqlitedatabase.execSQL("CREATE TABLE Participant (participantId INTEGER, conversationId INTEGER, userId INTEGER);");
        sqlitedatabase.execSQL("CREATE TABLE User (userId INTEGER PRIMARY KEY, publicKey TEXT, displayName TEXT, usernameTEXT);");
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
        b(sqlitedatabase);
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        a(sqlitedatabase);
        b(sqlitedatabase);
    }
}
