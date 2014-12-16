// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.os.Environment;
import android.support.v4.app.DialogFragment;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.etermax.o;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            CrashActivity, b

public class a
{

    private Application a;

    public a(Application application)
    {
        a = application;
    }

    static Application a(a a1)
    {
        return a1.a;
    }

    public static void a(Activity activity)
    {
        a(activity, null);
    }

    public static void a(Activity activity, DialogFragment dialogfragment)
    {
        View view = ((ViewGroup)activity.getWindow().getDecorView()).getChildAt(0);
        Bitmap bitmap = Bitmap.createBitmap(view.getWidth(), view.getHeight(), android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bitmap);
        view.draw(canvas);
        if (dialogfragment != null)
        {
            View view1 = dialogfragment.getDialog().getWindow().getDecorView().findViewById(0x1020002);
            canvas.translate((bitmap.getWidth() - view1.getWidth()) / 2, (bitmap.getHeight() - view1.getHeight()) / 2);
            view1.draw(canvas);
        }
        File file = new File((new StringBuilder()).append(Environment.getExternalStorageDirectory().toString()).append("/").append("screenshot.jpg").toString());
        try
        {
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            bitmap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 90, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            Intent intent = new Intent(activity, com/etermax/tools/bugcatcher/CrashActivity);
            intent.putExtra("image", true);
            intent.addFlags(0x10000000);
            activity.startActivity(intent);
            return;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            filenotfoundexception.printStackTrace();
            return;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
        }
    }

    private final void a(Context context, int i, Intent intent, int j)
    {
        PendingIntent pendingintent = PendingIntent.getActivity(context, 0, intent, 0x10000000);
        long l = System.currentTimeMillis();
        Notification notification = new Notification(i, context.getString(o.jira_click_to_see_crash), l);
        notification.setLatestEventInfo(context, context.getString(o.jira_crash), context.getString(o.jira_click_to_see_crash), pendingintent);
        notification.flags = 0x10 | notification.flags;
        notification.flags = 1 | notification.flags;
        notification.ledOnMS = 300;
        notification.ledOffMS = 1000;
        ((NotificationManager)context.getSystemService("notification")).notify(j, notification);
    }

    static void a(a a1, Context context, int i, Intent intent, int j)
    {
        a1.a(context, i, intent, j);
    }

    public void a(Application application)
    {
        Thread.setDefaultUncaughtExceptionHandler(new b(this, Thread.getDefaultUncaughtExceptionHandler()));
    }
}
