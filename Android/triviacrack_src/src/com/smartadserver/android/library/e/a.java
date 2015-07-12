// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.smartadserver.android.library.e;

import android.content.Context;
import com.smartadserver.android.library.h.b;
import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Hashtable;
import java.util.Iterator;

// Referenced classes of package com.smartadserver.android.library.e:
//            b

public class a
{

    public static String a = ".ready";
    public static String b = ".temp";
    private static a c;
    private WeakReference d;
    private HashSet e;
    private Hashtable f;
    private Hashtable g;

    private a(Context context)
    {
        e = new HashSet();
        d = new WeakReference(context);
        f = (Hashtable)com.smartadserver.android.library.h.b.b(a(), "SmartAdServerCache", "placementToCurrentInsertionID.bin");
        if (f == null)
        {
            f = new Hashtable();
        }
        g = (Hashtable)com.smartadserver.android.library.h.b.b(a(), "SmartAdServerCache", "insertionIdToPlacements.bin");
        if (g == null)
        {
            g = new Hashtable();
        }
    }

    private Context a()
    {
        return (Context)d.get();
    }

    private com.smartadserver.android.library.d.a a(String s)
    {
        return (com.smartadserver.android.library.d.a)com.smartadserver.android.library.h.b.b(a(), "SmartAdServerCache", (new StringBuilder()).append(s).append("/").append("SasAdElement.bin").toString());
    }

