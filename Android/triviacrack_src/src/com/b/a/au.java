// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Looper;
import android.os.StatFs;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

// Referenced classes of package com.b.a:
//            ai, aw, ax, as, 
//            ar, d, a, av, 
//            o

final class au
{

    static final StringBuilder a = new StringBuilder();

    static int a(Resources resources, ai ai1)
    {
        if (ai1.d != 0 || ai1.c == null)
        {
            return ai1.d;
        }
        String s = ai1.c.getAuthority();
        if (s == null)
        {
            throw new FileNotFoundException((new StringBuilder()).append("No package provided: ").append(ai1.c).toString());
        }
        List list = ai1.c.getPathSegments();
        if (list == null || list.isEmpty())
        {
            throw new FileNotFoundException((new StringBuilder()).append("No path segments: ").append(ai1.c).toString());
        }
        if (list.size() == 1)
        {
            int i;
            try
            {
                i = Integer.parseInt((String)list.get(0));
            }
            catch (NumberFormatException numberformatexception)
            {
                throw new FileNotFoundException((new StringBuilder()).append("Last path segment is not a resource ID: ").append(ai1.c).toString());
            }
            return i;
        }
        if (list.size() == 2)
        {
            String s1 = (String)list.get(0);
            return resources.getIdentifier((String)list.get(1), s1, s);
        } else
        {
            throw new FileNotFoundException((new StringBuilder()).append("More than two path segments: ").append(ai1.c).toString());
        }
    }

    static int a(Bitmap bitmap)
    {
        int i;
        if (android.os.Build.VERSION.SDK_INT >= 12)
        {
            i = aw.a(bitmap);
        } else
        {
            i = bitmap.getRowBytes() * bitmap.getHeight();
        }
        if (i < 0)
        {
            throw new IllegalStateException((new StringBuilder()).append("Negative size: ").append(bitmap).toString());
        } else
        {
            return i;
        }
    }

    static long a(File file)
    {
        long l;
        try
        {
            StatFs statfs = new StatFs(file.getAbsolutePath());
            l = ((long)statfs.getBlockCount() * (long)statfs.getBlockSize()) / 50L;
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            l = 0x500000L;
        }
        return Math.max(Math.min(l, 0x3200000L), 0x500000L);
    }

    static Resources a(Context context, ai ai1)
    {
        if (ai1.d != 0 || ai1.c == null)
        {
            return context.getResources();
        }
        String s = ai1.c.getAuthority();
        if (s == null)
        {
            throw new FileNotFoundException((new StringBuilder()).append("No package provided: ").append(ai1.c).toString());
        }
        Resources resources;
        try
        {
            resources = context.getPackageManager().getResourcesForApplication(s);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new FileNotFoundException((new StringBuilder()).append("Unable to obtain resources for package: ").append(ai1.c).toString());
        }
        return resources;
    }

    static o a(Context context)
    {
        boolean flag = true;
        Class.forName("com.squareup.okhttp.OkUrlFactory");
        boolean flag1 = flag;
_L1:
        ClassNotFoundException classnotfoundexception;
        try
        {
            Class.forName("com.squareup.okhttp.OkHttpClient");
        }
        catch (ClassNotFoundException classnotfoundexception1)
        {
            flag = false;
        }
        if (flag != flag1)
        {
            throw new RuntimeException("Picasso detected an unsupported OkHttp on the classpath.\nTo use OkHttp with this version of Picasso, you'll need:\n1. com.squareup.okhttp:okhttp:1.6.0 (or newer)\n2. com.squareup.okhttp:okhttp-urlconnection:1.6.0 (or newer)\nNote that OkHttp 2.0.0+ is supported!");
        }
        break MISSING_BLOCK_LABEL_44;
        classnotfoundexception;
        flag1 = false;
          goto _L1
        if (flag)
        {
            return ax.a(context);
        } else
        {
            return new as(context);
        }
    }

    static Object a(Context context, String s)
    {
        return context.getSystemService(s);
    }

    static String a(ai ai1)
    {
        String s = a(ai1, a);
        a.setLength(0);
        return s;
    }

    static String a(ai ai1, StringBuilder stringbuilder)
    {
        int i;
        int j;
        if (ai1.c != null)
        {
            String s = ai1.c.toString();
            stringbuilder.ensureCapacity(50 + s.length());
            stringbuilder.append(s);
        } else
        {
            stringbuilder.ensureCapacity(50);
            stringbuilder.append(ai1.d);
        }
        stringbuilder.append('\n');
        if (ai1.j != 0.0F)
        {
            stringbuilder.append("rotation:").append(ai1.j);
            if (ai1.m)
            {
                stringbuilder.append('@').append(ai1.k).append('x').append(ai1.l);
            }
            stringbuilder.append('\n');
        }
        if (ai1.f != 0)
        {
            stringbuilder.append("resize:").append(ai1.f).append('x').append(ai1.g);
            stringbuilder.append('\n');
        }
        if (!ai1.h) goto _L2; else goto _L1
_L1:
        stringbuilder.append("centerCrop\n");
_L4:
        if (ai1.e != null)
        {
            i = ai1.e.size();
            for (j = 0; j < i; j++)
            {
                stringbuilder.append(((ar)ai1.e.get(j)).a());
                stringbuilder.append('\n');
            }

        }
        break; /* Loop/switch isn't completed */
_L2:
        if (ai1.i)
        {
            stringbuilder.append("centerInside\n");
        }
        if (true) goto _L4; else goto _L3
_L3:
        return stringbuilder.toString();
    }

