// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.admarvel.android.a;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.os.Environment;
import android.util.Log;
import android.webkit.WebView;
import com.admarvel.android.util.Logging;
import java.io.File;
import java.io.FileInputStream;
import java.io.ObjectInputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.admarvel.android.a:
//            e

public class b extends AsyncTask
{

    private final WeakReference a;
    private final StringBuilder b = new StringBuilder();

    public b(Context context)
    {
        a = new WeakReference(context);
    }

    static WeakReference a(b b1)
    {
        return b1.a;
    }

    private boolean a(Context context, ArrayList arraylist)
    {
        if (arraylist != null)
        {
            try
            {
                String s;
                for (Iterator iterator = arraylist.iterator(); iterator.hasNext(); b.append("<img src=\"").append(s).append("\" />"))
                {
                    s = (String)iterator.next();
                }

            }
            catch (Exception exception)
            {
                Log.e("admarvel", Log.getStackTraceString(exception));
                return false;
            }
        }
        if (b == null || b.length() <= 0)
        {
            break MISSING_BLOCK_LABEL_187;
        }
        if (Thread.currentThread().getName().equalsIgnoreCase("main"))
        {
            WebView webview = new WebView(context.getApplicationContext());
            Logging.log((new StringBuilder()).append("Firing Install Tracking Pixels: ").append(b.toString()).toString());
            webview.loadDataWithBaseURL(null, b.toString(), "text/html", "utf-8", null);
            break MISSING_BLOCK_LABEL_187;
        }
        Thread thread = new Thread() {

            final b a;

            public void run()
            {
                if (b.a(a) != null)
                {
                    Context context1 = (Context)b.a(a).get();
                    if (context1 != null)
                    {
                        WebView webview1 = new WebView(context1.getApplicationContext());
                        Logging.log((new StringBuilder()).append("Firing Install Tracking Pixels: ").append(b.b(a).toString()).toString());
                        webview1.loadDataWithBaseURL(null, b.b(a).toString(), "text/html", "utf-8", null);
                    }
                }
            }

            
            {
                a = b.this;
                super();
            }
        };
        if (context instanceof Activity)
        {
            ((Activity)context).runOnUiThread(thread);
        }
        return true;
    }

    static StringBuilder b(b b1)
    {
        return b1.b;
    }

    protected transient Object doInBackground(Object aobj[])
    {
        int i = 0;
        Context context;
        if (a == null)
        {
            break MISSING_BLOCK_LABEL_364;
        }
        context = (Context)a.get();
        if (context == null)
        {
            break MISSING_BLOCK_LABEL_364;
        }
        File afile[];
        SharedPreferences sharedpreferences = context.getSharedPreferences(e.a("admarvel"), 0);
        if (!sharedpreferences.getBoolean(e.a("registered_tracking_event"), false))
        {
            String s = context.getPackageName();
            if ("mounted".equals(Environment.getExternalStorageState()))
            {
                File file2 = new File(Environment.getExternalStorageDirectory(), (new StringBuilder()).append("/").append(e.a("adm_tracker_dir")).append("/").append(e.a(s)).toString());
                if (file2.exists())
                {
                    Object obj1 = (new ObjectInputStream(new FileInputStream(file2))).readObject();
                    if ((obj1 instanceof ArrayList) && a(context, (ArrayList)obj1))
                    {
                        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
                        editor.putBoolean(e.a("registered_tracking_event"), true);
                        editor.commit();
                        file2.delete();
                    }
                }
            }
        }
        File file = new File(Environment.getExternalStorageDirectory(), (new StringBuilder()).append("/").append(e.a("adm_tracker_dir")).toString());
        if (!file.exists() || !file.isDirectory())
        {
            break MISSING_BLOCK_LABEL_364;
        }
        afile = file.listFiles();
_L1:
        if (i >= afile.length)
        {
            break MISSING_BLOCK_LABEL_364;
        }
        File file1 = afile[i];
        if (file1.isFile() && e.a(context, e.b(file1.getName())))
        {
            Object obj = (new ObjectInputStream(new FileInputStream(file1))).readObject();
            if ((obj instanceof ArrayList) && a(context, (ArrayList)obj))
            {
                file1.delete();
            }
        }
        i++;
          goto _L1
        Exception exception;
        exception;
        exception.printStackTrace();
        return null;
    }
}
