// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.tools.bugcatcher;

import android.content.Intent;
import java.io.PrintWriter;
import java.io.StringWriter;

// Referenced classes of package com.etermax.tools.bugcatcher:
//            a, CrashActivity

class b
    implements Thread.UncaughtExceptionHandler
{

    final a a;
    private Thread.UncaughtExceptionHandler b;

    b(a a1, Thread.UncaughtExceptionHandler uncaughtexceptionhandler)
    {
        a = a1;
        super();
        b = uncaughtexceptionhandler;
    }

    public void uncaughtException(Thread thread, Throwable throwable)
    {
        StringWriter stringwriter = new StringWriter();
        throwable.printStackTrace(new PrintWriter(stringwriter));
        Intent intent = new Intent(com.etermax.tools.bugcatcher.a.a(a), com/etermax/tools/bugcatcher/CrashActivity);
        intent.putExtra("message", throwable.getMessage());
        intent.putExtra("stacktrace", stringwriter.toString());
        intent.addFlags(0x10000000);
        com.etermax.tools.bugcatcher.a.a(a, com.etermax.tools.bugcatcher.a.a(a), 0x1080027, intent, 55);
        b.uncaughtException(thread, throwable);
    }
}
