// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.net.Uri;

// Referenced classes of package com.b.a:
//            i, x, ai, aa, 
//            k, e, am, a

class w extends i
{

    private static final String p[] = {
        "orientation"
    };

    w(Context context, aa aa, k k, e e, am am, a a1)
    {
        super(context, aa, k, e, am, a1);
    }

    static int a(ContentResolver contentresolver, Uri uri)
    {
        Cursor cursor2 = contentresolver.query(uri, p, null, null, null);
        Cursor cursor = cursor2;
        if (cursor == null) goto _L2; else goto _L1
_L1:
        boolean flag = cursor.moveToFirst();
        if (flag) goto _L3; else goto _L2
_L2:
        int j;
        if (cursor != null)
        {
            cursor.close();
        }
        j = 0;
_L5:
        return j;
_L3:
        int k = cursor.getInt(0);
        j = k;
        if (cursor == null) goto _L5; else goto _L4
_L4:
        cursor.close();
        return j;
        RuntimeException runtimeexception;
        runtimeexception;
        Cursor cursor1 = null;
_L9:
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return 0;
        Exception exception;
        exception;
        cursor = null;
_L7:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        RuntimeException runtimeexception1;
        runtimeexception1;
        cursor1 = cursor;
        if (true) goto _L9; else goto _L8
_L8:
    }

    static x a(int j, int k)
    {
        if (j <= x.a.e && k <= x.a.f)
        {
            return x.a;
        }
        if (j <= x.b.e && k <= x.b.f)
        {
            return x.b;
        } else
        {
            return x.c;
        }
    }

    Bitmap a(ai ai1)
    {
        boolean flag;
        ContentResolver contentresolver;
        int j;
        x x1;
        Bitmap bitmap;
        flag = true;
        contentresolver = o.getContentResolver();
        a(a(contentresolver, ai1.c));
        String s = contentresolver.getType(ai1.c);
        if (s != null && s.startsWith("video/"))
        {
            j = ((flag) ? 1 : 0);
        } else
        {
            j = 0;
        }
        if (!ai1.d()) goto _L2; else goto _L1
_L1:
        x1 = a(ai1.f, ai1.g);
        if (j != 0 || x1 != x.c) goto _L4; else goto _L3
_L3:
        bitmap = super.a(ai1);
_L5:
        return bitmap;
_L4:
        long l = ContentUris.parseId(ai1.c);
        android.graphics.BitmapFactory.Options options = c(ai1);
        options.inJustDecodeBounds = flag;
        a(ai1.f, ai1.g, x1.e, x1.f, options);
        if (j != 0)
        {
            if (x1 != x.c)
            {
                flag = x1.d;
            }
            bitmap = android.provider.MediaStore.Video.Thumbnails.getThumbnail(contentresolver, l, flag, options);
        } else
        {
            bitmap = android.provider.MediaStore.Images.Thumbnails.getThumbnail(contentresolver, l, x1.d, options);
        }
        if (bitmap != null) goto _L5; else goto _L2
_L2:
        return super.a(ai1);
    }

}
