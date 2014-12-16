// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.d;

import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.etermax.tools.d:
//            d, b, e

public final class a
    implements Closeable
{

    private static final Charset a = Charset.forName("UTF-8");
    private final File b;
    private final File c;
    private final File d;
    private final int e;
    private final long f;
    private final int g;
    private long h;
    private Writer i;
    private final LinkedHashMap j = new LinkedHashMap(0, 0.75F, true);
    private int k;
    private long l;
    private final ExecutorService m;
    private final Callable n = new Callable() {

        final a a;

        public Void a()
        {
label0:
            {
                synchronized (a)
                {
                    if (a.a(a) != null)
                    {
                        break label0;
                    }
                }
                return null;
            }
            a.b(a);
            if (a.c(a))
            {
                a.d(a);
                a.a(a, 0);
            }
            a1;
            JVM INSTR monitorexit ;
            return null;
            exception;
            a1;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public Object call()
        {
            return a();
        }

            
            {
                a = a.this;
                super();
            }
    };

    private a(File file, int i1, int j1, long l1)
    {
        h = 0L;
        l = 0L;
        m = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        b = file;
        e = i1;
        c = new File(file, "journal");
        d = new File(file, "journal.tmp");
        g = j1;
        f = l1;
    }

    static int a(a a1, int i1)
    {
        a1.k = i1;
        return i1;
    }

    public static a a(File file, int i1, int j1, long l1)
    {
        a a1;
        if (l1 <= 0L)
        {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (j1 <= 0)
        {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        a1 = new a(file, i1, j1, l1);
        if (!a1.c.exists())
        {
            break MISSING_BLOCK_LABEL_102;
        }
        a1.d();
        a1.e();
        a1.i = new BufferedWriter(new FileWriter(a1.c, true), 8192);
        return a1;
        IOException ioexception;
        ioexception;
        a1.c();
        file.mkdirs();
        a a2 = new a(file, i1, j1, l1);
        a2.f();
        return a2;
    }

    private b a(String s, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        d d1;
        h();
        e(s);
        d1 = (d)j.get(s);
        if (l1 == -1L) goto _L2; else goto _L1
_L1:
        if (d1 == null) goto _L4; else goto _L3
_L3:
        long l2 = com.etermax.tools.d.d.e(d1);
        if (l2 == l1) goto _L2; else goto _L4
_L4:
        b b2 = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return b2;
_L2:
        if (d1 != null) goto _L6; else goto _L5
_L5:
        d d3;
        d3 = new d(this, s);
        j.put(s, d3);
        d d2 = d3;
_L9:
        b2 = new b(this, d2);
        com.etermax.tools.d.d.a(d2, b2);
        i.write((new StringBuilder()).append("DIRTY ").append(s).append('\n').toString());
        i.flush();
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        b b1 = com.etermax.tools.d.d.a(d1);
label0:
        {
            if (b1 == null)
            {
                break label0;
            }
            b2 = null;
        }
        if (true) goto _L7; else goto _L8
_L8:
        d2 = d1;
          goto _L9
    }

    static Writer a(a a1)
    {
        return a1.i;
    }

    public static String a(InputStream inputstream)
    {
        StringBuilder stringbuilder = new StringBuilder(80);
        do
        {
            int i1 = inputstream.read();
            if (i1 == -1)
            {
                throw new EOFException();
            }
            if (i1 == 10)
            {
                int j1 = stringbuilder.length();
                if (j1 > 0 && stringbuilder.charAt(j1 - 1) == '\r')
                {
                    stringbuilder.setLength(j1 - 1);
                }
                return stringbuilder.toString();
            }
            stringbuilder.append((char)i1);
        } while (true);
    }

    static void a(a a1, b b1, boolean flag)
    {
        a1.a(b1, flag);
    }

    private void a(b b1, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        d d1;
        d1 = com.etermax.tools.d.b.a(b1);
        if (com.etermax.tools.d.d.a(d1) != b1)
        {
            throw new IllegalStateException();
        }
        break MISSING_BLOCK_LABEL_30;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        int i1 = 0;
        if (!flag) goto _L2; else goto _L1
_L1:
        boolean flag1 = com.etermax.tools.d.d.d(d1);
        i1 = 0;
        if (flag1) goto _L2; else goto _L3
_L3:
        int j1 = 0;
_L9:
        int k1 = g;
        i1 = 0;
        if (j1 >= k1) goto _L2; else goto _L4
_L4:
        if (!d1.b(j1).exists())
        {
            b1.b();
            throw new IllegalStateException((new StringBuilder()).append("edit didn't create file ").append(j1).toString());
        }
          goto _L5
_L2:
        if (i1 >= g) goto _L7; else goto _L6
_L6:
        File file = d1.b(i1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_207;
        }
        if (file.exists())
        {
            File file1 = d1.a(i1);
            file.renameTo(file1);
            long l2 = com.etermax.tools.d.d.b(d1)[i1];
            long l3 = file1.length();
            com.etermax.tools.d.d.b(d1)[i1] = l3;
            h = l3 + (h - l2);
        }
        break MISSING_BLOCK_LABEL_413;
        b(file);
        break MISSING_BLOCK_LABEL_413;
_L7:
        k = 1 + k;
        com.etermax.tools.d.d.a(d1, null);
        if (!(flag | com.etermax.tools.d.d.d(d1)))
        {
            break MISSING_BLOCK_LABEL_355;
        }
        com.etermax.tools.d.d.a(d1, true);
        i.write((new StringBuilder()).append("CLEAN ").append(com.etermax.tools.d.d.c(d1)).append(d1.a()).append('\n').toString());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_319;
        }
        long l1 = l;
        l = 1L + l1;
        com.etermax.tools.d.d.a(d1, l1);
_L8:
        if (h > f || g())
        {
            m.submit(n);
        }
        this;
        JVM INSTR monitorexit ;
        return;
        j.remove(com.etermax.tools.d.d.c(d1));
        i.write((new StringBuilder()).append("REMOVE ").append(com.etermax.tools.d.d.c(d1)).append('\n').toString());
          goto _L8
_L5:
        j1++;
          goto _L9
        i1++;
          goto _L2
    }

    public static void a(Closeable closeable)
    {
        if (closeable == null)
        {
            break MISSING_BLOCK_LABEL_10;
        }
        closeable.close();
        return;
        RuntimeException runtimeexception;
        runtimeexception;
        throw runtimeexception;
        Exception exception;
        exception;
    }

    public static void a(File file)
    {
        File afile[] = file.listFiles();
        if (afile == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("not a directory: ").append(file).toString());
        }
        int i1 = afile.length;
        for (int j1 = 0; j1 < i1; j1++)
        {
            File file1 = afile[j1];
            if (file1.isDirectory())
            {
                a(file1);
            }
            if (!file1.delete())
            {
                throw new IOException((new StringBuilder()).append("failed to delete file: ").append(file1).toString());
            }
        }

    }

    private static Object[] a(Object aobj[], int i1, int j1)
    {
        int k1 = aobj.length;
        if (i1 > j1)
        {
            throw new IllegalArgumentException();
        }
        if (i1 < 0 || i1 > k1)
        {
            throw new ArrayIndexOutOfBoundsException();
        } else
        {
            int l1 = j1 - i1;
            int i2 = Math.min(l1, k1 - i1);
            Object aobj1[] = (Object[])(Object[])Array.newInstance(((Object) (aobj)).getClass().getComponentType(), l1);
            System.arraycopy(((Object) (aobj)), i1, ((Object) (aobj1)), 0, i2);
            return aobj1;
        }
    }

    static void b(a a1)
    {
        a1.i();
    }

    private static void b(File file)
    {
        if (file.exists() && !file.delete())
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    static boolean c(a a1)
    {
        return a1.g();
    }

    private void d()
    {
        BufferedInputStream bufferedinputstream = new BufferedInputStream(new FileInputStream(c), 8192);
        Exception exception;
        String s = a(bufferedinputstream);
        String s1 = a(bufferedinputstream);
        String s2 = a(bufferedinputstream);
        String s3 = a(bufferedinputstream);
        String s4 = a(bufferedinputstream);
        if (!"libcore.io.DiskLruCache".equals(s) || !"1".equals(s1) || !Integer.toString(e).equals(s2) || !Integer.toString(g).equals(s3) || !"".equals(s4))
        {
            throw new IOException((new StringBuilder()).append("unexpected journal header: [").append(s).append(", ").append(s1).append(", ").append(s3).append(", ").append(s4).append("]").toString());
        }
        try
        {
            do
            {
                d(a(bufferedinputstream));
            } while (true);
        }
        catch (EOFException eofexception)
        {
            a(bufferedinputstream);
        }
        finally
        {
            a(bufferedinputstream);
            throw exception;
        }
        return;
    }

    static void d(a a1)
    {
        a1.f();
    }

    private void d(String s)
    {
        String as[] = s.split(" ");
        if (as.length < 2)
        {
            throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
        }
        String s1 = as[1];
        if (as[0].equals("REMOVE") && as.length == 2)
        {
            j.remove(s1);
        } else
        {
            d d1 = (d)j.get(s1);
            d d3;
            if (d1 == null)
            {
                d d2 = new d(this, s1);
                j.put(s1, d2);
                d3 = d2;
            } else
            {
                d3 = d1;
            }
            if (as[0].equals("CLEAN") && as.length == 2 + g)
            {
                com.etermax.tools.d.d.a(d3, true);
                com.etermax.tools.d.d.a(d3, null);
                com.etermax.tools.d.d.a(d3, (String[])a(as, 2, as.length));
                return;
            }
            if (as[0].equals("DIRTY") && as.length == 2)
            {
                com.etermax.tools.d.d.a(d3, new b(this, d3));
                return;
            }
            if (!as[0].equals("READ") || as.length != 2)
            {
                throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
            }
        }
    }

    static int e(a a1)
    {
        return a1.g;
    }

    private void e()
    {
        b(d);
        for (Iterator iterator = j.values().iterator(); iterator.hasNext();)
        {
            d d1 = (d)iterator.next();
            if (com.etermax.tools.d.d.a(d1) == null)
            {
                int j1 = 0;
                while (j1 < g) 
                {
                    h = h + com.etermax.tools.d.d.b(d1)[j1];
                    j1++;
                }
            } else
            {
                com.etermax.tools.d.d.a(d1, null);
                for (int i1 = 0; i1 < g; i1++)
                {
                    b(d1.a(i1));
                    b(d1.b(i1));
                }

                iterator.remove();
            }
        }

    }

    private void e(String s)
    {
        if (s.contains(" ") || s.contains("\n") || s.contains("\r"))
        {
            throw new IllegalArgumentException((new StringBuilder()).append("keys must not contain spaces or newlines: \"").append(s).append("\"").toString());
        } else
        {
            return;
        }
    }

    static File f(a a1)
    {
        return a1.b;
    }

    private void f()
    {
        this;
        JVM INSTR monitorenter ;
        BufferedWriter bufferedwriter;
        Iterator iterator;
        if (i != null)
        {
            i.close();
        }
        bufferedwriter = new BufferedWriter(new FileWriter(d), 8192);
        bufferedwriter.write("libcore.io.DiskLruCache");
        bufferedwriter.write("\n");
        bufferedwriter.write("1");
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(e));
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(g));
        bufferedwriter.write("\n");
        bufferedwriter.write("\n");
        iterator = j.values().iterator();
_L1:
        d d1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_234;
            }
            d1 = (d)iterator.next();
            if (com.etermax.tools.d.d.a(d1) == null)
            {
                break MISSING_BLOCK_LABEL_190;
            }
            bufferedwriter.write((new StringBuilder()).append("DIRTY ").append(com.etermax.tools.d.d.c(d1)).append('\n').toString());
        } while (true);
        Exception exception;
        exception;
        throw exception;
        bufferedwriter.write((new StringBuilder()).append("CLEAN ").append(com.etermax.tools.d.d.c(d1)).append(d1.a()).append('\n').toString());
          goto _L1
        bufferedwriter.close();
        d.renameTo(c);
        i = new BufferedWriter(new FileWriter(c, true), 8192);
        this;
        JVM INSTR monitorexit ;
    }

    private boolean g()
    {
        return k >= 2000 && k >= j.size();
    }

    private void h()
    {
        if (i == null)
        {
            throw new IllegalStateException("cache is closed");
        } else
        {
            return;
        }
    }

    private void i()
    {
        while (h > f) 
        {
            c((String)((java.util.Map.Entry)j.entrySet().iterator().next()).getKey());
        }
    }

    public e a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        d d1;
        h();
        e(s);
        d1 = (d)j.get(s);
        if (d1 != null) goto _L2; else goto _L1
