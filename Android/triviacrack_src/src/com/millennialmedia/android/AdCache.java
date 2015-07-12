// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

// Referenced classes of package com.millennialmedia.android:
//            MMLog, CachedAd, MMSDK, AdCacheThreadPool, 
//            MMAdImpl, HandShake

final class AdCache
{

    static boolean a = true;
    private static Set b;
    private static String c;
    private static boolean d;
    private static Map e;
    private static Set f;
    private static boolean g;
    private static Map h;
    private static boolean i;

    private AdCache()
    {
    }

    static String a(Context context)
    {
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorenter ;
        StringBuilder stringbuilder;
        Iterator iterator;
        if (c != null)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        if (!d)
        {
            HashSet hashset = new HashSet();
            a(context, 2, ((Iterator) (new Iterator(context, hashset) {
            private class Iterator
            {

                void a()
                {
                }

                boolean a(CachedAd cachedad)
                {
                    return false;
                }

                boolean a(String s)
                {
                    return false;
                }

                boolean a(String s, int i1, Date date, String s1, long l1, ObjectInputStream objectinputstream)
                {
                    return false;
                }

                Iterator()
                {
                }
            }


                final Context a;
                final Set b;

                boolean a(CachedAd cachedad)
                {
                    if (cachedad.a != null && cachedad.c() == 1 && cachedad.d(a))
                    {
                        b.add(cachedad.a);
                    }
                    return true;
                }

            
            {
                a = context;
                b = set;
                super();
            }
            })));
            b = hashset;
            d = true;
        }
        if (b == null || b.size() <= 0)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        stringbuilder = new StringBuilder();
        iterator = b.iterator();
_L1:
        String s1;
        do
        {
            if (!iterator.hasNext())
            {
                break MISSING_BLOCK_LABEL_163;
            }
            s1 = (String)iterator.next();
            if (stringbuilder.length() <= 0)
            {
                break MISSING_BLOCK_LABEL_149;
            }
            stringbuilder.append((new StringBuilder()).append(",").append((String)s1).toString());
        } while (true);
        Exception exception;
        exception;
        throw exception;
        stringbuilder.append((String)s1);
          goto _L1
        c = stringbuilder.toString();
        String s = c;
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorexit ;
        return s;
    }

    static void a(Context context, int i1, Iterator iterator)
    {
        File file = h(context);
        if (file == null) goto _L2; else goto _L1
_L1:
        File afile[] = file.listFiles(new FileFilter() {

            public boolean accept(File file2)
            {
                return !file2.isDirectory() && file2.getName().endsWith("ad.dat");
            }

        });
        if (afile == null) goto _L2; else goto _L3
_L3:
        int j1;
        int k1;
        ObjectInputStream objectinputstream;
        j1 = afile.length;
        k1 = 0;
        objectinputstream = null;
_L8:
        if (k1 >= j1) goto _L2; else goto _L4
_L4:
        File file1 = afile[k1];
        if (file1 == null) goto _L6; else goto _L5
_L5:
        boolean flag = file1.exists();
        if (flag) goto _L7; else goto _L6
_L6:
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_501;
        }
        objectinputstream.close();
        ObjectInputStream objectinputstream1 = null;
_L9:
        k1++;
        objectinputstream = objectinputstream1;
          goto _L8
        IOException ioexception;
        ioexception;
        MMLog.a("AdCache", "Failed to close", ioexception);
        objectinputstream1 = objectinputstream;
          goto _L9
_L7:
        if (i1 != 0) goto _L11; else goto _L10
_L10:
        boolean flag1 = iterator.a(file1.getName());
        if (flag1) goto _L13; else goto _L12
_L12:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception7)
            {
                MMLog.a("AdCache", "Failed to close", ioexception7);
            }
        }
_L2:
        iterator.a();
        return;
_L13:
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_501;
        }
        objectinputstream.close();
        objectinputstream1 = null;
          goto _L9
        IOException ioexception6;
        ioexception6;
        MMLog.a("AdCache", "Failed to close", ioexception6);
        objectinputstream1 = objectinputstream;
          goto _L9
_L11:
        objectinputstream1 = new ObjectInputStream(new FileInputStream(file1));
        int l1;
        Date date;
        String s;
        long l2;
        l1 = objectinputstream1.readInt();
        date = (Date)objectinputstream1.readObject();
        s = (String)objectinputstream1.readObject();
        l2 = objectinputstream1.readLong();
        if (i1 != 1) goto _L15; else goto _L14
