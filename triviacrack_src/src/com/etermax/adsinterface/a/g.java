// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.adsinterface.a;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.AsyncTask;
import com.etermax.a.a;
import com.etermax.tools.d.f;
import java.io.IOException;
import java.io.InputStream;

// Referenced classes of package com.etermax.adsinterface.a:
//            f, a, h

class g extends AsyncTask
{

    final com.etermax.adsinterface.a.f a;
    private Bitmap b;
    private h c;

    public g(com.etermax.adsinterface.a.f f1, h h1)
    {
        a = f1;
        super();
        c = h1;
    }

    private Bitmap a(String s)
    {
        InputStream inputstream1 = com.etermax.adsinterface.a.f.a(a, s);
        InputStream inputstream;
        Bitmap bitmap;
        inputstream = inputstream1;
        bitmap = null;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_37;
        }
        Bitmap bitmap1 = BitmapFactory.decodeStream(new f(inputstream));
        bitmap = bitmap1;
        Exception exception;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception1)
            {
                return bitmap;
            }
        }
        return bitmap;
        exception;
        inputstream = null;
_L2:
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception) { }
        }
        throw exception;
        exception;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private boolean a(String s, String s1)
    {
        String s2 = (new StringBuilder()).append(s).append("_v").append(f.b(a).b()).toString();
        Exception exception1;
        Exception exception2;
        boolean flag;
        boolean flag1;
        try
        {
            if (f.c(a) == null)
            {
                f.d(a);
            }
            if (f.b(a).b() > 1)
            {
                int i = -1 + f.b(a).b();
                f.c(a).b((new StringBuilder()).append(s).append("_v").append(i).toString());
            }
            b = f.c(a).a(s2);
        }
        catch (Exception exception) { }
        catch (OutOfMemoryError outofmemoryerror)
        {
            com.etermax.a.a.a("IMAGE_CACHE", "OUT OF MEMORY WHILE TRYING TO GET BITMAP FROM DISK", outofmemoryerror);
        }
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        b = a(s);
        if (b != null)
        {
            break MISSING_BLOCK_LABEL_202;
        }
        flag = false;
        if (s1 == null)
        {
            break MISSING_BLOCK_LABEL_169;
        }
        flag1 = a(s1, null);
        flag = flag1;
_L2:
        return flag;
        exception2;
        flag = false;
        if (s1 == null) goto _L2; else goto _L1
_L1:
        return a(s1, null);
        if (f.c(a) != null)
        {
            try
            {
                f.c(a).a(s2, b);
                f.c(a).b();
            }
            // Misplaced declaration of an exception variable
            catch (Exception exception1) { }
        }
        return true;
    }

    protected transient Boolean a(String as[])
    {
        return Boolean.valueOf(a(as[0], as[1]));
    }

    protected void a(Boolean boolean1)
    {
        super.onPostExecute(boolean1);
        if (boolean1.booleanValue())
        {
            c.contentLoadCompleted(b);
            return;
        } else
        {
            c.contentLoadFailed(new Exception("Could not load image"));
            return;
        }
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((String[])aobj);
    }

    protected void onPostExecute(Object obj)
    {
        a((Boolean)obj);
    }
}
