// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.common;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.PrintStream;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.mopub.common:
//            e, DiskLruCacheUtil, f

public final class DiskLruCache
    implements Closeable
{

    static final Pattern a = Pattern.compile("[a-z0-9_-]{1,64}");
    private static final OutputStream p = new OutputStream() {

        public void write(int i1)
        {
        }

    };
    final ThreadPoolExecutor b;
    private final File c;
    private final File d;
    private final File e;
    private final File f;
    private final int g;
    private long h;
    private final int i;
    private long j;
    private Writer k;
    private final LinkedHashMap l = new LinkedHashMap(0, 0.75F, true);
    private int m;
    private long n;
    private final Callable o = new Callable() {

        final DiskLruCache a;

        public volatile Object call()
        {
            return call();
        }

        public Void call()
        {
label0:
            {
                synchronized (a)
                {
                    if (DiskLruCache.a(a) != null)
                    {
                        break label0;
                    }
                }
                return null;
            }
            DiskLruCache.b(a);
            if (DiskLruCache.c(a))
            {
                DiskLruCache.d(a);
                DiskLruCache.a(a, 0);
            }
            disklrucache;
            JVM INSTR monitorexit ;
            return null;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
        }

            
            {
                a = DiskLruCache.this;
                super();
            }
    };

    private DiskLruCache(File file, int i1, int j1, long l1)
    {
        j = 0L;
        n = 0L;
        b = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        c = file;
        g = i1;
        d = new File(file, "journal");
        e = new File(file, "journal.tmp");
        f = new File(file, "journal.bkp");
        i = j1;
        h = l1;
    }

    static int a(DiskLruCache disklrucache, int i1)
    {
        disklrucache.m = i1;
        return i1;
    }

    static Editor a(DiskLruCache disklrucache, String s, long l1)
    {
        return disklrucache.a(s, l1);
    }

    private Editor a(String s, long l1)
    {
        this;
        JVM INSTR monitorenter ;
        e e1;
        f();
        b(s);
        e1 = (e)l.get(s);
        if (l1 == -1L) goto _L2; else goto _L1
_L1:
        if (e1 == null) goto _L4; else goto _L3
_L3:
        long l2 = com.mopub.common.e.e(e1);
        if (l2 == l1) goto _L2; else goto _L4
_L4:
        Editor editor1 = null;
_L7:
        this;
        JVM INSTR monitorexit ;
        return editor1;
_L2:
        if (e1 != null) goto _L6; else goto _L5
_L5:
        e e3;
        e3 = new e(this, s);
        l.put(s, e3);
        e e2 = e3;
_L9:
        editor1 = new Editor(e2);
        com.mopub.common.e.a(e2, editor1);
        k.write((new StringBuilder()).append("DIRTY ").append(s).append('\n').toString());
        k.flush();
          goto _L7
        Exception exception;
        exception;
        throw exception;
_L6:
        Editor editor = com.mopub.common.e.a(e1);
label0:
        {
            if (editor == null)
            {
                break label0;
            }
            editor1 = null;
        }
        if (true) goto _L7; else goto _L8
_L8:
        e2 = e1;
          goto _L9
    }

    static OutputStream a()
    {
        return p;
    }

    static Writer a(DiskLruCache disklrucache)
    {
        return disklrucache.k;
    }

    static String a(InputStream inputstream)
    {
        return b(inputstream);
    }

    private void a(Editor editor, boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        e e1;
        e1 = Editor.a(editor);
        if (com.mopub.common.e.a(e1) != editor)
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
        boolean flag1 = com.mopub.common.e.d(e1);
        i1 = 0;
        if (flag1) goto _L2; else goto _L3
_L3:
        int j1 = 0;
_L7:
        int k1 = i;
        i1 = 0;
        if (j1 >= k1) goto _L2; else goto _L4
_L4:
        if (!Editor.b(editor)[j1])
        {
            editor.abort();
            throw new IllegalStateException((new StringBuilder()).append("Newly created entry didn't create value for index ").append(j1).toString());
        }
        if (e1.getDirtyFile(j1).exists()) goto _L6; else goto _L5
_L5:
        editor.abort();
_L8:
        this;
        JVM INSTR monitorexit ;
        return;
_L6:
        j1++;
          goto _L7
_L2:
        long l1;
        File file;
        File file1;
        long l2;
        long l3;
        for (; i1 >= i; i1++)
        {
            break MISSING_BLOCK_LABEL_238;
        }

        file = e1.getDirtyFile(i1);
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_230;
        }
        if (file.exists())
        {
            file1 = e1.getCleanFile(i1);
            file.renameTo(file1);
            l2 = com.mopub.common.e.b(e1)[i1];
            l3 = file1.length();
            com.mopub.common.e.b(e1)[i1] = l3;
            j = l3 + (j - l2);
        }
        break MISSING_BLOCK_LABEL_434;
        a(file);
        break MISSING_BLOCK_LABEL_434;
        m = 1 + m;
        com.mopub.common.e.a(e1, null);
        if (!(flag | com.mopub.common.e.d(e1)))
        {
            break MISSING_BLOCK_LABEL_382;
        }
        com.mopub.common.e.a(e1, true);
        k.write((new StringBuilder()).append("CLEAN ").append(com.mopub.common.e.c(e1)).append(e1.getLengths()).append('\n').toString());
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_341;
        }
        l1 = n;
        n = 1L + l1;
        com.mopub.common.e.a(e1, l1);