_L14:
        if (iterator.a(file1.getName(), l1, date, s, l2, objectinputstream1)) goto _L17; else goto _L16
_L16:
        objectinputstream1.close();
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception4)
            {
                MMLog.a("AdCache", "Failed to close", ioexception4);
            }
        }
          goto _L2
_L15:
        if (iterator.a((CachedAd)objectinputstream1.readObject())) goto _L17; else goto _L18
_L18:
        objectinputstream1.close();
        if (false)
        {
            try
            {
                null.close();
            }
            catch (IOException ioexception5)
            {
                MMLog.a("AdCache", "Failed to close", ioexception5);
            }
        }
          goto _L2
_L17:
        if (objectinputstream1 == null) goto _L9; else goto _L19
_L19:
        objectinputstream1.close();
        objectinputstream1 = null;
          goto _L9
        IOException ioexception3;
        ioexception3;
        MMLog.a("AdCache", "Failed to close", ioexception3);
          goto _L9
        Exception exception3;
        exception3;
        Exception exception;
        exception = exception3;
        objectinputstream = objectinputstream1;
_L22:
        Object aobj[] = new Object[1];
        aobj[0] = file1.getName();
        MMLog.a("AdCache", String.format("There was a problem reading the cached ad %s.", aobj), exception);
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_429;
        }
        objectinputstream.close();
        objectinputstream = null;
        objectinputstream1 = objectinputstream;
          goto _L9
        IOException ioexception2;
        ioexception2;
        MMLog.a("AdCache", "Failed to close", ioexception2);
        objectinputstream1 = objectinputstream;
          goto _L9
        Exception exception2;
        exception2;
_L21:
        if (objectinputstream1 != null)
        {
            try
            {
                objectinputstream1.close();
            }
            catch (IOException ioexception1)
            {
                MMLog.a("AdCache", "Failed to close", ioexception1);
            }
        }
        throw exception2;
        Exception exception1;
        exception1;
        objectinputstream1 = objectinputstream;
        exception2 = exception1;
        if (true) goto _L21; else goto _L20