_L1:
        e e1 = null;
_L4:
        this;
        JVM INSTR monitorexit ;
        return e1;
_L2:
        if (!com.etermax.tools.d.d.d(d1))
        {
            e1 = null;
            continue; /* Loop/switch isn't completed */
        }
        InputStream ainputstream[] = new InputStream[g];
        Exception exception;
        int i1 = 0;
        do
        {
            try
            {
                if (i1 >= g)
                {
                    break;
                }
                ainputstream[i1] = new FileInputStream(d1.a(i1));
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                e1 = null;
                continue; /* Loop/switch isn't completed */
            }
            finally
            {
                this;
            }
            i1++;
        } while (true);
        k = 1 + k;
        i.append((new StringBuilder()).append("READ ").append(s).append('\n').toString());
        if (g())
        {
            m.submit(n);
        }
        e1 = new e(this, s, com.etermax.tools.d.d.e(d1), ainputstream);
        if (true) goto _L4; else goto _L3
_L3:
        throw exception;
    }

    public boolean a()
    {
        return i == null;
    }

    public b b(String s)
    {
        return a(s, -1L);
    }

    public void b()
    {
        this;
        JVM INSTR monitorenter ;
        h();
        i();
        i.flush();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void c()
    {
        close();
        a(b);
    }

    public boolean c(String s)
    {
        this;
        JVM INSTR monitorenter ;
        d d1;
        h();
        e(s);
        d1 = (d)j.get(s);
        if (d1 == null) goto _L2; else goto _L1
_L1:
        b b1 = com.etermax.tools.d.d.a(d1);
        int i1 = 0;
        if (b1 == null) goto _L3; else goto _L2
_L2:
        boolean flag = false;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L5:
        h = h - com.etermax.tools.d.d.b(d1)[i1];
        com.etermax.tools.d.d.b(d1)[i1] = 0L;
        i1++;
_L3:
        File file;
        if (i1 >= g)
        {
            break MISSING_BLOCK_LABEL_135;
        }
        file = d1.a(i1);
        if (file.delete()) goto _L5; else goto _L4
_L4:
        throw new IOException((new StringBuilder()).append("failed to delete ").append(file).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        k = 1 + k;
        i.append((new StringBuilder()).append("REMOVE ").append(s).append('\n').toString());
        j.remove(s);
        if (g())
        {
            m.submit(n);
        }
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        Writer writer = i;
        if (writer != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Iterator iterator = (new ArrayList(j.values())).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            d d1 = (d)iterator.next();
            if (com.etermax.tools.d.d.a(d1) != null)
            {
                com.etermax.tools.d.d.a(d1).b();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        throw exception;
        i();
        i.close();
        i = null;
          goto _L1
    }

}