_L9:
        k.flush();
        if (j > h || e())
        {
            b.submit(o);
        }
          goto _L8
        l.remove(com.mopub.common.e.c(e1));
        k.write((new StringBuilder()).append("REMOVE ").append(com.mopub.common.e.c(e1)).append('\n').toString());
          goto _L9
    }

    static void a(DiskLruCache disklrucache, Editor editor, boolean flag)
    {
        disklrucache.a(editor, flag);
    }

    private static void a(File file)
    {
        if (file.exists() && !file.delete())
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    private static void a(File file, File file1, boolean flag)
    {
        if (flag)
        {
            a(file1);
        }
        if (!file.renameTo(file1))
        {
            throw new IOException();
        } else
        {
            return;
        }
    }

    private void a(String s)
    {
        int i1;
        int j1;
        int k1;
        i1 = s.indexOf(' ');
        if (i1 == -1)
        {
            throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
        }
        j1 = i1 + 1;
        k1 = s.indexOf(' ', j1);
        if (k1 != -1) goto _L2; else goto _L1
_L1:
        String s2;
        s2 = s.substring(j1);
        if (i1 != "REMOVE".length() || !s.startsWith("REMOVE"))
        {
            break MISSING_BLOCK_LABEL_312;
        }
        l.remove(s2);
_L4:
        return;
_L2:
        String s1 = s.substring(j1, k1);
_L5:
        e e1 = (e)l.get(s1);
        if (e1 == null)
        {
            e1 = new e(this, s1);
            l.put(s1, e1);
        }
        if (k1 != -1 && i1 == "CLEAN".length() && s.startsWith("CLEAN"))
        {
            String as[] = s.substring(k1 + 1).split(" ");
            com.mopub.common.e.a(e1, true);
            com.mopub.common.e.a(e1, null);
            com.mopub.common.e.a(e1, as);
            return;
        }
        if (k1 == -1 && i1 == "DIRTY".length() && s.startsWith("DIRTY"))
        {
            com.mopub.common.e.a(e1, new Editor(e1));
            return;
        }
        if (k1 == -1 && i1 == "READ".length() && s.startsWith("READ")) goto _L4; else goto _L3
_L3:
        throw new IOException((new StringBuilder()).append("unexpected journal line: ").append(s).toString());
        s1 = s2;
          goto _L5
    }

    private static String b(InputStream inputstream)
    {
        return DiskLruCacheUtil.a(new InputStreamReader(inputstream, DiskLruCacheUtil.b));
    }

    private void b()
    {
        f f1 = new f(new FileInputStream(d), DiskLruCacheUtil.a);
        String s = f1.readLine();
        String s1 = f1.readLine();
        String s2 = f1.readLine();
        String s3 = f1.readLine();
        String s4 = f1.readLine();
        if (!"libcore.io.DiskLruCache".equals(s) || !"1".equals(s1) || !Integer.toString(g).equals(s2) || !Integer.toString(i).equals(s3) || !"".equals(s4))
        {
            throw new IOException((new StringBuilder()).append("unexpected journal header: [").append(s).append(", ").append(s1).append(", ").append(s3).append(", ").append(s4).append("]").toString());
        }
        break MISSING_BLOCK_LABEL_187;
        Exception exception;
        exception;
        DiskLruCacheUtil.a(f1);
        throw exception;
        int i1 = 0;
_L2:
        a(f1.readLine());
        i1++;
        if (true) goto _L2; else goto _L1
_L1:
        EOFException eofexception;
        eofexception;
        m = i1 - l.size();
        DiskLruCacheUtil.a(f1);
        return;
    }

    static void b(DiskLruCache disklrucache)
    {
        disklrucache.g();
    }

    private void b(String s)
    {
        if (!a.matcher(s).matches())
        {
            throw new IllegalArgumentException((new StringBuilder()).append("keys must match regex [a-z0-9_-]{1,64}: \"").append(s).append("\"").toString());
        } else
        {
            return;
        }
    }

    private void c()
    {
        a(e);
        for (Iterator iterator = l.values().iterator(); iterator.hasNext();)
        {
            e e1 = (e)iterator.next();
            if (com.mopub.common.e.a(e1) == null)
            {
                int j1 = 0;
                while (j1 < i) 
                {
                    j = j + com.mopub.common.e.b(e1)[j1];
                    j1++;
                }
            } else
            {
                com.mopub.common.e.a(e1, null);
                for (int i1 = 0; i1 < i; i1++)
                {
                    a(e1.getCleanFile(i1));
                    a(e1.getDirtyFile(i1));
                }

                iterator.remove();
            }
        }

    }

    static boolean c(DiskLruCache disklrucache)
    {
        return disklrucache.e();
    }

    private void d()
    {
        this;
        JVM INSTR monitorenter ;
        BufferedWriter bufferedwriter;
        if (k != null)
        {
            k.close();
        }
        bufferedwriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(e), DiskLruCacheUtil.a));
        Iterator iterator;
        bufferedwriter.write("libcore.io.DiskLruCache");
        bufferedwriter.write("\n");
        bufferedwriter.write("1");
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(g));
        bufferedwriter.write("\n");
        bufferedwriter.write(Integer.toString(i));
        bufferedwriter.write("\n");
        bufferedwriter.write("\n");
        iterator = l.values().iterator();