_L20:
        exception;
          goto _L22
        objectinputstream1 = objectinputstream;
          goto _L9
    }

    static void a(Context context, String s)
    {
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorenter ;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_48;
        }
        if (!d)
        {
            a(context);
        }
        if (b == null)
        {
            b = new HashSet();
        }
        b.add(s);
        c = null;
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(Context context, String s, String s1)
    {
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorenter ;
        if (!g)
        {
            j(context);
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        Map map = e;
        if (s1 == null)
        {
            s1 = "";
        }
        map.put(s, s1);
        k(context, s);
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static void a(android.content.SharedPreferences.Editor editor, String s)
    {
        int i1 = s.indexOf('_');
        if (i1 >= 0 && i1 < s.length())
        {
            String s1 = s.substring(i1 + 1);
            if (s1 != null && !f.contains(s1))
            {
                boolean flag = f.isEmpty();
                StringBuilder stringbuilder = null;
                if (!flag)
                {
                    Iterator iterator = f.iterator();
                    StringBuilder stringbuilder2 = new StringBuilder();
                    for (; iterator.hasNext(); stringbuilder2.append((new StringBuilder()).append((String)iterator.next()).append(MMSDK.c).toString())) { }
                    stringbuilder = stringbuilder2;
                }
                StringBuilder stringbuilder1 = new StringBuilder();
                String s2;
                if (stringbuilder == null)
                {
                    s2 = "";
                } else
                {
                    s2 = stringbuilder.toString();
                }
                editor.putString("nextCachedAd_apids", stringbuilder1.append(s2).append(s1).toString());
                f.add(s1);
            }
        }
    }

    private static void a(SharedPreferences sharedpreferences)
    {
        f = new HashSet();
        String s = sharedpreferences.getString("nextCachedAd_apids", null);
        if (s != null)
        {
            String as[] = s.split(MMSDK.c);
            if (as != null && as.length > 0)
            {
                int i1 = as.length;
                for (int j1 = 0; j1 < i1; j1++)
                {
                    String s1 = as[j1];
                    f.add(s1);
                }

            }
        }
    }

    static void a(File file, long l1)
    {
        File afile[] = file.listFiles();
        int i1 = afile.length;
        int j1 = 0;
        while (j1 < i1) 
        {
            File file1 = afile[j1];
            if (file1.isFile())
            {
                if (System.currentTimeMillis() - file1.lastModified() > l1)
                {
                    file1.delete();
                }
            } else
            if (file1.isDirectory())
            {
                try
                {
                    a(file1, l1);
                    if (file1.list() != null && file1.list().length == 0)
                    {
                        file1.delete();
                    }
                }
                catch (SecurityException securityexception)
                {
                    MMLog.a("AdCache", "Security Exception cleaning up directory", securityexception);
                }
            }
            j1++;
        }
    }

    static boolean a()
    {
        return Environment.getExternalStorageState().equals("mounted");
    }

    static boolean a(Context context, CachedAd cachedad)
    {
        ObjectOutputStream objectoutputstream = null;
        if (cachedad != null) goto _L2; else goto _L1
_L1:
        File file;
        return false;
_L2:
        if ((file = m(context, cachedad.e())) == null) goto _L1; else goto _L3
_L3:
        Object aobj[] = new Object[2];
        aobj[0] = cachedad.e();
        aobj[1] = file;
        MMLog.a("AdCache", String.format("Saving CachedAd %s to %s", aobj));
        File file1 = new File(file.getParent(), (new StringBuilder()).append(cachedad.e()).append("ad.lock").toString());
        if (file1.createNewFile())
        {
            break MISSING_BLOCK_LABEL_153;
        }
        Object aobj2[] = new Object[1];
        aobj2[0] = cachedad.e();
        MMLog.a("AdCache", String.format("Could not save the cached ad %s. Ad was locked.", aobj2));
        try
        {
            file1.delete();
        }
        catch (IOException ioexception3)
        {
            MMLog.a("AdCache", "Failed to close", ioexception3);
            return false;
        }
        if (true) goto _L1; else goto _L4
_L4:
        null.close();
        return false;
        ObjectOutputStream objectoutputstream1 = new ObjectOutputStream(new FileOutputStream(file));
        objectoutputstream1.writeInt(cachedad.c());
        objectoutputstream1.writeObject(cachedad.b);
        objectoutputstream1.writeObject(cachedad.a);
        objectoutputstream1.writeLong(cachedad.c);
        objectoutputstream1.writeObject(cachedad);
        file1.delete();
        Exception exception;
        File file2;
        Exception exception1;
        if (objectoutputstream1 != null)
        {
            try
            {
                objectoutputstream1.close();
            }
            catch (IOException ioexception2)
            {
                MMLog.a("AdCache", "Failed to close", ioexception2);
            }
        }
        IOException ioexception;
        Object aobj1[];
        IOException ioexception1;
        if (!cachedad.a(context))
        {
            cachedad.c(context);
            return false;
        } else
        {
            return true;
        }
        exception;
        file2 = null;
_L8:
        aobj1 = new Object[1];
        aobj1[0] = cachedad.e();
        MMLog.a("AdCache", String.format("There was a problem saving the cached ad %s.", aobj1), exception);
        try
        {
            file2.delete();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception1)
        {
            MMLog.a("AdCache", "Failed to close", ioexception1);
            return false;
        }
        if (objectoutputstream == null) goto _L1; else goto _L5
_L5:
        objectoutputstream.close();
        return false;
        exception1;
        file1 = null;
_L7:
        file1.delete();
        if (objectoutputstream != null)
        {
            try
            {
                objectoutputstream.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception)
            {
                MMLog.a("AdCache", "Failed to close", ioexception);
            }
        }
        throw exception1;
        exception1;
        objectoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        objectoutputstream = objectoutputstream1;
        continue; /* Loop/switch isn't completed */
        exception1;
        file1 = file2;
        if (true) goto _L7; else goto _L6
_L6:
        exception;
        file2 = file1;
        objectoutputstream = null;
          goto _L8
        exception;
        objectoutputstream = objectoutputstream1;
        file2 = file1;
          goto _L8
    }

    static boolean a(Context context, String s, CachedAd cachedad, AdCacheTaskListener adcachetasklistener)
    {
        return AdCacheThreadPool.a().a(context, s, cachedad, adcachetasklistener);
    }

    static boolean a(String s, String s1, Context context)
    {
        File file = h(context);
        if (file == null || !file.isDirectory())
        {
            return false;
        } else
        {
            return a(s, s1, file, context);
        }
    }

    private static boolean a(String s, String s1, File file, Context context)
    {
        if (!TextUtils.isEmpty(s)) goto _L2; else goto _L1
_L1:
        boolean flag;
        MMLog.b("AdCache", "No Url ...");
        flag = false;
_L4:
        return flag;
_L2:
        File file1;
        long l1;
        file1 = new File(file, s1);
        MMLog.a("AdCache", String.format("Downloading Component: %s from %s", new Object[] {
            s1, s
        }));
        File file2 = file1.getParentFile();
        if (!file2.exists() && !file2.mkdirs())
        {
            MMLog.a("AdCache", (new StringBuilder()).append(file2).append(" does not exist and cannot create directory.").toString());
            return false;
        }
        if (file1.exists() && file1.length() > 0L)
        {
            MMLog.a("AdCache", (new StringBuilder()).append(s1).append(" already exists, skipping...").toString());
            return true;
        }
        l1 = -1L;
        HttpURLConnection httpurlconnection;
        InputStream inputstream2;
        URL url = new URL(s);
        HttpURLConnection.setFollowRedirects(true);
        httpurlconnection = (HttpURLConnection)url.openConnection();
        httpurlconnection.setConnectTimeout(30000);
        httpurlconnection.setRequestMethod("GET");
        httpurlconnection.connect();
        inputstream2 = httpurlconnection.getInputStream();
        InputStream inputstream1 = inputstream2;
        String s2 = httpurlconnection.getHeaderField("Content-Length");
        if (s2 == null)
        {
            break MISSING_BLOCK_LABEL_234;
        }
        l1 = Long.parseLong(s2);
        if (inputstream1 != null)
        {
            break MISSING_BLOCK_LABEL_306;
        }
        MMLog.e("AdCache", String.format("Connection stream is null downloading %s.", new Object[] {
            s1
        }));
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            catch (IOException ioexception2)
            {
                MMLog.a("AdCache", "Content caching error downloading component: ", ioexception2);
                if (file1 != null)
                {
                    file1.delete();
                }
                return false;
            }
        }
        flag = false;
        if (true) goto _L4; else goto _L3
_L3:
        null.close();
        return false;
        FileOutputStream fileoutputstream1 = new FileOutputStream(file1);
        byte abyte0[] = new byte[4096];
_L7:
        int i1 = inputstream1.read(abyte0);
        if (i1 <= 0) goto _L6; else goto _L5
_L5:
        fileoutputstream1.write(abyte0, 0, i1);
          goto _L7
        Exception exception;
        exception;
        FileOutputStream fileoutputstream;
        InputStream inputstream;
        fileoutputstream = fileoutputstream1;
        inputstream = inputstream1;
_L14:
        MMLog.e("AdCache", String.format("Exception downloading component %s: %s", new Object[] {
            s1, exception
        }));
        Exception exception1;
        IOException ioexception3;
        SecurityException securityexception;
        long l2;
        IOException ioexception4;
        if (inputstream != null)
        {
            try
            {
                inputstream.close();
            }
            catch (IOException ioexception1)
            {
                MMLog.a("AdCache", "Content caching error downloading component: ", ioexception1);
                if (file1 != null)
                {
                    file1.delete();
                }
                return false;
            }
        }
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_405;
        }
        fileoutputstream.close();
_L10:
        if (file1 != null)
        {
            file1.delete();
        }
        return false;
_L6:
        if (file1 == null)
        {
            break MISSING_BLOCK_LABEL_506;
        }
        l2 = file1.length();
        if (l2 != l1 && l1 != -1L)
        {
            break MISSING_BLOCK_LABEL_498;
        }
        flag = true;
        if (inputstream1 == null)
        {
            continue; /* Loop/switch isn't completed */
        }
        try
        {
            inputstream1.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception4)
        {
            MMLog.a("AdCache", "Content caching error downloading component: ", ioexception4);
            if (file1 != null)
            {
                file1.delete();
            }
            return false;
        }
        if (fileoutputstream1 == null) goto _L4; else goto _L8
_L8:
        fileoutputstream1.close();
        return flag;
        MMLog.e("AdCache", "Content-Length does not match actual length.");
_L11:
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception3)
            {
                MMLog.a("AdCache", "Content caching error downloading component: ", ioexception3);
                if (file1 != null)
                {
                    file1.delete();
                }
                return false;
            }
        }
        if (fileoutputstream1 == null) goto _L10; else goto _L9
