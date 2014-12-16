// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.mopub.mobileads;

import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DateAndTime;
import com.mopub.common.util.Streams;
import com.mopub.mobileads.util.Base64;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

// Referenced classes of package com.mopub.mobileads:
//            AdConfiguration

public class AdAlertReporter
{

    private final String a = (new SimpleDateFormat("M/d/yy hh:mm:ss a z")).format(DateAndTime.now());
    private final View b;
    private final Context c;
    private final AdConfiguration d;
    private Intent e;
    private ArrayList f;
    private String g;
    private String h;

    public AdAlertReporter(Context context, View view, AdConfiguration adconfiguration)
    {
        b = view;
        c = context;
        d = adconfiguration;
        f = new ArrayList();
        a();
        Bitmap bitmap = b();
        String s = a(bitmap);
        g = c();
        h = d();
        e();
        String as[] = new String[3];
        as[0] = g;
        as[1] = h;
        as[2] = s;
        a(as);
        a("mp_adalert_parameters.txt", g);
        a("mp_adalert_markup.html", h);
        a("mp_adalert_screenshot.png", bitmap);
    }

    private String a(long l)
    {
        if (l != -1L)
        {
            return (new SimpleDateFormat("M/d/yy hh:mm:ss a z")).format(new Date(l));
        } else
        {
            return null;
        }
    }

    private String a(Bitmap bitmap)
    {
        String s = null;
        if (bitmap != null)
        {
            String s1;
            try
            {
                ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
                bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 25, bytearrayoutputstream);
                s1 = Base64.encodeToString(bytearrayoutputstream.toByteArray(), 0);
            }
            catch (Exception exception)
            {
                return null;
            }
            s = s1;
        }
        return s;
    }

    private void a()
    {
        e = new Intent("android.intent.action.SEND_MULTIPLE", Uri.parse("mailto:"));
        e.setType("plain/text");
        e.putExtra("android.intent.extra.EMAIL", new String[] {
            "creative-review@mopub.com"
        });
    }

    private void a(String s, Bitmap bitmap)
    {
        FileOutputStream fileoutputstream;
        fileoutputstream = null;
        if (s == null || bitmap == null)
        {
            return;
        }
        FileOutputStream fileoutputstream1 = c.openFileOutput(s, 1);
        fileoutputstream = fileoutputstream1;
        bitmap.compress(android.graphics.Bitmap.CompressFormat.PNG, 25, fileoutputstream);
        Uri uri = Uri.fromFile(new File((new StringBuilder()).append(c.getFilesDir()).append(File.separator).append(s).toString()));
        f.add(uri);
        Streams.closeStream(fileoutputstream);
        return;
        Exception exception2;
        exception2;
        MoPubLog.d((new StringBuilder()).append("Unable to write text attachment to file: ").append(s).toString());
        Streams.closeStream(fileoutputstream);
        return;
        Exception exception;
        exception;
        Object obj;
        Exception exception1;
        obj = null;
        exception1 = exception;
_L2:
        Streams.closeStream(((java.io.Closeable) (obj)));
        throw exception1;
        Exception exception3;
        exception3;
        obj = fileoutputstream;
        exception1 = exception3;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(String s, String s1)
    {
        FileOutputStream fileoutputstream;
        fileoutputstream = null;
        if (s == null || s1 == null)
        {
            return;
        }
        FileOutputStream fileoutputstream1 = c.openFileOutput(s, 1);
        fileoutputstream = fileoutputstream1;
        fileoutputstream.write(s1.getBytes());
        Uri uri = Uri.fromFile(new File((new StringBuilder()).append(c.getFilesDir()).append(File.separator).append(s).toString()));
        f.add(uri);
        Streams.closeStream(fileoutputstream);
        return;
        Exception exception2;
        exception2;
        MoPubLog.d((new StringBuilder()).append("Unable to write text attachment to file: ").append(s).toString());
        Streams.closeStream(fileoutputstream);
        return;
        Exception exception;
        exception;
        Object obj;
        Exception exception1;
        obj = null;
        exception1 = exception;
_L2:
        Streams.closeStream(((java.io.Closeable) (obj)));
        throw exception1;
        Exception exception3;
        exception3;
        obj = fileoutputstream;
        exception1 = exception3;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private void a(StringBuilder stringbuilder, String s, String s1)
    {
        stringbuilder.append(s);
        stringbuilder.append(" : ");
        stringbuilder.append(s1);
        stringbuilder.append("\n");
    }

    private transient void a(String as[])
    {
        StringBuilder stringbuilder = new StringBuilder();
        for (int i = 0; i < as.length; i++)
        {
            stringbuilder.append(as[i]);
            if (i != -1 + as.length)
            {
                stringbuilder.append("\n=================\n");
            }
        }

        e.putExtra("android.intent.extra.TEXT", stringbuilder.toString());
    }

    private Bitmap b()
    {
        if (b != null && b.getRootView() != null)
        {
            View view = b.getRootView();
            boolean flag = view.isDrawingCacheEnabled();
            view.setDrawingCacheEnabled(true);
            Bitmap bitmap = view.getDrawingCache();
            if (bitmap != null)
            {
                Bitmap bitmap1 = Bitmap.createBitmap(bitmap);
                view.setDrawingCacheEnabled(flag);
                return bitmap1;
            }
        }
        return null;
    }

    private String c()
    {
        StringBuilder stringbuilder = new StringBuilder();
        if (d != null)
        {
            a(stringbuilder, "sdk_version", d.w());
            a(stringbuilder, "creative_id", d.p());
            a(stringbuilder, "platform_version", Integer.toString(d.u()));
            a(stringbuilder, "device_model", d.t());
            a(stringbuilder, "ad_unit_id", d.b());
            a(stringbuilder, "device_locale", d.s());
            a(stringbuilder, "device_id", d.q());
            a(stringbuilder, "network_type", d.f());
            a(stringbuilder, "platform", d.v());
            a(stringbuilder, "timestamp", a(d.k()));
            a(stringbuilder, "ad_type", d.e());
            a(stringbuilder, "ad_size", (new StringBuilder()).append("{").append(d.l()).append(", ").append(d.m()).append("}").toString());
        }
        return stringbuilder.toString();
    }

    private String d()
    {
        if (d != null)
        {
            return d.c();
        } else
        {
            return "";
        }
    }

    private void e()
    {
        e.putExtra("android.intent.extra.SUBJECT", (new StringBuilder()).append("New creative violation report - ").append(a).toString());
    }

    public void send()
    {
        e.putParcelableArrayListExtra("android.intent.extra.STREAM", f);
        Intent intent = Intent.createChooser(e, "Send Email...");
        intent.addFlags(0x10000000);
        c.startActivity(intent);
    }
}
