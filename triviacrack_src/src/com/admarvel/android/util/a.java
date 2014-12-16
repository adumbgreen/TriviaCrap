// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.util;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.View;
import android.view.Window;
import com.admarvel.android.ads.AdMarvelUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.RandomAccessFile;
import java.io.UnsupportedEncodingException;
import java.lang.ref.WeakReference;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

// Referenced classes of package com.admarvel.android.util:
//            f, Logging

public class a
{

    private static volatile com.admarvel.android.util.a b;
    private static WeakReference f;
    PrintWriter a;
    private int c;
    private File d;
    private File e;
    private String g;

    private a(Context context)
    {
        c = 20;
        g = "admarvel_adHistory";
        a = null;
        if (context != null) goto _L2; else goto _L1
_L1:
        f = null;
_L4:
        return;
_L2:
        f = new WeakReference(context);
        Context context1 = (Context)f.get();
        try
        {
            d = context1.getDir("Admarvel", 0);
            e = new File(d, g);
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
        if (e != null)
        {
            if (e.mkdir())
            {
                a(context1, 0);
            }
            File afile[] = e.listFiles(new FilenameFilter() {

                final a a;

                public boolean accept(File file, String s)
                {
                    return s.toLowerCase().endsWith(".zip");
                }

            
            {
                a = a.this;
                super();
            }
            });
            if (afile != null && afile.length > 0)
            {
                int i = afile.length;
                int j = 0;
                while (j < i) 
                {
                    afile[j].delete();
                    j++;
                }
            }
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    static int a(a a1, Context context)
    {
        return a1.c(context);
    }

    static File a(a a1)
    {
        return a1.e;
    }

    static WeakReference a()
    {
        return f;
    }

    private void a(Context context, int i)
    {
        this;
        JVM INSTR monitorenter ;
        android.content.SharedPreferences.Editor editor = context.getSharedPreferences("Ad_history_counter", 0).edit();
        editor.putInt("ad_dump_count", i);
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    static void a(a a1, String s, String s1)
    {
        a1.a(s, s1);
    }

    private void a(String s, String s1)
    {
        File file = new File(s1);
        f f1 = new f(s, "utf-8");
        f1.a("fileUpload", file);
        f1.a();
        if (file == null || file.delete()) goto _L2; else goto _L1
_L1:
        String s2 = "Unable to delete AdHistory zip file";
_L4:
        Logging.log(s2);
_L2:
        return;
        Exception exception;
        exception;
        file = null;
_L7:
        Logging.log(Log.getStackTraceString(exception));
        if (file == null || file.delete()) goto _L2; else goto _L3
_L3:
        s2 = "Unable to delete AdHistory zip file";
          goto _L4
        Exception exception1;
        exception1;
        file = null;
_L6:
        if (file != null && !file.delete())
        {
            Logging.log("Unable to delete AdHistory zip file");
        }
        throw exception1;
        exception1;
        if (true) goto _L6; else goto _L5
_L5:
        exception;
          goto _L7
    }

    private double b()
    {
        RandomAccessFile randomaccessfile;
        Matcher matcher;
        String s1;
        double d1;
        try
        {
            randomaccessfile = new RandomAccessFile("/proc/meminfo", "r");
            String s = randomaccessfile.readLine();
            matcher = Pattern.compile("(\\d+)").matcher(s);
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return 0.0D;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return 0.0D;
        }
        s1 = "";
        while (matcher.find()) 
        {
            s1 = matcher.group(1);
        }
        randomaccessfile.close();
        d1 = Double.parseDouble(s1);
        return d1;
    }

    static int b(a a1)
    {
        return a1.c;
    }

    public static a b(Context context)
    {
        if (b == null && context != null)
        {
            b = new a(context);
        }
        f = new WeakReference(context);
        return b;
    }

    private void b(int i)
    {
        File file;
        StringBuilder stringbuilder1;
        File file1;
        try
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("/sse_");
            stringbuilder.append(i);
            stringbuilder.append(".jpg");
            file = new File((new StringBuilder()).append(e.getAbsolutePath()).append(stringbuilder).toString());
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
            return;
        }
        if (file == null)
        {
            break MISSING_BLOCK_LABEL_80;
        }
        if (file.exists())
        {
            file.delete();
        }
        stringbuilder1 = new StringBuilder();
        stringbuilder1.append("/ssr_");
        stringbuilder1.append(i);
        stringbuilder1.append(".jpg");
        file1 = new File((new StringBuilder()).append(e.getAbsolutePath()).append(stringbuilder1).toString());
        if (file1 == null)
        {
            break MISSING_BLOCK_LABEL_165;
        }
        if (file1.exists())
        {
            file1.delete();
        }
    }

    private int c(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        int i = context.getSharedPreferences("Ad_history_counter", 0).getInt("ad_dump_count", 0);
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    private boolean d(Context context)
    {
        long l;
        if (android.os.Build.VERSION.SDK_INT <= 15)
        {
            break MISSING_BLOCK_LABEL_32;
        }
        l = b.a(context);
        double d1;
        double d2;
        if (l > 0L)
        {
            try
            {
                d1 = (double)l / 1048576D;
                break MISSING_BLOCK_LABEL_67;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
            }
        }
        break MISSING_BLOCK_LABEL_60;
        d2 = b();
        if (d2 > 0.0D)
        {
            d1 = d2 / 1024D;
            break MISSING_BLOCK_LABEL_67;
        }
        d1 = -1D;
        while (d1 == -1D || d1 >= 450D) 
        {
            return false;
        }
        return true;
    }

    private boolean e(Context context)
    {
        if (android.os.Build.VERSION.SDK_INT < 10)
        {
            return true;
        } else
        {
            return d(context);
        }
    }

    public int a(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        int i;
        SharedPreferences sharedpreferences = context.getSharedPreferences("Ad_history_counter", 0);
        i = 1 + sharedpreferences.getInt("ad_dump_count", 0) % c;
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putInt("ad_dump_count", i);
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public String a(int i)
    {
        String s = UUID.randomUUID().toString();
        if (AdMarvelUtils.getAndroidSDKVersion() >= 11)
        {
            (new Handler()).post(new a(s, i));
            return s;
        } else
        {
            c c1 = new c(s);
            Integer ainteger[] = new Integer[1];
            ainteger[0] = Integer.valueOf(i);
            c1.execute(ainteger);
            return s;
        }
    }

    public void a(String s)
    {
        this;
        JVM INSTR monitorenter ;
        Context context = (Context)f.get();
        if (!(context instanceof Activity)) goto _L2; else goto _L1
_L1:
        if (!e(context)) goto _L4; else goto _L3
_L3:
        Logging.log("AdHistory Capture: Screen Dump discarded");
_L2:
        this;
        JVM INSTR monitorexit ;
        return;
_L4:
        View view = ((Activity)context).getWindow().getDecorView().findViewById(0x1020002).findViewById(0x1020002).getRootView();
        if (view != null)
        {
            break MISSING_BLOCK_LABEL_84;
        }
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        null.recycle();
        continue; /* Loop/switch isn't completed */
        Exception exception;
        exception;
        throw exception;
        Boolean boolean1;
        FileOutputStream fileoutputstream;
        boolean1 = Boolean.valueOf(view.isDrawingCacheEnabled());
        view.setDrawingCacheEnabled(true);
        fileoutputstream = new FileOutputStream((new StringBuilder()).append(e.getAbsolutePath()).append(s).toString());
        if (fileoutputstream == null) goto _L6; else goto _L5
_L5:
        if (((Activity)context).getResources().getDisplayMetrics().density <= 1.0F) goto _L8; else goto _L7
_L7:
        if (!view.getDrawingCache().compress(android.graphics.Bitmap.CompressFormat.JPEG, 15, fileoutputstream))
        {
            Logging.log("AdHistory Capture: Screen Dump failed");
        }
_L10:
        fileoutputstream.flush();
        fileoutputstream.close();
        if (!boolean1.booleanValue())
        {
            view.setDrawingCacheEnabled(false);
        }
_L6:
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        null.recycle();
        continue; /* Loop/switch isn't completed */
_L8:
        if (view.getDrawingCache().compress(android.graphics.Bitmap.CompressFormat.JPEG, 60, fileoutputstream)) goto _L10; else goto _L9
_L9:
        Logging.log("AdHistory Capture: Screen Dump failed");
          goto _L10
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        Logging.log(filenotfoundexception.getMessage());
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        null.recycle();
        continue; /* Loop/switch isn't completed */
        IOException ioexception;
        ioexception;
        Logging.log(ioexception.getMessage());
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        null.recycle();
        continue; /* Loop/switch isn't completed */
        Exception exception2;
        exception2;
        exception2.printStackTrace();
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        null.recycle();
        continue; /* Loop/switch isn't completed */
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
        outofmemoryerror.printStackTrace();
        AdMarvelUtils.disableLogDump();
        if (true)
        {
            continue; /* Loop/switch isn't completed */
        }
        null.recycle();
        if (true) goto _L2; else goto _L11
_L11:
        Exception exception1;
        exception1;
        if (true)
        {
            break MISSING_BLOCK_LABEL_333;
        }
        null.recycle();
        throw exception1;
    }

    public void a(String s, int i)
    {
        if (f != null && f.get() != null)
        {
            StringBuilder stringbuilder = new StringBuilder();
            stringbuilder.append("/log_");
            stringbuilder.append(i);
            stringbuilder.append(".txt");
            StringBuilder stringbuilder1;
            try
            {
                a = new PrintWriter((new StringBuilder()).append(e.getAbsolutePath()).append(stringbuilder.toString()).toString(), "UTF-8");
            }
            catch (FileNotFoundException filenotfoundexception)
            {
                filenotfoundexception.printStackTrace();
            }
            catch (UnsupportedEncodingException unsupportedencodingexception)
            {
                unsupportedencodingexception.printStackTrace();
            }
            if (a != null)
            {
                a.print(s);
                a.close();
            }
            stringbuilder1 = new StringBuilder();
            stringbuilder1.append("/ss_");
            stringbuilder1.append(i);
            stringbuilder1.append(".jpg");
            a(stringbuilder1.toString());
            b(i);
        }
    }

    private class b
    {

        static long a(Context context)
        {
            long l;
            try
            {
                ActivityManager activitymanager = (ActivityManager)context.getSystemService("activity");
                android.app.ActivityManager.MemoryInfo memoryinfo = new android.app.ActivityManager.MemoryInfo();
                activitymanager.getMemoryInfo(memoryinfo);
                l = memoryinfo.totalMem;
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return 0L;
            }
            return l;
        }
    }


    private class a
        implements Runnable
    {

        final com.admarvel.android.util.a a;
        private final String b;
        private final int c;

        public void run()
        {
            try
            {
                c c1 = a. new c(b);
                java.util.concurrent.Executor executor = AsyncTask.THREAD_POOL_EXECUTOR;
                Integer ainteger[] = new Integer[1];
                ainteger[0] = Integer.valueOf(c);
                c1.executeOnExecutor(executor, ainteger);
                return;
            }
            catch (Exception exception)
            {
                Logging.log(Log.getStackTraceString(exception));
            }
        }

        public a(String s, int i)
        {
            a = com.admarvel.android.util.a.this;
            super();
            b = s;
            c = i;
        }
    }


    private class c extends AsyncTask
    {

        final com.admarvel.android.util.a a;
        private final String b;
        private final String c;

        protected transient String a(Integer ainteger[])
        {
            int i;
            File afile[];
            int j;
            ArrayList arraylist;
            ArrayList arraylist1;
            int k;
            int l;
            Context context;
            String s;
            String s1;
            String s2;
            String s3;
            int i1;
            int j1;
            int k1;
            String as[];
            Iterator iterator;
            int l1;
            String s4;
            String s6;
            String s7;
            String s11;
            int i2;
            try
            {
                i = ainteger[0].intValue();
                afile = com.admarvel.android.util.a.a(a).listFiles();
            }
            catch (Exception exception)
            {
                exception.printStackTrace();
                return null;
            }
            if (afile == null) goto _L2; else goto _L1
_L1:
            if (afile.length != 0) goto _L3; else goto _L2
_L3:
            if (i <= com.admarvel.android.util.a.b(a)) goto _L5; else goto _L4
_L4:
            j = com.admarvel.android.util.a.b(a);
_L14:
            arraylist = new ArrayList();
            arraylist1 = new ArrayList();
            k = afile.length;
            l = 0;
_L7:
            if (l >= k)
            {
                break; /* Loop/switch isn't completed */
            }
            arraylist1.add(afile[l]);
            l++;
            if (true) goto _L7; else goto _L6
_L6:
            context = (Context)com.admarvel.android.util.a.a().get();
            s = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/log_").toString();
            s1 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/ss_").toString();
            s2 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/sse_").toString();
            s3 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/ssr_").toString();
            if (context == null) goto _L9; else goto _L8
_L8:
            i1 = com.admarvel.android.util.a.a(a, context);
            j1 = 0;
_L15:
            k1 = j1 + 1;
            if (j1 == j) goto _L9; else goto _L10
_L10:
            if (i1 > 0)
            {
                break MISSING_BLOCK_LABEL_280;
            }
            i1 = com.admarvel.android.util.a.b(a);
            File file = new File((new StringBuilder()).append(s).append(i1).append(".txt").toString());
            if (file.exists())
            {
                arraylist.add(file.getAbsolutePath());
            }
            File file1 = new File((new StringBuilder()).append(s1).append(i1).append(".jpg").toString());
            if (file1.exists())
            {
                arraylist.add(file1.getAbsolutePath());
            }
            File file2 = new File((new StringBuilder()).append(s2).append(i1).append(".jpg").toString());
            if (file2.exists())
            {
                arraylist.add(file2.getAbsolutePath());
            }
            File file3 = new File((new StringBuilder()).append(s3).append(i1).append(".jpg").toString());
            if (file3.exists())
            {
                arraylist.add(file3.getAbsolutePath());
            }
            break MISSING_BLOCK_LABEL_811;
_L9:
            as = new String[arraylist.size()];
            iterator = arraylist.iterator();
            l1 = 0;
_L12:
            if (!iterator.hasNext())
            {
                break; /* Loop/switch isn't completed */
            }
            s11 = (String)iterator.next();
            i2 = l1 + 1;
            as[l1] = s11;
            l1 = i2;
            if (true) goto _L12; else goto _L11
_L11:
            s4 = (new StringBuilder()).append(com.admarvel.android.util.a.a(a).getAbsolutePath()).append("/").append(b).toString();
            (new com.admarvel.android.util.c(as, s4)).a();
            String s5 = (new StringBuilder()).append("http://sdk-rh.admarvel.com/adhistory/upload?").append("platform=android").toString();
            s6 = (new StringBuilder()).append(s5).append("&deviceid=").append(OptionalUtils.getId(context)).toString();
            if (context == null)
            {
                break MISSING_BLOCK_LABEL_796;
            }
            s7 = (new StringBuilder()).append(s6).append("&appid=").append(context.getPackageName()).toString();
_L13:
            String s8 = (new StringBuilder()).append(s7).append("&zipguid=").append(c).toString();
            String s9 = (new StringBuilder()).append(s8).append("&timestamp=").append(System.currentTimeMillis()).toString();
            String s10 = (new StringBuilder()).append(s9).append(com.admarvel.android.ads.a.a).toString();
            com.admarvel.android.util.a.a(a, s10, s4);
            return s4;
            s7 = s6;
              goto _L13
_L5:
            j = i;
              goto _L14
_L2:
            return null;
            i1--;
            j1 = k1;
              goto _L15
        }

        protected void a(String s)
        {
            super.onPostExecute(s);
        }

        protected Object doInBackground(Object aobj[])
        {
            return a((Integer[])aobj);
        }

        protected void onPostExecute(Object obj)
        {
            a((String)obj);
        }

        protected void onPreExecute()
        {
            super.onPreExecute();
        }

        public c(String s)
        {
            a = com.admarvel.android.util.a.this;
            super();
            c = s;
            b = (new StringBuilder()).append(c).append(".zip").toString();
        }
    }

}