_L9:
        fileoutputstream1.close();
          goto _L10
        securityexception;
        MMLog.a("AdCache", String.format("Exception downloading component %s: ", new Object[] {
            s1
        }), securityexception);
          goto _L11
        exception1;
        fileoutputstream = fileoutputstream1;
_L13:
        if (inputstream1 != null)
        {
            try
            {
                inputstream1.close();
            }
            catch (IOException ioexception)
            {
                MMLog.a("AdCache", "Content caching error downloading component: ", ioexception);
                if (file1 != null)
                {
                    file1.delete();
                }
                return false;
            }
        }
        if (fileoutputstream == null)
        {
            break MISSING_BLOCK_LABEL_606;
        }
        fileoutputstream.close();
        throw exception1;
        exception1;
        fileoutputstream = null;
        inputstream1 = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        fileoutputstream = null;
        continue; /* Loop/switch isn't completed */
        exception1;
        inputstream1 = inputstream;
        if (true) goto _L13; else goto _L12
_L12:
        exception;
        fileoutputstream = null;
        inputstream = null;
          goto _L14
        exception;
        inputstream = inputstream1;
        fileoutputstream = null;
          goto _L14
    }

    static boolean a(String s, String s1, String s2, Context context)
    {
        File file = g(context);
        if (file == null || !file.isDirectory())
        {
            return false;
        } else
        {
            return a(s, s2, new File(file, s1), context);
        }
    }

    static void b(Context context)
    {
        Utils.ThreadUtils.a(new Runnable(context) {

            final Context a;

            public void run()
            {
                MMLog.b("AdCache", "AdCache");
                AdCache.c(a);
                AdCache.d(a);
            }

            
            {
                a = context;
                super();
            }
        });
    }

    static void b(Context context, String s)
    {
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorenter ;
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_38;
        }
        if (!d)
        {
            a(context);
        }
        if (b != null)
        {
            b.remove(s);
            c = null;
        }
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void b(Context context, String s, String s1)
    {
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorenter ;
        if (!i)
        {
            k(context);
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_44;
        }
        Map map = h;
        if (s1 == null)
        {
            s1 = "";
        }
        map.put(s, s1);
        l(context, s);
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static boolean b(String s, String s1, Context context)
    {
        File file = g(context);
        if (file == null || !file.isDirectory())
        {
            return false;
        } else
        {
            return a(s, s1, file, context);
        }
    }

    static File c(Context context, String s, String s1)
    {
        File file = g(context);
        File file1 = null;
        if (file != null)
        {
            file1 = new File(file, (new StringBuilder()).append(s).append(File.separator).append(s1).toString());
        }
        return file1;
    }

    static String c(Context context, String s)
    {
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorenter ;
        if (!g)
        {
            j(context);
        }
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        s1 = (String)e.get(s);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static void c(Context context)
    {
        a(context, 1, new Iterator() {

            boolean a(String s, int i1, Date date, String s1, long l1, ObjectInputStream objectinputstream)
            {
                if (date != null && date.getTime() <= System.currentTimeMillis())
                {
                    try
                    {
                        CachedAd cachedad = (CachedAd)objectinputstream.readObject();
                        Object aobj[] = new Object[1];
                        aobj[0] = cachedad.e();
                        MMLog.e("AdCache", String.format("Deleting expired ad %s.", aobj));
                    }
                    catch (Exception exception)
                    {
                        MMLog.a("AdCache", String.format("There was a problem reading the cached ad %s.", new Object[] {
                            s
                        }), exception);
                        return true;
                    }
                }
                return true;
            }

        });
    }

    static CachedAd d(Context context, String s)
    {
        String s1 = c(context, s);
        if (s1 == null || s1.equals(""))
        {
            return null;
        } else
        {
            return i(context, s1);
        }
    }

    static void d(Context context)
    {
        l(context);
        if (i(context))
        {
            m(context);
        }
    }

    static String e(Context context, String s)
    {
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorenter ;
        if (!i)
        {
            k(context);
        }
        if (s != null) goto _L2; else goto _L1
_L1:
        String s1 = null;
_L4:
        com/millennialmedia/android/AdCache;
        JVM INSTR monitorexit ;
        return s1;
_L2:
        s1 = (String)h.get(s);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        throw exception;
    }

    static void e(Context context)
    {
        a(context, 2, new Iterator(context) {

            final Context a;

            boolean a(CachedAd cachedad)
            {
                Object aobj[] = new Object[1];
                aobj[0] = cachedad.e();
                MMLog.b("AdCache", String.format("Deleting ad %s.", aobj));
                cachedad.c(a);
                return true;
            }

            
            {
                a = context;
                super();
            }
        });
        b = null;
        c = null;
        d = false;
        if (e != null)
        {
            for (Iterator iterator1 = e.keySet().iterator(); iterator1.hasNext(); a(context, (String)iterator1.next(), ((String) (null)))) { }
        }
        if (h != null)
        {
            for (Iterator iterator = h.keySet().iterator(); iterator.hasNext(); b(context, (String)iterator.next(), ((String) (null)))) { }
        }
    }

    static CachedAd f(Context context, String s)
    {
        String s1 = e(context, s);
        if (s1 == null)
        {
            return null;
        } else
        {
            return i(context, s1);
        }
    }

    static File f(Context context)
    {
        if (i(context))
        {
            return g(context);
        } else
        {
            return h(context);
        }
    }

    static File g(Context context)
    {
        File file1;
label0:
        {
            File file = Environment.getExternalStorageDirectory();
            if (file != null)
            {
                file1 = new File(file, ".mmsyscache");
                if (file1.exists() || file1.mkdirs())
                {
                    break label0;
                }
            }
            return null;
        }
        return file1;
    }

    static File g(Context context, String s)
    {
        File file = g(context);
        File file1 = null;
        if (file != null)
        {
            file1 = new File(file, s);
        }
        return file1;
    }

    static File h(Context context)
    {
        File file;
        if (context != null)
        {
            if ((file = new File(context.getFilesDir(), ".mmsyscache")) == null || file.exists() || file.mkdirs())
            {
                return file;
            }
        }
        return null;
    }

    static boolean h(Context context, String s)
    {
        File file = g(context, s);
        return file != null && file.exists();
    }

    static CachedAd i(Context context, String s)
    {
        if (s != null && !s.equals("")) goto _L2; else goto _L1
_L1:
        File file;
        return null;
_L2:
        if ((file = m(context, s)) == null) goto _L1; else goto _L3
_L3:
        ObjectInputStream objectinputstream = new ObjectInputStream(new FileInputStream(file));
        CachedAd cachedad;
        objectinputstream.readInt();
        (Date)objectinputstream.readObject();
        objectinputstream.readObject();
        objectinputstream.readLong();
        cachedad = (CachedAd)objectinputstream.readObject();
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception3)
            {
                MMLog.a("AdCache", "Failed to close", ioexception3);
            }
        }
_L4:
        return cachedad;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        objectinputstream = null;
_L8:
        MMLog.a("AdCache", (new StringBuilder()).append("There was a problem loading up the cached ad ").append(s).append(". Ad is not on disk.").toString(), filenotfoundexception);
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_143;
        }
        objectinputstream.close();
        cachedad = null;
          goto _L4
        IOException ioexception1;
        ioexception1;
        MMLog.a("AdCache", "Failed to close", ioexception1);
        cachedad = null;
          goto _L4
        Exception exception1;
        exception1;
        objectinputstream = null;
