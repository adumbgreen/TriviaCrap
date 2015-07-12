// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.b;

import android.content.Context;
import android.os.Environment;
import com.mdotm.android.d.b;
import com.mdotm.android.e.d;
import com.mdotm.android.vast.c;
import com.mdotm.android.vast.e;
import java.io.File;
import java.util.ArrayList;

// Referenced classes of package com.mdotm.android.b:
//            c, b

public class a
{

    public a()
    {
    }

    private int a(String s)
    {
        if (s.equalsIgnoreCase("jpg") || s.equalsIgnoreCase("png") || s.equalsIgnoreCase("jpeg"))
        {
            return c.f;
        }
        if (s.equalsIgnoreCase("mp4") || s.equalsIgnoreCase("m4v") || s.equalsIgnoreCase("avi") || s.equalsIgnoreCase("3gp"))
        {
            return c.g;
        }
        if (s.equalsIgnoreCase("gif"))
        {
            return c.i;
        }
        if (!s.contains("webarchive"))
        {
            return c.h;
        } else
        {
            return 0;
        }
    }

    private String a(String s, boolean flag)
    {
        String s1 = s.replace("\\", "").replace("/", "").replace(".", "").replace(":", "").replace("?", "");
        if (!flag)
        {
            s1 = (new StringBuilder(String.valueOf(s1))).append("-").append(System.currentTimeMillis()).toString();
        }
        return s1;
    }

    public void a(e e1, b b1, int i, Context context, boolean flag)
    {
        boolean flag1;
        ArrayList arraylist;
        String s;
        com.mdotm.android.vast.a a1;
        int j;
        String s1;
        File file1;
        boolean flag2;
        int k;
        com.mdotm.android.vast.a a2;
        if (e1 != null)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        if (flag1) goto _L2; else goto _L1
_L1:
        String s3 = b1.d();
        a1 = null;
        s = s3;
_L23:
        if (s == null || s.equalsIgnoreCase("null") || s.trim().length() <= 0) goto _L4; else goto _L3
_L3:
        try
        {
            j = a(s.substring(1 + s.lastIndexOf(".")));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            File file;
            java.io.InputStream inputstream;
            java.io.InputStream inputstream1;
            File file2;
            File file3;
            File file4;
            File file6;
            if (flag1)
            {
                e1.a(0);
                return;
            } else
            {
                b1.e(0);
                b1.b(false);
                return;
            }
        }
        if (!flag1) goto _L6; else goto _L5
_L5:
        a1.a(j);
_L24:
        if (j != c.f && j != c.g && j != c.i) goto _L8; else goto _L7
_L7:
        d.b(this, "image/video/gifimage resource");
        s1 = a(s, flag);
        if (i == 0 || !flag) goto _L10; else goto _L9
_L9:
        if (i != 2) goto _L12; else goto _L11
_L11:
        File file5 = new File((new StringBuilder()).append(context.getCacheDir()).append("/").append(com.mdotm.android.b.c.b).append("/").append(com.mdotm.android.b.c.c).toString());
        if (!file5.exists())
        {
            file5.mkdirs();
        }
        file1 = new File(file5, s1);
_L25:
        if (!file1.exists()) goto _L14; else goto _L13
_L13:
        if (!flag1 || a1 == null) goto _L16; else goto _L15
_L15:
        a1.a(file1.getAbsolutePath());
        a1.a(true);
_L8:
        return;
_L2:
        arraylist = e1.c();
        if (arraylist == null || arraylist.size() <= 0) goto _L18; else goto _L17
_L17:
        k = ((com.mdotm.android.vast.b)arraylist.get(0)).a();
        a2 = null;
        k;
        JVM INSTR tableswitch 1 1: default 304
    //                   1 336;
           goto _L19 _L20
_L19:
        if (a2 != null && a2.a() == 1)
        {
            String s2 = a2.b();
            a1 = a2;
            s = s2;
        } else
        {
            a1 = a2;
            s = null;
        }
          goto _L21
_L20:
        a2 = ((c)arraylist.get(0)).d();
          goto _L19
_L21:
        if (true) goto _L23; else goto _L22
_L22:
_L6:
        b1.b(j);
          goto _L24
_L12:
        file6 = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory()).append("/").append(com.mdotm.android.b.c.b).append("/").append(com.mdotm.android.b.c.c).toString());
        if (!file6.exists())
        {
            file6.mkdirs();
        }
        file1 = new File(file6, s1);
          goto _L25
_L10:
        d.b(this, "cache is not enabled");
        if (flag1) goto _L27; else goto _L26
_L26:
        if (!b1.a()) goto _L27; else goto _L28
_L28:
        if (i != 1) goto _L30; else goto _L29
