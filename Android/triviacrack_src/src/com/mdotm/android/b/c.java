// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mdotm.android.b;

import android.content.Context;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import android.util.Log;
import com.mdotm.android.a.a;
import com.mdotm.android.e.d;
import com.mdotm.android.e.e;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.mdotm.android.b:
//            d

public class c
{

    public static String b = "MdotMTempCache";
    public static String c = "PermanentCache";
    public static String d = "BannerTemp";
    public static String e = "InterstitialTemp";
    public static int f = 1;
    public static int g = 2;
    public static int h = 3;
    public static int i = 4;
    private static boolean j = false;
    private static c k = null;
    private static int p;
    private static boolean q = false;
    com.mdotm.android.c.e a;
    private int l;
    private long m;
    private int n;
    private int o;
    private final int r = 1;
    private final int s = 1;
    private final int t = 30;
    private BlockingQueue u;
    private ThreadPoolExecutor v;
    private final int w = 200;
    private Context x;
    private Handler y;

    private c(Context context, Handler handler)
    {
        l = 10;
        m = 0x13f1407L;
        n = 0x7ed147;
        o = 0x4f83e7;
        u = new ArrayBlockingQueue(1);
        y = handler;
        x = context;
        d();
    }

    static int a()
    {
        return p;
    }

    private int a(File file, int i1)
    {
        Log.d("bla", (new StringBuilder("bla manage cache")).append(file).toString());
        break MISSING_BLOCK_LABEL_22;
        while (true) 
        {
            do
            {
                return i1;
            } while (file == null || !file.exists() || !file.isDirectory());
            String as[] = file.list();
            if (as != null)
            {
                int j1 = 0;
                while (j1 < as.length) 
                {
                    File file1 = new File(file, as[j1]);
                    if (file1.isDirectory())
                    {
                        i1 = a(file1, i1);
                    } else
                    {
                        i1 = (int)((long)i1 + file1.length());
                    }
                    j1++;
                }
            }
        }
    }

    static Context a(c c1)
    {
        return c1.x;
    }

    public static c a(Context context, Handler handler)
    {
        if (k == null)
        {
            com.mdotm.android.e.d.b("", "**Creating new manager");
            k = new c(context, handler);
        } else
        {
            com.mdotm.android.e.d.b("", "**Using existing manager");
        }
        return k;
    }

