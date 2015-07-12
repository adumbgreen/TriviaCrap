// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.resources;

import android.content.Context;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.etermax.gamescommon.resources:
//            b

public class a
{

    Context a;
    private com.etermax.tools.e.a b;

    public a()
    {
    }

    private static int a(Context context, DisplayMetrics displaymetrics)
    {
        int i;
        try
        {
            ((WindowManager)context.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
            i = displaymetrics.densityDpi;
        }
        catch (Exception exception)
        {
            return 1;
        }
        switch (i)
        {
        default:
            return 4;

        case 120: // 'x'
            return 0;

        case 160: 
            return 1;

        case 240: 
            return 2;

        case 320: 
            return 3;
        }
    }

    public static b a(Context context)
    {
        return a(context, b.e);
    }

    public static b a(Context context, b b1)
    {
        int i = 0;
        DisplayMetrics displaymetrics = new DisplayMetrics();
        int j = a(context, displaymetrics);
        double d = Math.sqrt(Math.pow((float)displaymetrics.widthPixels / displaymetrics.xdpi, 2D) + Math.pow((float)displaymetrics.heightPixels / displaymetrics.ydpi, 2D));
        b ab[] = new b[7];
        ab[0] = b.a;
        ab[1] = b.b;
        ab[2] = b.c;
        ab[3] = b.d;
        ab[4] = b.e;
        ab[5] = b.e;
        ab[6] = b.e;
        b ab1[] = new b[7];
        ab1[0] = b.a;
        ab1[1] = b.b;
        ab1[2] = b.c;
        ab1[3] = b.d;
        ab1[4] = b.d;
        ab1[5] = b.d;
        ab1[6] = b.d;
        int k = ab.length;
        int l = 0;
        while (i < k) 
        {
            b b2 = ab[i];
            if (b2.b() <= b1.b())
            {
                ab1[l] = b2;
            } else
            {
                ab1[l] = b1;
            }
            l++;
            i++;
        }
        if (d < 7D)
        {
            return ab1[j];
        }
        if (d < 9.5D)
        {
            return ab1[j + 1];
        } else
        {
            return ab1[j + 2];
        }
    }

    public static String b(Context context, b b1)
    {
        return a(context, b1).a();
    }

    public Drawable a(String s)
    {
        BitmapDrawable bitmapdrawable;
        try
        {
            bitmapdrawable = new BitmapDrawable(b(s));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return null;
        }
        return bitmapdrawable;
    }

    protected void a()
    {
        b = new com.etermax.tools.e.a((int)Runtime.getRuntime().maxMemory() / 1024 / 7);
    }

    public Bitmap b(String s)
    {
        if (b.a(s) != null) goto _L2; else goto _L1
_L1:
        (new android.graphics.BitmapFactory.Options()).inScaled = true;
        Bitmap bitmap4 = BitmapFactory.decodeStream(new FileInputStream(new File(s)));
        Bitmap bitmap1 = bitmap4;
_L12:
        if (bitmap1 != null) goto _L4; else goto _L3
_L3:
        InputStream inputstream2 = a.getAssets().open(s);
        InputStream inputstream1 = inputstream2;
        Bitmap bitmap3 = BitmapFactory.decodeStream(inputstream1);
        bitmap1 = bitmap3;
        if (inputstream1 == null) goto _L4; else goto _L5
_L5:
        inputstream1.close();
        Bitmap bitmap2 = bitmap1;
          goto _L6
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        break MISSING_BLOCK_LABEL_98;
_L9:
        if (inputstream1 == null) goto _L4; else goto _L7
_L7:
        inputstream1.close();
        bitmap2 = bitmap1;
          goto _L6
_L8:
        InputStream inputstream;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        inputstream.close();
        Exception exception1;
        throw exception1;
        try
        {
            return BitmapFactory.decodeByteArray(new byte[] {
                0
            }, 0, 0);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        return null;
_L11:
        b.a(s, bitmap2);
_L2:
        Bitmap bitmap = b.a(s);
        return bitmap;
        Exception exception2;
        exception2;
        inputstream = inputstream1;
        exception1 = exception2;
          goto _L8
        IOException ioexception1;
        ioexception1;
          goto _L9
_L4:
        bitmap2 = bitmap1;
_L6:
        if (bitmap2 != null) goto _L11; else goto _L10
_L10:
        return null;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        bitmap1 = null;
          goto _L12
        IOException ioexception;
        ioexception;
        inputstream1 = null;
          goto _L9
        exception1;
        inputstream = null;
          goto _L8
    }

    public b b()
    {
        return a(a);
    }
}
