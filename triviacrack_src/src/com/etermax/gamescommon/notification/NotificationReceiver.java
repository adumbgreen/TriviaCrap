// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.notification;

import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.os.Bundle;
import android.text.TextUtils;
import com.b.a.aa;
import com.b.a.ak;
import com.b.a.ar;
import com.etermax.gamescommon.datasource.l;
import com.etermax.gamescommon.e;
import com.etermax.gamescommon.f.b.b;
import com.etermax.gamescommon.g;
import com.etermax.gamescommon.notification.a.a;
import com.etermax.o;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.etermax.gamescommon.notification:
//            h, g, d

public abstract class NotificationReceiver extends BroadcastReceiver
{

    protected e a;
    protected l b;
    protected d c;

    public NotificationReceiver()
    {
    }

    private Bitmap a(Context context, String s)
    {
        return aa.a(context).a(s).a(new ar() {

            final NotificationReceiver a;

            public Bitmap a(Bitmap bitmap)
            {
                Bitmap bitmap1 = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
                Canvas canvas = new Canvas(bitmap1);
                Paint paint = new Paint();
                Rect rect = new Rect(0, 0, bitmap.getWidth(), bitmap.getHeight());
                paint.setAntiAlias(true);
                canvas.drawARGB(0, 0, 0, 0);
                canvas.drawCircle(bitmap.getWidth() / 2, bitmap.getHeight() / 2, bitmap.getWidth() / 2, paint);
                paint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
                canvas.drawBitmap(bitmap, rect, rect, paint);
                bitmap.recycle();
                return bitmap1;
            }

            public String a()
            {
                return "rounded";
            }

            
            {
                a = NotificationReceiver.this;
                super();
            }
        }).c();
    }

    private final void a(b b1, boolean flag)
    {
        if (flag)
        {
            b.b(b1.a().intValue());
        }
        b.a(b1);
    }

    protected abstract int a();

    protected void a(Context context, Bundle bundle)
    {
        if (bundle != null)
        {
            a a1 = b(context, bundle);
            if (a1 != null)
            {
                a(context, a1, new com.etermax.gamescommon.notification.g(a1) {

                    final a a;
                    final NotificationReceiver b;

                    public void a(Context context1, int i, android.support.v4.app.NotificationCompat.Builder builder, h h1)
                    {
                        a.a(builder, h1);
                        ((NotificationManager)context1.getSystemService("notification")).notify(i, builder.build());
                    }

            
            {
                b = NotificationReceiver.this;
                a = a1;
                super();
            }
                });
            }
        }
    }