    private void a(com.mdotm.android.d.a a1)
    {
        q = b();
        if (!j) goto _L2; else goto _L1
_L1:
        String s1;
        File file2;
        p = com.mdotm.android.a.a.a(x).b();
        com.mdotm.android.e.d.b(this, (new StringBuilder("cache location is ")).append(p).toString());
        int i1 = p;
        s1 = null;
        if (i1 != 0)
        {
            e();
            boolean flag4;
            if (p == 2)
            {
                s1 = (new StringBuilder(String.valueOf(x.getCacheDir().getAbsolutePath()))).append("/").append(b).append("/").append(c).toString();
                a(s1);
            } else
            if (q)
            {
                s1 = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(b).append("/").append(c).toString();
                a(s1);
            } else
            {
                com.mdotm.android.e.d.b(this, (new StringBuilder("sd card exist is ")).append(q).append(" clearing tables").toString());
                com.mdotm.android.a.a.a(x).b(x);
                p = 0;
                s1 = null;
            }
        }
        if (p == 0) goto _L4; else goto _L3
_L3:
        if (p != 1) goto _L6; else goto _L5
_L5:
        flag4 = a(p);
        com.mdotm.android.e.d.b(this, (new StringBuilder("location is sd card calculating available memory is available ")).append(flag4).toString());
        if (flag4) goto _L8; else goto _L7
_L7:
        file2 = new File(s1);
        if (file2.exists()) goto _L10; else goto _L9
_L9:
        com.mdotm.android.e.d.b(this, "Cache folder doesn't exist on sd card");
        com.mdotm.android.a.a.a(x).b(x);
        if (!a(p))
        {
            p = 2;
            if (!a(p))
            {
                p = 0;
            }
        }
_L8:
        if (p == 0) goto _L12; else goto _L11
_L11:
        boolean flag;
        File file;
        boolean flag1;
        boolean flag2;
        boolean flag3;
        File file1;
        if (p == 2)
        {
            file = new File((new StringBuilder(String.valueOf(x.getCacheDir().getAbsolutePath()))).append("/").append(b).append("/").append(c).toString());
        } else
        {
            file = new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(b).append("/").append(c).toString());
        }
        if (!file.mkdirs())
        {
            if (!file.exists())
            {
                if (p == 1)
                {
                    p = 2;
                    file = new File((new StringBuilder(String.valueOf(x.getCacheDir().getAbsolutePath()))).append("/").append(b).append("/").append(c).toString());
                    com.mdotm.android.e.d.b(this, "unable to create folder on sd card so creating on internal memory");
                    file.mkdirs();
                }
            } else
            {
                com.mdotm.android.e.d.b(this, "File created ");
            }
        }
        if (!file.exists()) goto _L14; else goto _L13
_L13:
        if (p != 2) goto _L16; else goto _L15
_L15:
        com.mdotm.android.a.a.a(x).a(2);
_L14:
        com.mdotm.android.e.d.b(this, (new StringBuilder("enabled cache location is ")).append(p).append(" file path ").append(file.getAbsolutePath()).toString());
        return;
_L10:
        a(file2.listFiles());
        com.mdotm.android.a.a.a(x).b(x);
        if (!a(p))
        {
            p = 2;
            if (!a(p))
            {
                p = 0;
            }
        }
        continue; /* Loop/switch isn't completed */
_L6:
        if (p == 2)
        {
            flag3 = a(p);
            com.mdotm.android.e.d.b(this, (new StringBuilder("location is internal calculating available memory is available ")).append(flag3).toString());
            if (!flag3)
            {
                file1 = new File(s1);
                if (!file1.exists())
                {
                    com.mdotm.android.e.d.b(this, "Cache folder doesn't exist on sd card");
                    com.mdotm.android.a.a.a(x).b(x);
                    if (!a(p))
                    {
                        p = 0;
                    }
                } else
                {
                    a(file1.listFiles());
                    com.mdotm.android.a.a.a(x).b(x);
                    if (!a(p))
                    {
                        p = 0;
                    }
                }
            }
        }
        continue; /* Loop/switch isn't completed */
_L4:
        com.mdotm.android.e.d.b(this, "Cache is not there initializing the cache");
        if (q)
        {
            com.mdotm.android.e.d.b(this, (new StringBuilder("sd card exist is ")).append(q).toString());
            flag1 = a(1);
            com.mdotm.android.e.d.b(this, (new StringBuilder("location is sd card calculating available memory is available ")).append(flag1).toString());
            if (flag1)
            {
                p = 1;
            } else
            {
                flag2 = a(2);
                com.mdotm.android.e.d.b(this, (new StringBuilder("memory is not available on sd card checking on internal memory. is available ")).append(flag2).toString());
                if (flag2)
                {
                    p = 2;
                } else
                {
                    p = 0;
                }
            }
        } else
        {
            flag = a(2);
            com.mdotm.android.e.d.b(this, (new StringBuilder(" sd card not there checking on internal memory. is available ")).append(flag).toString());
            if (flag)
            {
                p = 2;
            } else
            {
                p = 0;
            }
        }
        continue; /* Loop/switch isn't completed */
_L16:
        if (p == 1)
        {
            com.mdotm.android.a.a.a(x).a(1);
        }
        if (true) goto _L14; else goto _L12
_L12:
        b(a1);
        a1.a(false);
        return;
_L2:
        b(a1);
        return;
        if (true) goto _L8; else goto _L17
_L17:
    }

    private void a(File file)
    {
        int i1;
        i1 = 0;
        com.mdotm.android.e.d.b(this, (new StringBuilder("file count ")).append(file.list().length).toString());
        if (file.list().length < l) goto _L2; else goto _L1
_L1:
        File afile[];
        long al[];
        int j1;
        afile = file.listFiles();
        al = new long[afile.length];
        j1 = 0;
_L6:
        if (j1 < afile.length) goto _L4; else goto _L3
_L3:
        int k1;
        try
        {
            Arrays.sort(al);
            k1 = afile.length;
        }
        catch (Exception exception1)
        {
            exception1.printStackTrace();
            return;
        }
_L7:
        if (i1 < k1) goto _L5; else goto _L2
_L2:
        return;
_L4:
        String s1 = afile[j1].getName();
        try
        {
            al[j1] = Long.parseLong(s1.substring(1 + s1.lastIndexOf("-")));
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            com.mdotm.android.e.d.a(this, (new StringBuilder("Exception while checking file cached time ")).append(exception.getMessage()).toString());
        }
        j1++;
          goto _L6
_L5:
        File file1 = afile[i1];
        com.mdotm.android.e.d.b(this, (new StringBuilder("searching file name ")).append(file1.getName()).toString());
        if (file1.getName().endsWith((new StringBuilder()).append(al[0]).toString()))
        {
            com.mdotm.android.e.d.b(this, (new StringBuilder("deleting file ")).append(file1.getAbsolutePath()).toString());
            file1.delete();
            return;
        }
        i1++;
          goto _L7
    }

    private void a(File afile[])
    {
        com.mdotm.android.e.d.b(this, "Clearing cached file");
        if (afile == null) goto _L2; else goto _L1
_L1:
        int i1;
        int j1;
        i1 = afile.length;
        j1 = 0;
_L5:
        if (j1 < i1) goto _L3; else goto _L2
_L2:
        return;
_L3:
        File file = afile[j1];
        if (file.isDirectory())
        {
            a(file.listFiles());
            file.delete();
        } else
        {
            file.delete();
        }
        j1++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private boolean a(int i1)
    {
        long l1;
        if (i1 == 2)
        {
            l1 = g();
        } else
        {
            l1 = h();
        }
        return l1 > m;
    }

    private boolean a(String s1)
    {
        String as[];
        String as1[];
        File afile[];
        File file = new File(s1);
        if (!file.exists())
        {
            com.mdotm.android.a.a.a(x).b(x);
            p = 0;
            return false;
        }
        as = com.mdotm.android.a.a.a(x).c();
        as1 = com.mdotm.android.a.a.a(x).d();
        afile = file.listFiles();
        if (as == null || afile == null) goto _L2; else goto _L1
_L1:
        String s2;
        String as2[];
        int k1;
        int i3;
        int i1 = 0;
        if (as != null)
        {
            i1 = 0 + as.length;
        }
        if (as1 != null)
        {
            i1 += as1.length;
        }
        if (i1 != afile.length)
        {
            com.mdotm.android.a.a.a(x).b(x);
            com.mdotm.android.e.d.b(this, "file count missmatch clearing");
            a(afile);
            p = 0;
            return false;
        }
        int j1;
        int l2;
        if (p == 2)
        {
            s2 = (new StringBuilder(String.valueOf(x.getCacheDir().getAbsolutePath()))).append("/").append(b).append("/").append(c).append("/").toString();
        } else
        {
            s2 = (new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(b).append("/").append(c).append("/").toString();
        }
        if (as == null) goto _L4; else goto _L3
_L3:
        l2 = as.length;
        i3 = 0;
_L22:
        if (i3 < l2) goto _L5; else goto _L4
_L4:
        as2 = com.mdotm.android.a.a.a(x).d();
        if (as2 == null) goto _L7; else goto _L6
_L6:
        j1 = as2.length;
        k1 = 0;
_L18:
        if (k1 < j1) goto _L8; else goto _L7
_L7:
        return true;
_L5:
        String s6 = as[i3];
        if ((new File((new StringBuilder(String.valueOf(s2))).append(s6).toString())).exists()) goto _L10; else goto _L9
_L9:
        String as5[];
        com.mdotm.android.a.a.a(x).b(s6);
        as5 = com.mdotm.android.a.a.a(x).a(s6);
        if (as5 == null) goto _L10; else goto _L11
_L11:
        int j3;
        int k3;
        j3 = as5.length;
        k3 = 0;
_L13:
        if (k3 < j3) goto _L12; else goto _L10
_L10:
        i3++;
        continue; /* Loop/switch isn't completed */
_L12:
        String s7 = as5[k3];
        try
        {
            com.mdotm.android.a.a.a(x).a(s7, x, p, s6);
        }
        catch (Exception exception1)
        {
            com.mdotm.android.e.d.b(this, "Exception while delting the resources");
        }
        k3++;
        if (true) goto _L13; else goto _L8
_L8:
        String s3 = as2[k1];
        if ((new File((new StringBuilder(String.valueOf(s2))).append(s3).toString())).exists()) goto _L15; else goto _L14
_L14:
        String as3[] = com.mdotm.android.a.a.a(x).c(s3);
        if (as3 == null) goto _L15; else goto _L16
_L16:
        int l1;
        int i2;
        l1 = as3.length;
        i2 = 0;
_L19:
        if (i2 < l1) goto _L17; else goto _L15
_L15:
        k1++;
          goto _L18
_L17:
        String s4;
        String as4[];
        int j2;
        int k2;
        s4 = as3[i2];
        File file1 = new File((new StringBuilder(String.valueOf(s2))).append(s4).toString());
        if (file1.exists())
        {
            file1.delete();
        }
        com.mdotm.android.a.a.a(x).b(s4);
        as4 = com.mdotm.android.a.a.a(x).a(s4);
        j2 = as4.length;
        k2 = 0;
_L20:
label0:
        {
            if (k2 < j2)
            {
                break label0;
            }
            i2++;
        }
          goto _L19
        String s5 = as4[k2];
        try
        {
            com.mdotm.android.a.a.a(x).a(s5, x, p, s4);
        }
        catch (Exception exception)
        {
            com.mdotm.android.e.d.b(this, "Exception while delting the resources");
        }
        k2++;
          goto _L20
_L2:
        com.mdotm.android.a.a.a(x).b(x);
        a(afile);
        p = 0;
        return false;
        if (true) goto _L22; else goto _L21
_L21:
    }

    static Handler b(c c1)
    {
        return c1.y;
    }

    private void b(com.mdotm.android.d.a a1)
    {
        if (!a1.d()) goto _L2; else goto _L1
_L1:
        File file;
        if (q)
        {
            file = new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(b).append("/").append(e).toString());
            p = 1;
        } else
        {
            file = new File((new StringBuilder()).append(x.getCacheDir()).append("/").append(b).append("/").append(e).toString());
            p = 2;
        }
        if (!file.mkdirs())
        {
            if (!file.exists())
            {
                if (p == 1)
                {
                    p = 2;
                    file = new File((new StringBuilder(String.valueOf(x.getCacheDir().getAbsolutePath()))).append("/").append(b).append("/").append(e).toString());
                    com.mdotm.android.e.d.b(this, "unable to create folder on sd card so creating on internal memory");
                    file.mkdirs();
                }
            } else
            {
                com.mdotm.android.e.d.b(this, "File created ");
            }
        }
_L4:
        if (file.exists())
        {
            a(file);
        }
        com.mdotm.android.e.d.b(this, (new StringBuilder("temp cache location is ")).append(p).append(" file path ").append(file.getAbsolutePath()).toString());
        return;
_L2:
        if (q)
        {
            file = new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(b).append("/").append(d).toString());
            p = 1;
        } else
        {
            file = new File((new StringBuilder()).append(x.getCacheDir()).append("/").append(b).append("/").append(d).toString());
            p = 2;
        }
        if (!file.mkdirs())
        {
            if (!file.exists())
            {
                if (p == 1)
                {
                    p = 2;
                    file = new File((new StringBuilder(String.valueOf(x.getCacheDir().getAbsolutePath()))).append("/").append(b).append("/").append(d).toString());
                    com.mdotm.android.e.d.b(this, "unable to create folder on sd card so creating on internal memory");
                    file.mkdirs();
                }
            } else
            {
                com.mdotm.android.e.d.b(this, "File created ");
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean b()
    {
        String s1 = Environment.getExternalStorageState();
        if ("mounted".equals(s1))
        {
            boolean flag = c();
            if (flag)
            {
                com.mdotm.android.e.d.b(this, "SD card exist and writable");
                return flag;
            } else
            {
                com.mdotm.android.e.d.b(this, "SD card exist and not permission");
                return flag;
            }
        }
        if ("mounted_ro".equals(s1))
        {
            com.mdotm.android.e.d.b(this, "SD card exist but not writable");
            return false;
        } else
        {
            com.mdotm.android.e.d.b(this, "SD card not exist");
            return false;
        }
    }

    private boolean c()
    {
        return x.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }

    private void d()
    {
        v = new ThreadPoolExecutor(1, 1, 30L, TimeUnit.SECONDS, u);
    }

    private void e()
    {
        com.mdotm.android.e.d.b(this, "manage cache");
        if (p != 0)
        {
            int i1;
            int j1;
            if (p == 2)
            {
                i1 = a(new File((new StringBuilder(String.valueOf(x.getCacheDir().getAbsolutePath()))).append("/").append(b).append("/").append(c).toString()), 0);
                j1 = o;
                com.mdotm.android.e.d.b(this, (new StringBuilder("cache size is ")).append(i1).append(" path ").append(x.getCacheDir().getAbsolutePath()).append("/").append(b).append("/").append(c).toString());
            } else
            {
                i1 = a(new File((new StringBuilder(String.valueOf(Environment.getExternalStorageDirectory().getAbsolutePath()))).append("/").append(b).append("/").append(c).toString()), 0);
                j1 = n;
                com.mdotm.android.e.d.b(this, (new StringBuilder(" manage cache size is ")).append(i1).append(" path ").append(Environment.getExternalStorageDirectory().getAbsolutePath()).append("/").append(b).append("/").append(c).append(" max cache size").append(j1).toString());
            }
            if (i1 > j1)
            {
                if (f())
                {
                    e();
                }
                com.mdotm.android.e.d.b(this, "manage cache loop");
            }
        }
    }

    private boolean f()
    {
        return com.mdotm.android.a.a.a(x).a(x, p);
    }

    private long g()
    {
        StatFs statfs = new StatFs(Environment.getDownloadCacheDirectory().getPath());
        return (long)statfs.getBlockSize() * (long)statfs.getAvailableBlocks();
    }

    private long h()
    {
        if (q)
        {
            StatFs statfs = new StatFs(Environment.getExternalStorageDirectory().getPath());
            return (long)statfs.getBlockSize() * (long)statfs.getAvailableBlocks();
        } else
        {
            return 0L;
        }
    }

    public void a(com.mdotm.android.c.e e1)
    {
        a = e1;
    }

    public void a(com.mdotm.android.d.a a1, long l1)
    {
        com.mdotm.android.e.d.b(this, "** Send request");
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_62;
        }
        j = a1.c();
        a(a1);
        if (v != null)
        {
            v.execute(new com.mdotm.android.b.d(this, (new e(x)).a(a1), a1, l1));
        }
        return;
        RejectedExecutionException rejectedexecutionexception;
        rejectedexecutionexception;
        com.mdotm.android.e.d.b(this, "**Reject Exception");
        Message message1 = new Message();
        message1.obj = Long.valueOf(l1);
        y.sendMessage(message1);
        return;
        Exception exception;
        exception;
        com.mdotm.android.e.d.a(this, exception.getMessage());
        Message message = new Message();
        message.obj = Long.valueOf(l1);
        y.sendMessage(message);
        return;
    }

}