_L29:
        file = new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(com.mdotm.android.b.c.b).append("/").append(com.mdotm.android.b.c.d).toString());
        if (!file.exists())
        {
            file.mkdirs();
        }
        file1 = new File(file, s1);
          goto _L25
_L30:
        file2 = new File((new StringBuilder()).append(context.getCacheDir()).append("/").append(com.mdotm.android.b.c.b).append("/").append(com.mdotm.android.b.c.d).toString());
        if (!file2.exists())
        {
            file2.mkdirs();
        }
        file1 = new File(file2, s1);
          goto _L25
_L27:
        if (i != 1) goto _L32; else goto _L31
_L31:
        file3 = new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(com.mdotm.android.b.c.b).append("/").append(com.mdotm.android.b.c.e).toString());
        if (!file3.exists())
        {
            file3.mkdirs();
        }
        file1 = new File(file3, s1);
          goto _L25
_L32:
        file4 = new File((new StringBuilder()).append(context.getCacheDir()).append("/").append(com.mdotm.android.b.c.b).append("/").append(com.mdotm.android.b.c.e).toString());
        if (!file4.exists())
        {
            file4.mkdirs();
        }
        file1 = new File(file4, s1);
          goto _L25
_L16:
        b1.a(file1.getAbsolutePath());
        b1.b(true);
        return;
_L14:
        if (!flag) goto _L34; else goto _L33
_L33:
        d.b(this, "cache does not exist");
        com.mdotm.android.a.a.a(context).b(s1);
_L34:
        if (!flag) goto _L36; else goto _L35
_L35:
        inputstream = (new com.mdotm.android.b.b()).a(context, s);
        if (inputstream != null) goto _L38; else goto _L37
_L37:
        d.b(this, "unable to download file");
        if (!flag1) goto _L40; else goto _L39
_L39:
        a1.a(false);
        e1.a(0);
        return;
_L40:
        b1.e(0);
        b1.b(false);
        return;
_L38:
        if (i != 2)
        {
            break MISSING_BLOCK_LABEL_942;
        }
        if (b1.g() != c.g)
        {
            break MISSING_BLOCK_LABEL_942;
        }
        if (!flag1) goto _L42; else goto _L41
_L41:
        e1.a(0);
        a1.a(false);
        return;
_L42:
        b1.e(0);
        b1.b(false);
        return;
        d.c(this, "inserting file neme to ad cache1");
        file1.createNewFile();
        if (!(new com.mdotm.android.b.b()).a(inputstream, file1)) goto _L44; else goto _L43
_L43:
        if (!flag1 || a1 == null) goto _L46; else goto _L45
_L45:
        a1.a(file1.getAbsolutePath());
        a1.a(true);
_L47:
        d.c(this, "inserting file neme to ad cache");
        com.mdotm.android.a.a.a(context).a(s1, "AdCache");
        return;
_L46:
        b1.a(file1.getAbsolutePath());
        b1.b(true);
        if (true) goto _L47; else goto _L44
_L44:
        if (!flag1 || a1 == null) goto _L49; else goto _L48
_L48:
        b1.b(false);
        e1.a(0);
        return;
_L49:
        b1.e(0);
        b1.b(false);
        return;
_L56:
        if (flag2) goto _L51; else goto _L50
_L50:
        inputstream1 = (new com.mdotm.android.b.b()).a(context, s);
        if (inputstream1 != null) goto _L53; else goto _L52
_L52:
        if (!flag1) goto _L55; else goto _L54
_L54:
        a1.a(false);
        e1.a(0);
        return;
_L66:
        if (j == c.g && i == 2)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
          goto _L56
_L55:
        b1.e(0);
        b1.b(false);
        return;
_L53:
        file1.createNewFile();
        if (!(new com.mdotm.android.b.b()).a(inputstream1, file1)) goto _L58; else goto _L57
_L57:
        if (!flag1) goto _L60; else goto _L59
_L59:
        a1.a(file1.getAbsolutePath());
        a1.a(true);
        return;
_L60:
        b1.a(file1.getAbsolutePath());
        b1.b(true);
        return;
_L58:
        if (!flag1) goto _L62; else goto _L61
_L61:
        a1.a(false);
        e1.a(0);
        return;
_L62:
        b1.e(0);
        b1.b(false);
        return;
_L51:
        if (!flag1) goto _L64; else goto _L63
_L63:
        e1.a(0);
        return;
_L64:
        b1.e(0);
        b1.b(false);
        return;
_L4:
        if (flag1)
        {
            e1.a(0);
            return;
        } else
        {
            b1.e(0);
            return;
        }
_L18:
        s = null;
        a1 = null;
          goto _L23
_L36:
        if (!flag1) goto _L66; else goto _L65
_L65:
        if (i == 2)
        {
            flag2 = true;
        } else
        {
            flag2 = false;
        }
          goto _L56
    }
}
