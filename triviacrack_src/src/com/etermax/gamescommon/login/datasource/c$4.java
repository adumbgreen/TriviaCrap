// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.login.datasource;

import android.os.AsyncTask;
import com.etermax.gamescommon.login.datasource.a.a;
import com.etermax.gamescommon.login.datasource.dto.DeviceInfo;
import com.etermax.tools.a.a.c;

// Referenced classes of package com.etermax.gamescommon.login.datasource:
//            c, a

class a extends AsyncTask
{

    final DeviceInfo a;
    final com.etermax.gamescommon.login.datasource.c b;

    protected transient Void a(Void avoid[])
    {
        try
        {
            com.etermax.gamescommon.login.datasource.c.a(b, new c() {

                final c._cls4 a;

                public Void a()
                {
                    a.b.c.a(Long.valueOf(a.b.d.e()), a.a);
                    a.b.i.a(com.etermax.gamescommon.login.datasource.c.a(a.b), true);
                    if (a.a.getInstallation_id() != null)
                    {
                        a.b.d.f(a.a.getInstallation_id());
                    }
                    return null;
                }

                public Object b()
                {
                    return a();
                }

            
            {
                a = c._cls4.this;
                super();
            }
            });
        }
        catch (Exception exception) { }
        return null;
    }

    protected Object doInBackground(Object aobj[])
    {
        return a((Void[])aobj);
    }

    DeviceInfo(com.etermax.gamescommon.login.datasource.c c1, DeviceInfo deviceinfo)
    {
        b = c1;
        a = deviceinfo;
        super();
    }
}