    static String a(d d1)
    {
        return a(d1, "");
    }

    static String a(d d1, String s)
    {
        StringBuilder stringbuilder = new StringBuilder(s);
        a a1 = d1.j();
        if (a1 != null)
        {
            stringbuilder.append(a1.b.a());
        }
        List list = d1.l();
        if (list != null)
        {
            int i = list.size();
            for (int j = 0; j < i; j++)
            {
                if (j > 0 || a1 != null)
                {
                    stringbuilder.append(", ");
                }
                stringbuilder.append(((a)list.get(j)).b.a());
            }

        }
        return stringbuilder.toString();
    }

    static void a()
    {
        if (c())
        {
            throw new IllegalStateException("Method call should not happen from the main thread.");
        } else
        {
            return;
        }
    }

    static void a(InputStream inputstream)
    {
        if (inputstream == null)
        {
            return;
        }
        try
        {
            inputstream.close();
            return;
        }
        catch (IOException ioexception)
        {
            return;
        }
    }

    static void a(String s, String s1, String s2)
    {
        a(s, s1, s2, "");
    }

    static void a(String s, String s1, String s2, String s3)
    {
        Log.d("Picasso", String.format("%1$-11s %2$-12s %3$s %4$s", new Object[] {
            s, s1, s2, s3
        }));
    }

    static boolean a(String s)
    {
        boolean flag = true;
        if (s != null) goto _L2; else goto _L1
_L1:
        return false;
_L2:
        String as1[];
        as1 = s.split(" ", 2);
        if ("CACHE".equals(as1[0]))
        {
            return flag;
        }
        if (as1.length == flag) goto _L1; else goto _L3
_L3:
        if (!"CONDITIONAL_CACHE".equals(as1[0])) goto _L5; else goto _L4
_L4:
        int i = Integer.parseInt(as1[1]);
        if (i != 304) goto _L5; else goto _L6
_L6:
        return flag;
_L5:
        flag = false;
        if (true) goto _L6; else goto _L7
_L7:
        NumberFormatException numberformatexception;
        numberformatexception;
        return false;
    }

    static File b(Context context)
    {
        File file = new File(context.getApplicationContext().getCacheDir(), "picasso-cache");
        if (!file.exists())
        {
            file.mkdirs();
        }
        return file;
    }

    static void b()
    {
        if (!c())
        {
            throw new IllegalStateException("Method call should happen from the main thread.");
        } else
        {
            return;
        }
    }

    static boolean b(Context context, String s)
    {
        return context.checkCallingOrSelfPermission(s) == 0;
    }

    static byte[] b(InputStream inputstream)
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        byte abyte0[] = new byte[4096];
        do
        {
            int i = inputstream.read(abyte0);
            if (-1 != i)
            {
                bytearrayoutputstream.write(abyte0, 0, i);
            } else
            {
                return bytearrayoutputstream.toByteArray();
            }
        } while (true);
    }

    static int c(Context context)
    {
        ActivityManager activitymanager = (ActivityManager)a(context, "activity");
        boolean flag;
        int i;
        int j;
        if ((0x100000 & context.getApplicationInfo().flags) != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        i = activitymanager.getMemoryClass();
        if (flag && android.os.Build.VERSION.SDK_INT >= 11)
        {
            j = av.a(activitymanager);
        } else
        {
            j = i;
        }
        return (j * 0x100000) / 7;
    }

    static boolean c()
    {
        return Looper.getMainLooper().getThread() == Thread.currentThread();
    }

    static boolean c(InputStream inputstream)
    {
        byte abyte0[] = new byte[12];
        int i = inputstream.read(abyte0, 0, 12);
        boolean flag = false;
        if (i == 12)
        {
            boolean flag1 = "RIFF".equals(new String(abyte0, 0, 4, "US-ASCII"));
            flag = false;
            if (flag1)
            {
                boolean flag2 = "WEBP".equals(new String(abyte0, 8, 4, "US-ASCII"));
                flag = false;
                if (flag2)
                {
                    flag = true;
                }
            }
        }
        return flag;
    }

    static boolean d(Context context)
    {
        int i = android.provider.Settings.System.getInt(context.getContentResolver(), "airplane_mode_on", 0);
        boolean flag = false;
        if (i != 0)
        {
            flag = true;
        }
        return flag;
    }

}