_L1:
        e e1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_250;
            }
            e1 = (e)iterator.next();
            if (com.mopub.common.e.a(e1) == null)
            {
                break MISSING_BLOCK_LABEL_207;
            }
            bufferedwriter.write((new StringBuilder()).append("DIRTY ").append(com.mopub.common.e.c(e1)).append('\n').toString());
        } while (true);
        Exception exception1;
        exception1;
        bufferedwriter.close();
        throw exception1;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        bufferedwriter.write((new StringBuilder()).append("CLEAN ").append(com.mopub.common.e.c(e1)).append(e1.getLengths()).append('\n').toString());
          goto _L1
        bufferedwriter.close();
        if (d.exists())
        {
            a(d, f, true);
        }
        a(e, d, false);
        f.delete();
        k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(d, true), DiskLruCacheUtil.a));
        this;
        JVM INSTR monitorexit ;
    }

    static void d(DiskLruCache disklrucache)
    {
        disklrucache.d();
    }

    static int e(DiskLruCache disklrucache)
    {
        return disklrucache.i;
    }

    private boolean e()
    {
        return m >= 2000 && m >= l.size();
    }

    static File f(DiskLruCache disklrucache)
    {
        return disklrucache.c;
    }

    private void f()
    {
        if (k == null)
        {
            throw new IllegalStateException("cache is closed");
        } else
        {
            return;
        }
    }

    private void g()
    {
        while (j > h) 
        {
            remove((String)((java.util.Map.Entry)l.entrySet().iterator().next()).getKey());
        }
    }

    public static DiskLruCache open(File file, int i1, int j1, long l1)
    {
        DiskLruCache disklrucache;
        if (l1 <= 0L)
        {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (j1 <= 0)
        {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file1 = new File(file, "journal.bkp");
        if (file1.exists())
        {
            File file2 = new File(file, "journal");
            if (file2.exists())
            {
                file1.delete();
            } else
            {
                a(file1, file2, false);
            }
        }
        disklrucache = new DiskLruCache(file, i1, j1, l1);
        if (!disklrucache.d.exists())
        {
            break MISSING_BLOCK_LABEL_214;
        }
        disklrucache.b();
        disklrucache.c();
        disklrucache.k = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(disklrucache.d, true), DiskLruCacheUtil.a));
        return disklrucache;
        IOException ioexception;
        ioexception;
        System.out.println((new StringBuilder()).append("DiskLruCache ").append(file).append(" is corrupt: ").append(ioexception.getMessage()).append(", removing").toString());
        disklrucache.delete();
        file.mkdirs();
        DiskLruCache disklrucache1 = new DiskLruCache(file, i1, j1, l1);
        disklrucache1.d();
        return disklrucache1;
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        Writer writer = k;
        if (writer != null) goto _L2; else goto _L1
_L1:
        this;
        JVM INSTR monitorexit ;
        return;
_L2:
        Iterator iterator = (new ArrayList(l.values())).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            e e1 = (e)iterator.next();
            if (com.mopub.common.e.a(e1) != null)
            {
                com.mopub.common.e.a(e1).abort();
            }
        } while (true);
        break MISSING_BLOCK_LABEL_76;
        Exception exception;
        exception;
        throw exception;
        g();
        k.close();
        k = null;
          goto _L1
    }

    public void delete()
    {
        close();
        DiskLruCacheUtil.a(c);
    }

    public Editor edit(String s)
    {
        return a(s, -1L);
    }

    public void flush()
    {
        this;
        JVM INSTR monitorenter ;
        f();
        g();
        k.flush();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public Snapshot get(String s)
    {
        this;
        JVM INSTR monitorenter ;
        e e1;
        f();
        b(s);
        e1 = (e)l.get(s);
        if (e1 != null) goto _L2; else goto _L1
_L1:
        Snapshot snapshot = null;
_L8:
        this;
        JVM INSTR monitorexit ;
        return snapshot;
_L2:
        if (!com.mopub.common.e.d(e1))
        {
            snapshot = null;
            continue; /* Loop/switch isn't completed */
        }
        InputStream ainputstream[] = new InputStream[i];
        int i1 = 0;
_L4:
        if (i1 >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        ainputstream[i1] = new FileInputStream(e1.getCleanFile(i1));
        i1++;
        if (true) goto _L4; else goto _L3
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        int j1 = 0;
_L6:
        if (j1 >= i || ainputstream[j1] == null)
        {
            break; /* Loop/switch isn't completed */
        }
        DiskLruCacheUtil.a(ainputstream[j1]);
        j1++;
        if (true) goto _L6; else goto _L5
_L3:
        m = 1 + m;
        k.append((new StringBuilder()).append("READ ").append(s).append('\n').toString());
        if (e())
        {
            b.submit(o);
        }
        snapshot = new Snapshot(s, com.mopub.common.e.e(e1), ainputstream, com.mopub.common.e.b(e1));
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
_L5:
        snapshot = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public File getDirectory()
    {
        return c;
    }

    public long getMaxSize()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = h;
        this;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isClosed()
    {
        this;
        JVM INSTR monitorenter ;
        Writer writer = k;
        boolean flag;
        if (writer == null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean remove(String s)
    {
        this;
        JVM INSTR monitorenter ;
        e e1;
        f();
        b(s);
        e1 = (e)l.get(s);
        if (e1 == null) goto _L2; else goto _L1
_L1:
        Editor editor = com.mopub.common.e.a(e1);
        int i1 = 0;
        if (editor == null) goto _L3; else goto _L2
_L2:
        boolean flag = false;
_L7:
        this;
        JVM INSTR monitorexit ;
        return flag;
_L5:
        j = j - com.mopub.common.e.b(e1)[i1];
        com.mopub.common.e.b(e1)[i1] = 0L;
        i1++;
_L3:
        File file;
        if (i1 >= i)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        file = e1.getCleanFile(i1);
        if (!file.exists() || file.delete()) goto _L5; else goto _L4
_L4:
        throw new IOException((new StringBuilder()).append("failed to delete ").append(file).toString());
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        m = 1 + m;
        k.append((new StringBuilder()).append("REMOVE ").append(s).append('\n').toString());
        l.remove(s);
        if (e())
        {
            b.submit(o);
        }
        flag = true;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void setMaxSize(long l1)
    {
        this;
        JVM INSTR monitorenter ;
        h = l1;
        b.submit(o);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public long size()
    {
        this;
        JVM INSTR monitorenter ;
        long l1 = j;
        this;
        JVM INSTR monitorexit ;
        return l1;
        Exception exception;
        exception;
        throw exception;
    }


    private class Editor
    {

        final DiskLruCache a;
        private final e b;
        private final boolean c[];
        private boolean d;
        private boolean e;

        static e a(Editor editor)
        {
            return editor.b;
        }

        static boolean a(Editor editor, boolean flag)
        {
            editor.d = flag;
            return flag;
        }

        static boolean[] b(Editor editor)
        {
            return editor.c;
        }

        public void abort()
        {
            DiskLruCache.a(a, this, false);
        }

        public void abortUnlessCommitted()
        {
            if (e)
            {
                break MISSING_BLOCK_LABEL_11;
            }
            abort();
            return;
            IOException ioexception;
            ioexception;
        }

        public void commit()
        {
            if (d)
            {
                DiskLruCache.a(a, this, false);
                a.remove(com.mopub.common.e.c(b));
            } else
            {
                DiskLruCache.a(a, this, true);
            }
            e = true;
        }

        public String getString(int i1)
        {
            InputStream inputstream = newInputStream(i1);
            if (inputstream != null)
            {
                return DiskLruCache.a(inputstream);
            } else
            {
                return null;
            }
        }

        public InputStream newInputStream(int i1)
        {
            DiskLruCache disklrucache = a;
            disklrucache;
            JVM INSTR monitorenter ;
            if (com.mopub.common.e.a(b) != this)
            {
                throw new IllegalStateException();
            }
            break MISSING_BLOCK_LABEL_31;
            Exception exception;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
            if (com.mopub.common.e.d(b))
            {
                break MISSING_BLOCK_LABEL_45;
            }
            disklrucache;
            JVM INSTR monitorexit ;
            return null;
            FileInputStream fileinputstream = new FileInputStream(b.getCleanFile(i1));
            disklrucache;
            JVM INSTR monitorexit ;
            return fileinputstream;
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            disklrucache;
            JVM INSTR monitorexit ;
            return null;
        }

        public OutputStream newOutputStream(int i1)
        {
            DiskLruCache disklrucache = a;
            disklrucache;
            JVM INSTR monitorenter ;
            if (com.mopub.common.e.a(b) != this)
            {
                throw new IllegalStateException();
            }
            break MISSING_BLOCK_LABEL_31;
            Exception exception;
            exception;
            disklrucache;
            JVM INSTR monitorexit ;
            throw exception;
            File file;
            if (!com.mopub.common.e.d(b))
            {
                c[i1] = true;
            }
            file = b.getDirtyFile(i1);
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            FileOutputStream fileoutputstream1 = fileoutputstream;
_L1:
            d d1 = new d(this, fileoutputstream1);
            disklrucache;
            JVM INSTR monitorexit ;
            return d1;
            FileNotFoundException filenotfoundexception;
            filenotfoundexception;
            DiskLruCache.f(a).mkdirs();
            FileOutputStream fileoutputstream2 = new FileOutputStream(file);
            fileoutputstream1 = fileoutputstream2;
              goto _L1
            FileNotFoundException filenotfoundexception1;
            filenotfoundexception1;
            OutputStream outputstream = DiskLruCache.a();
            disklrucache;
            JVM INSTR monitorexit ;
            return outputstream;
        }

        public void set(int i1, String s)
        {
            OutputStreamWriter outputstreamwriter = new OutputStreamWriter(newOutputStream(i1), DiskLruCacheUtil.b);
            outputstreamwriter.write(s);
            DiskLruCacheUtil.a(outputstreamwriter);
            return;
            Exception exception;
            exception;
            outputstreamwriter = null;
_L2:
            DiskLruCacheUtil.a(outputstreamwriter);
            throw exception;
            exception;
            if (true) goto _L2; else goto _L1
_L1:
        }

        private Editor(e e1)
        {
            a = DiskLruCache.this;
            super();
            b = e1;
            boolean aflag[];
            if (com.mopub.common.e.d(e1))
            {
                aflag = null;
            } else
            {
                aflag = new boolean[DiskLruCache.e(DiskLruCache.this)];
            }
            c = aflag;
        }

    }


    private class Snapshot
        implements Closeable
    {

        final DiskLruCache a;
        private final String b;
        private final long c;
        private final InputStream d[];
        private final long e[];

        public void close()
        {
            InputStream ainputstream[] = d;
            int i1 = ainputstream.length;
            for (int j1 = 0; j1 < i1; j1++)
            {
                DiskLruCacheUtil.a(ainputstream[j1]);
            }

        }

        public Editor edit()
        {
            return DiskLruCache.a(a, b, c);
        }

        public InputStream getInputStream(int i1)
        {
            return d[i1];
        }

        public long getLength(int i1)
        {
            return e[i1];
        }

        public String getString(int i1)
        {
            return DiskLruCache.a(getInputStream(i1));
        }

        private Snapshot(String s, long l1, InputStream ainputstream[], long al[])
        {
            a = DiskLruCache.this;
            super();
            b = s;
            c = l1;
            d = ainputstream;
            e = al;
        }

        Snapshot(String s, long l1, InputStream ainputstream[], long al[], _cls1 _pcls1)
        {
            this(s, l1, ainputstream, al);
        }
    }

}