    public static a a(Context context)
    {
        if (c != null) goto _L2; else goto _L1
_L1:
        if (context == null)
        {
            throw new com.smartadserver.android.library.a.a("Can not get cache manager instance: associated context is null");
        }
        c = new a(context);
_L4:
        return c;
_L2:
        if (c.a() == null)
        {
            c.d = new WeakReference(context);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private boolean a(com.smartadserver.android.library.d.a a1, com.smartadserver.android.library.d.a a2)
    {
label0:
        {
label1:
            {
                boolean flag = true;
                if (a1 == null || a2 == null)
                {
                    break label0;
                }
                boolean flag1;
                boolean flag2;
                boolean flag3;
                boolean flag4;
                if (a1.i() == a2.i())
                {
                    flag1 = flag;
                } else
                {
                    flag1 = false;
                }
                flag2 = a1.d().equals(a2.d());
                flag3 = a1.j().equals(a2.j());
                if (flag1 && flag2)
                {
                    flag4 = false;
                    if (flag3)
                    {
                        break label1;
                    }
                }
                flag4 = flag;
            }
            flag = flag4;
        }
        return flag;
    }

    private boolean a(String s, String s1)
    {
        try
        {
            com.smartadserver.android.library.h.b.a(a(), s, "SmartAdServerCache", s1);
        }
        catch (IOException ioexception)
        {
            return false;
        }
        return true;
    }

    private boolean a(String s, String s1, String s2)
    {
        boolean flag = true;
        if (s1 != null)
        {
            if (s1 != s2);
        }
        if (s1 != s2 || s2 == null)
        {
            ArrayList arraylist = null;
            if (s1 != null)
            {
                arraylist = (ArrayList)g.get(s1);
            }
            if (arraylist != null)
            {
                arraylist.remove(s);
            }
            boolean flag1;
            boolean flag2;
            if (s2 != null)
            {
                ArrayList arraylist1 = (ArrayList)g.get(s2);
                if (arraylist1 == null)
                {
                    arraylist1 = new ArrayList();
                    g.put(s2, arraylist1);
                }
                if (!arraylist1.contains(s))
                {
                    arraylist1.add(s);
                }
                f.put(s, s2);
            } else
            {
                f.remove(s);
            }
            if (com.smartadserver.android.library.h.b.a(a(), g, "SmartAdServerCache", "insertionIdToPlacements.bin"))
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            if (flag1 && com.smartadserver.android.library.h.b.a(a(), f, "SmartAdServerCache", "placementToCurrentInsertionID.bin"))
            {
                flag2 = flag;
            } else
            {
                flag2 = false;
            }
            flag = flag2;
        }
        return flag;
    }

    private String c(int i, String s, int j, String s1)
    {
        return (new StringBuilder()).append("").append(i).append("/").append(s).append("/").append(j).append("/").append(s1).toString();
    }

    public void a(int i, String s, int j, String s1)
    {
        a(i, s, j, s1, null);
    }

    public void a(int i, String s, int j, String s1, com.smartadserver.android.library.d.a a1)
    {
        this;
        JVM INSTR monitorenter ;
        if (a1 == null) goto _L2; else goto _L1
_L1:
        String s13 = (new StringBuilder()).append("").append(a1.i()).toString();
        String s2;
        synchronized (e)
        {
            e.add(Integer.valueOf(a1.i()));
        }
        s2 = s13;
_L13:
        String s3;
        String s4;
        a(false);
        s3 = c(i, s, j, s1);
        s4 = (String)f.get(s3);
        if (s4 == null) goto _L4; else goto _L3
_L3:
        com.smartadserver.android.library.d.a a2 = a(s4);
        boolean flag;
        flag = false;
        if (a2 != null)
        {
            break MISSING_BLOCK_LABEL_128;
        }
        a2 = a(s4.concat(".ready"));
_L12:
        boolean flag1 = a(a2, a1);
        File file = null;
        if (!flag1) goto _L6; else goto _L5
_L5:
        if (a1 == null) goto _L8; else goto _L7
_L7:
        File file1;
        String s5;
        String s6;
        file1 = a().getDir("SmartAdServerCache", 0);
        s5 = a1.c();
        a1.b((new StringBuilder()).append("file:").append(file1.getAbsolutePath()).append("/").append(s2).append("/").toString());
        s6 = a1.b();
        file = null;
        if (s6 != null) goto _L10; else goto _L9
_L9:
        throw new com.smartadserver.android.library.a.a((new StringBuilder()).append("Can not get html contents from script URL: ").append(a1.d()).toString());
        Exception exception2;
        exception2;
_L14:
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_279;
        }
        if (file.exists())
        {
            com.smartadserver.android.library.h.b.a(file);
        }
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_312;
        }
        synchronized (e)
        {
            e.remove(Integer.valueOf(a1.i()));
        }
        throw exception2;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        exception4;
        hashset2;
        JVM INSTR monitorexit ;
        throw exception4;
_L4:
        a2 = null;
        flag = false;
        if (a1 == null) goto _L12; else goto _L11
_L11:
        com.smartadserver.android.library.d.a a3 = a(s2);
        a2 = a3;
        flag = true;
          goto _L12
_L10:
        String s7 = com.smartadserver.android.library.e.b.b(s6);
        file = null;
        if (s7 != null)
        {
            break MISSING_BLOCK_LABEL_405;
        }
        throw new com.smartadserver.android.library.a.a((new StringBuilder()).append("Can not determine cache manifest filename from html contents from script URL: ").append(a1.d()).toString());
        String s8;
        String as[];
        String s9;
        File file2;
        s8 = com.smartadserver.android.library.e.b.c(s6);
        a1.a(s8);
        as = com.smartadserver.android.library.e.b.a((new StringBuilder()).append(s5).append(s7).toString());
        s9 = (new StringBuilder()).append(s2).append(b).append("/").toString();
        file2 = new File(file1, s9);
        int k = 0;
_L15:
        if (k < as.length)
        {
            String s12 = as[k].replace(" ", "%20F");
            if (!a((new StringBuilder()).append(s5).append(s12).toString(), (new StringBuilder()).append(s9).append(as[k]).toString()))
            {
                throw new com.smartadserver.android.library.a.a((new StringBuilder()).append("Can not download file: ").append(s5).append(as[k]).toString());
            }
            break MISSING_BLOCK_LABEL_926;
        }
        if (s8.contains("\"mraid.js\""))
        {
            String s10 = com.smartadserver.android.library.controller.mraid.a.a;
            String s11 = s10.substring(1 + s10.lastIndexOf("/"));
            if (!a(s10, (new StringBuilder()).append(s9).append(s11).toString()))
            {
                throw new com.smartadserver.android.library.a.a((new StringBuilder()).append("Can not download mraid bridge at: ").append(s10).toString());
            }
        }
        if (!com.smartadserver.android.library.h.b.a(a(), a1, "SmartAdServerCache", (new StringBuilder()).append(s9).append("SasAdElement.bin").toString()))
        {
            throw new com.smartadserver.android.library.a.a("Can not write ad element in cache");
        }
        File file3 = new File(file1, (new StringBuilder()).append(s2).append(a).toString());
        if (file3.exists())
        {
            com.smartadserver.android.library.h.b.a(file3);
        }
        if (!file2.renameTo(file3))
        {
            throw new com.smartadserver.android.library.a.a("Can not rename temporary insertion folder in cache");
        }
        file = file2;
        flag = true;
_L6:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_832;
        }
        if (!a(s3, s4, s2))
        {
            throw new com.smartadserver.android.library.a.a("Can not save insertion tables in cache");
        }
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_850;
        }
        if (file.exists())
        {
            com.smartadserver.android.library.h.b.a(file);
        }
        if (a1 == null)
        {
            break MISSING_BLOCK_LABEL_883;
        }
        synchronized (e)
        {
            e.remove(Integer.valueOf(a1.i()));
        }
        this;
        JVM INSTR monitorexit ;
        return;
        exception1;
        hashset;
        JVM INSTR monitorexit ;
        throw exception1;
        exception3;
        hashset1;
        JVM INSTR monitorexit ;
        throw exception3;