    protected void a(Context context, a a1, com.etermax.gamescommon.notification.g g1)
    {
        b b1;
        Object obj;
        String s;
        android.text.SpannableString spannablestring;
        android.support.v4.app.NotificationCompat.Builder builder;
        h h1;
        android.support.v4.app.NotificationCompat.InboxStyle inboxstyle;
        android.support.v4.app.NotificationCompat.InboxStyle inboxstyle1;
        b1 = a1.a();
        boolean flag;
        boolean flag1;
        int i;
        int j;
        Iterator iterator;
        if (!a1.b())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        a(b1, flag);
        flag1 = a.a(g.f, true);
        i = 0;
        if (flag1)
        {
            i = 1;
        }
        if (a.a(g.g, true))
        {
            i |= 2;
        }
        if (a1.b())
        {
            obj = b.a(b1.a().intValue());
        } else
        {
            ArrayList arraylist = new ArrayList();
            arraylist.add(b1);
            obj = arraylist;
        }
        if (obj == null || ((List) (obj)).isEmpty()) goto _L2; else goto _L1
_L1:
        if (!TextUtils.isEmpty(b1.d()) && b1.f() != null)
        {
            s = b1.d();
        } else
        {
            s = context.getString(o.app_name);
        }
        spannablestring = b1.g();
        builder = (new android.support.v4.app.NotificationCompat.Builder(context)).setSmallIcon(a()).setContentTitle(s).setContentText(spannablestring).setDefaults(i).setWhen(b1.i().longValue()).setAutoCancel(true).setLights(0xff00ffff, 300, 1000);
        h1 = com.etermax.gamescommon.notification.h.a;
        inboxstyle = null;
        if (obj == null) goto _L4; else goto _L3
_L3:
        j = ((List) (obj)).size();
        inboxstyle = null;
        if (j <= 1) goto _L4; else goto _L5
_L5:
        int k;
        int i1;
        inboxstyle1 = new android.support.v4.app.NotificationCompat.InboxStyle(builder);
        HashSet hashset = new HashSet();
        HashSet hashset1 = new HashSet();
        for (iterator = ((List) (obj)).iterator(); iterator.hasNext();)
        {
            b b3 = (b)iterator.next();
            if (b3.b() != null)
            {
                hashset1.add(b3.b());
            } else
            {
                hashset.add(b3.c());
            }
        }

        k = hashset.size();
        i1 = hashset1.size();
        if (i1 + k <= 1) goto _L7; else goto _L6
_L6:
        h h3 = h.c;
        inboxstyle1.setBigContentTitle(context.getString(o.app_name));
        builder.setContentTitle(context.getString(o.app_name));
        for (Iterator iterator2 = ((List) (obj)).iterator(); iterator2.hasNext();)
        {
            b b2 = (b)iterator2.next();
            if (b2.h() == null)
            {
                inboxstyle1.addLine(b2.g());
            } else
            {
                inboxstyle1.addLine(b2.h());
            }
        }

        h1 = h3;
_L13:
        Object aobj[] = new Object[2];
        aobj[0] = Integer.valueOf(((List) (obj)).size());
        aobj[1] = Integer.valueOf(i1 + k);
        android.text.SpannableString spannablestring1 = a1.a(h1, aobj);
        inboxstyle1.setSummaryText(spannablestring1);
        if (spannablestring1 != null)
        {
            builder.setContentText(spannablestring1);
        }
        inboxstyle = inboxstyle1;
_L4:
        if (inboxstyle == null) goto _L9; else goto _L8
_L8:
        builder.setStyle(inboxstyle);
_L11:
        if (g1 != null)
        {
            g1.a(context, b1.a().intValue(), builder, h1);
        }
_L2:
        return;
_L7:
        h h2;
        h2 = com.etermax.gamescommon.notification.h.b;
        IOException ioexception;
        Iterator iterator1;
        if (!TextUtils.isEmpty(b1.e()))
        {
            try
            {
                builder.setLargeIcon(a(context, b1.e()));
            }
            catch (IOException ioexception1) { }
        }
        if (!TextUtils.isEmpty(b1.d()) && b1.f() != null)
        {
            inboxstyle1.setBigContentTitle(b1.d());
        } else
        {
            inboxstyle1.setBigContentTitle(context.getString(o.app_name));
        }
        for (iterator1 = ((List) (obj)).iterator(); iterator1.hasNext(); inboxstyle1.addLine(((b)iterator1.next()).g())) { }
        break; /* Loop/switch isn't completed */
_L9:
        builder.setStyle((new android.support.v4.app.NotificationCompat.BigTextStyle(builder)).setBigContentTitle(s).bigText(spannablestring));
        if (!TextUtils.isEmpty(b1.e()))
        {
            try
            {
                builder.setLargeIcon(a(context, b1.e()));
            }
            // Misplaced declaration of an exception variable
            catch (IOException ioexception) { }
        }
        if (true) goto _L11; else goto _L10
_L10:
        h1 = h2;
        if (true) goto _L13; else goto _L12
_L12:
    }

    protected abstract a b(Context context, Bundle bundle);

    public void onReceive(Context context, Intent intent)
    {
        if (a.a(g.e, true))
        {
            Bundle bundle = intent.getExtras();
            if (!c.a(bundle))
            {
                a(context, bundle);
            }
        }
    }
}
