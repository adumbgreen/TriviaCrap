// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.flurry.sdk;

import android.location.Location;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.flurry.sdk:
//            df, cx, el, fb, 
//            cy

public class de
{

    private static final String b = com/flurry/sdk/de.getSimpleName();
    byte a[];

    public de(df df1)
    {
        ByteArrayOutputStream bytearrayoutputstream;
        DataOutputStream dataoutputstream;
        bytearrayoutputstream = new ByteArrayOutputStream();
        dataoutputstream = new DataOutputStream(bytearrayoutputstream);
        Map map;
        dataoutputstream.writeShort(3);
        dataoutputstream.writeUTF(df1.a());
        dataoutputstream.writeLong(df1.b());
        dataoutputstream.writeLong(df1.c());
        dataoutputstream.writeLong(df1.d());
        map = df1.e();
        if (map != null) goto _L2; else goto _L1
_L1:
        dataoutputstream.writeShort(0);
_L17:
        dataoutputstream.writeUTF(df1.f());
        dataoutputstream.writeUTF(df1.g());
        dataoutputstream.writeByte(df1.h());
        dataoutputstream.writeUTF(df1.i());
        if (df1.j() != null) goto _L4; else goto _L3
_L3:
        dataoutputstream.writeBoolean(false);
_L18:
        dataoutputstream.writeInt(df1.k());
        dataoutputstream.writeByte(-1);
        dataoutputstream.writeByte(-1);
        dataoutputstream.writeByte(df1.l());
        if (df1.m() != null) goto _L6; else goto _L5
_L5:
        dataoutputstream.writeBoolean(false);
_L19:
        Map map1 = df1.n();
        if (map1 != null) goto _L8; else goto _L7
_L7:
        dataoutputstream.writeShort(0);
_L20:
        List list = df1.o();
        if (list != null) goto _L10; else goto _L9
_L9:
        dataoutputstream.writeShort(0);
_L21:
        List list1;
        dataoutputstream.writeBoolean(df1.p());
        list1 = df1.r();
        if (list1 == null) goto _L12; else goto _L11
_L11:
        int k;
        int l;
        int i1;
        k = 0;
        l = 0;
        i1 = 0;
_L25:
        if (k >= list1.size()) goto _L14; else goto _L13
_L13:
        l += ((cx)list1.get(k)).a();
        if (l <= 0x27100)
        {
            break MISSING_BLOCK_LABEL_697;
        }
        el.a(5, b, "Error Log size exceeded. No more event details logged.");
        int i = i1;
_L24:
        dataoutputstream.writeInt(df1.q());
        dataoutputstream.writeShort(i);
        int j = 0;
_L16:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        dataoutputstream.write(((cx)list1.get(j)).b());
        j++;
        if (true) goto _L16; else goto _L15
_L2:
        dataoutputstream.writeShort(map.size());
        Iterator iterator2 = map.entrySet().iterator();
        while (iterator2.hasNext()) 
        {
            java.util.Map.Entry entry1 = (java.util.Map.Entry)iterator2.next();
            dataoutputstream.writeUTF((String)entry1.getKey());
            dataoutputstream.writeUTF((String)entry1.getValue());
            dataoutputstream.writeByte(0);
        }
          goto _L17
        IOException ioexception;
        ioexception;
        DataOutputStream dataoutputstream1 = dataoutputstream;
_L23:
        el.a(6, b, "", ioexception);
        throw ioexception;
        Exception exception;
        exception;
        dataoutputstream = dataoutputstream1;
_L22:
        fb.a(dataoutputstream);
        throw exception;
_L4:
        dataoutputstream.writeBoolean(true);
        dataoutputstream.writeDouble(a(df1.j().getLatitude()));
        dataoutputstream.writeDouble(a(df1.j().getLongitude()));
        dataoutputstream.writeFloat(df1.j().getAccuracy());
          goto _L18
_L6:
        dataoutputstream.writeBoolean(true);
        dataoutputstream.writeLong(df1.m().longValue());
          goto _L19
_L8:
        dataoutputstream.writeShort(map1.size());
        Iterator iterator1 = map1.entrySet().iterator();
        while (iterator1.hasNext()) 
        {
            java.util.Map.Entry entry = (java.util.Map.Entry)iterator1.next();
            dataoutputstream.writeUTF((String)entry.getKey());
            dataoutputstream.writeInt(((cu.a)entry.getValue()).a);
        }
          goto _L20
_L10:
        dataoutputstream.writeShort(list.size());
        Iterator iterator = list.iterator();
        while (iterator.hasNext()) 
        {
            dataoutputstream.write(((cy)iterator.next()).e());
        }
          goto _L21
_L15:
        dataoutputstream.writeInt(-1);
        dataoutputstream.writeShort(0);
        dataoutputstream.writeShort(0);
        dataoutputstream.writeShort(0);
        a = bytearrayoutputstream.toByteArray();
        fb.a(dataoutputstream);
        return;
        exception;
        dataoutputstream = null;
          goto _L22
        ioexception;
        dataoutputstream1 = null;
          goto _L23
_L14:
        i = i1;
          goto _L24
_L12:
        i = 0;
          goto _L24
        exception;
          goto _L22
        i1++;
        k++;
          goto _L25
    }

    public de(byte abyte0[])
    {
        a = abyte0;
    }

    double a(double d)
    {
        return (double)Math.round(d * 1000D) / 1000D;
    }

    public byte[] a()
    {
        return a;
    }

}
