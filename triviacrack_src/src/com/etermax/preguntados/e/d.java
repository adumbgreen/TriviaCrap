// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.e;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.etermax.preguntados.datasource.dto.QuestionDTO;
import org.a.a.a;
import org.a.a.b;
import org.a.a.b.c;

// Referenced classes of package com.etermax.preguntados.e:
//            c, b

public final class d extends com.etermax.preguntados.e.c
{

    private static d f;
    private Context e;
    private Handler g;

    private d(Context context)
    {
        g = new Handler(Looper.getMainLooper());
        e = context;
    }

    public static d a(Context context)
    {
        if (f == null)
        {
            c c1 = c.a(null);
            f = new d(context.getApplicationContext());
            f.d();
            c.a(c1);
        }
        return f;
    }

    static void a(d d1, QuestionDTO questiondto)
    {
        d1.com.etermax.preguntados.e.c.a(questiondto);
    }

    static void a(d d1, String s, com.etermax.preguntados.e.b b)
    {
        d1.com.etermax.preguntados.e.c.a(s, b);
    }

    private void d()
    {
        a = e;
        b = com.etermax.tools.j.c.a(e);
        a();
    }

    public void a(QuestionDTO questiondto)
    {
        org.a.a.a.a(new b("image_task_id", 0, "md_serial_task", questiondto) {

            final QuestionDTO a;
            final d b;

            public void a()
            {
                try
                {
                    com.etermax.preguntados.e.d.a(b, a);
                    return;
                }
                catch (Throwable throwable)
                {
                    Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), throwable);
                }
            }

            
            {
                b = d.this;
                a = questiondto;
                super(s, i, s1);
            }
        });
    }

    public void a(String s, com.etermax.preguntados.e.b b)
    {
        g.post(new Runnable(s, b) {

            final String a;
            final com.etermax.preguntados.e.b b;
            final d c;

            public void run()
            {
                com.etermax.preguntados.e.d.a(c, a, b);
            }

            
            {
                c = d.this;
                a = s;
                b = b1;
                super();
            }
        });
    }
}