_L7:
        MMLog.a("AdCache", String.format("There was a problem loading up the cached ad %s.", new Object[] {
            s
        }), exception1);
        if (objectinputstream == null)
        {
            break MISSING_BLOCK_LABEL_199;
        }
        objectinputstream.close();
        cachedad = null;
          goto _L4
        IOException ioexception2;
        ioexception2;
        MMLog.a("AdCache", "Failed to close", ioexception2);
        cachedad = null;
          goto _L4
        Exception exception;
        exception;
        objectinputstream = null;
_L6:
        if (objectinputstream != null)
        {
            try
            {
                objectinputstream.close();
            }
            catch (IOException ioexception)
            {
                MMLog.a("AdCache", "Failed to close", ioexception);
            }
        }
        throw exception;
        exception;
        if (true) goto _L6; else goto _L5
_L5:
        exception1;
          goto _L7
        filenotfoundexception;
          goto _L8
    }

    static boolean i(Context context)
    {
        if (context != null)
        {
            String s = Environment.getExternalStorageState();
            if (context.checkCallingOrSelfPermission("android.permission.WRITE_EXTERNAL_STORAGE") == 0 && !TextUtils.isEmpty(s) && s.equals("mounted") && a)
            {
                return true;
            }
        }
        return false;
    }

    private static void j(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        e = new ConcurrentHashMap();
        if (f == null)
        {
            a(sharedpreferences);
        }
        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            String as[] = MMAdImpl.l();
            int i1 = as.length;
            int j1 = 0;
            while (j1 < i1) 
            {
                String s1 = as[j1];
                String s2 = sharedpreferences.getString((new StringBuilder()).append("nextCachedAd_").append(s1).append('_').append(s).toString(), null);
                if (s2 != null)
                {
                    e.put((new StringBuilder()).append(s1).append('_').append(s).toString(), s2);
                }
                j1++;
            }
        }

        g = true;
    }

    static boolean j(Context context, String s)
    {
        File file = m(context, s);
        if (file != null)
        {
            return file.delete();
        } else
        {
            return false;
        }
    }

    private static void k(Context context)
    {
        SharedPreferences sharedpreferences = context.getSharedPreferences("MillennialMediaSettings", 0);
        h = new ConcurrentHashMap();
        if (f == null)
        {
            a(sharedpreferences);
        }
        for (Iterator iterator = f.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            String as[] = MMAdImpl.l();
            int i1 = as.length;
            int j1 = 0;
            while (j1 < i1) 
            {
                String s1 = as[j1];
                String s2 = sharedpreferences.getString((new StringBuilder()).append("incompleteDownload_").append(s1).append('_').append(s).toString(), null);
                if (s2 != null)
                {
                    h.put((new StringBuilder()).append(s1).append('_').append(s).toString(), s2);
                }
                j1++;
            }
        }

        i = true;
    }

    private static void k(Context context, String s)
    {
        if (s != null)
        {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            a(editor, s);
            editor.putString((new StringBuilder()).append("nextCachedAd_").append(s).toString(), (String)e.get(s));
            editor.commit();
        }
    }

    private static void l(Context context)
    {
        File file;
        for (file = h(context); file == null || !file.exists() || !file.isDirectory();)
        {
            return;
        }

        a(file, HandShake.a(context).d);
    }

    private static void l(Context context, String s)
    {
        if (s != null)
        {
            android.content.SharedPreferences.Editor editor = context.getSharedPreferences("MillennialMediaSettings", 0).edit();
            a(editor, s);
            editor.putString((new StringBuilder()).append("incompleteDownload_").append(s).toString(), (String)h.get(s));
            editor.commit();
        }
    }

    private static File m(Context context, String s)
    {
        String s1;
        boolean flag;
        File file;
        s1 = (new StringBuilder()).append(s).append("ad.dat").toString();
        flag = i(context);
        file = h(context);
        if (file == null) goto _L2; else goto _L1
_L1:
        if (!file.isDirectory()) goto _L2; else goto _L3
_L3:
        File file1 = new File(file, s1);
_L5:
        if (file1 == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        if (file1.exists())
        {
            break MISSING_BLOCK_LABEL_159;
        }
        if (flag)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        File file2;
        File file3;
        boolean flag1;
        try
        {
            file2 = context.getFilesDir();
        }
        catch (Exception exception)
        {
            MMLog.a("AdCache", "getCachedAdFile: ", exception);
            return null;
        }
        if (file2 == null)
        {
            break MISSING_BLOCK_LABEL_159;
        }
        file3 = new File(file2, (new StringBuilder()).append(".mmsyscache").append(File.separator).append(s1).toString());
        if (!file3.exists())
        {
            break MISSING_BLOCK_LABEL_159;
        }
        flag1 = file3.isFile();
        if (flag1)
        {
            return file3;
        }
        return file1;
_L2:
        file1 = null;
        if (true) goto _L5; else goto _L4
_L4:
    }

    private static void m(Context context)
    {
        File file;
        for (file = g(context); file == null || !file.exists() || !file.isDirectory();)
        {
            return;
        }

        a(file, HandShake.a(context).d);
    }

}