_L8:
        flag = true;
        file = null;
        if (true) goto _L6; else goto _L2
_L2:
        s2 = null;
          goto _L13
        exception2;
        file = file2;
          goto _L14
        k++;
          goto _L15
    }

    public void a(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        File afile[] = a().getDir("SmartAdServerCache", 0).listFiles(new FileFilter() {

            final a a;

            public boolean accept(File file)
            {
                return file.isDirectory();
            }

            
            {
                a = a.this;
                super();
            }
        });
        int i = 0;
_L6:
        if (i >= afile.length) goto _L2; else goto _L1
_L1:
        String s = afile[i].getName();
        if (s.endsWith(a) && !flag) goto _L4; else goto _L3
_L3:
        ArrayList arraylist = (ArrayList)g.get(s);
        if (arraylist == null)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        if (arraylist.size() != 0 && !flag)
        {
            break MISSING_BLOCK_LABEL_139;
        }
        boolean flag1 = true;
        g.remove(s);
_L7:
        if (!flag1) goto _L4; else goto _L5
_L5:
        com.smartadserver.android.library.h.b.a(afile[i]);
_L4:
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_125;
        }
        f.clear();
        i++;
          goto _L6
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
        flag1 = flag;
          goto _L7
    }

    public com.smartadserver.android.library.d.a b(int i, String s, int j, String s1)
    {
        String s2 = (String)f.get(c(i, s, j, s1));
        if (s2 == null) goto _L2; else goto _L1
_L1:
        HashSet hashset = e;
        hashset;
        JVM INSTR monitorenter ;
        File file2;
        File file = a().getDir("SmartAdServerCache", 0);
        File file1 = new File(file, (new StringBuilder()).append(s2).append(a).toString());
        file2 = new File(file, s2);
        if (!e.contains(s2) && file1.exists())
        {
            if (file2.exists())
            {
                com.smartadserver.android.library.h.b.a(file2);
            }
            if (!file1.renameTo(file2))
            {
                throw new com.smartadserver.android.library.a.a("could not rename a folder in cache");
            }
        }
        break MISSING_BLOCK_LABEL_154;
        Exception exception;
        exception;
        hashset;
        JVM INSTR monitorexit ;
        throw exception;
        com.smartadserver.android.library.d.a a1 = a(s2);
        if (a1 != null)
        {
            break MISSING_BLOCK_LABEL_178;
        }
        throw new com.smartadserver.android.library.a.a("could not read SASAdElement from cache");
        if (a1.j().compareTo(new Date()) > 0) goto _L4; else goto _L3
_L3:
        ArrayList arraylist;
        com.smartadserver.android.library.h.b.a(file2);
        arraylist = (ArrayList)g.remove(s2);
        if (arraylist == null) goto _L6; else goto _L5
_L5:
        String s3;
        for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); f.remove(s3))
        {
            s3 = (String)iterator.next();
        }

          goto _L6
_L8:
        hashset;
        JVM INSTR monitorexit ;
        com.smartadserver.android.library.d.a a2;
        return a2;
_L4:
        a2 = a1;
        continue; /* Loop/switch isn't completed */
_L2:
        return null;
_L6:
        a2 = null;
        if (true) goto _L8; else goto _L7
_L7:
    }

}
