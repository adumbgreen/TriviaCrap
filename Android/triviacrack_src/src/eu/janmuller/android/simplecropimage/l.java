// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.app.ProgressDialog;
import android.os.Handler;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            h, MonitoredActivity

class l extends h
    implements Runnable
{

    private final MonitoredActivity a;
    private final ProgressDialog b;
    private final Runnable c;
    private final Handler d;
    private final Runnable e = new Runnable() {

        final l a;

        public void run()
        {
            l.a(a).b(a);
            if (l.b(a).getWindow() != null)
            {
                l.b(a).dismiss();
            }
        }

            
            {
                a = l.this;
                super();
            }
    };

    public l(MonitoredActivity monitoredactivity, Runnable runnable, ProgressDialog progressdialog, Handler handler)
    {
        a = monitoredactivity;
        b = progressdialog;
        c = runnable;
        a.a(this);
        d = handler;
    }

    static MonitoredActivity a(l l1)
    {
        return l1.a;
    }

    static ProgressDialog b(l l1)
    {
        return l1.b;
    }

    public void b(MonitoredActivity monitoredactivity)
    {
        e.run();
        d.removeCallbacks(e);
    }

    public void c(MonitoredActivity monitoredactivity)
    {
        b.show();
    }

    public void d(MonitoredActivity monitoredactivity)
    {
        b.hide();
    }

    public void run()
    {
        c.run();
        d.post(e);
        return;
        Exception exception;
        exception;
        d.post(e);
        throw exception;
    }
}
