// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.millennialmedia.android;


// Referenced classes of package com.millennialmedia.android:
//            ComponentRegistry

public class MMLog
{

    public MMLog()
    {
    }

    static void a(String s, String s1)
    {
        ComponentRegistry.j().a(s, s1);
    }

    static void a(String s, String s1, Throwable throwable)
    {
        ComponentRegistry.j().a(s, s1, throwable);
    }

    static void b(String s, String s1)
    {
        ComponentRegistry.j().b(s, s1);
    }

    static void c(String s, String s1)
    {
        ComponentRegistry.j().c(s, s1);
    }

    static void d(String s, String s1)
    {
        ComponentRegistry.j().d(s, s1);
    }

    static void e(String s, String s1)
    {
        ComponentRegistry.j().e(s, s1);
    }

    public static int getLogLevel()
    {
        return ComponentRegistry.j().getLogLevel();
    }

    public static void setLogLevel(int i)
    {
        ComponentRegistry.j().setLogLevel(i);
    }

    static 
    {
        ComponentRegistry.a(new LoggingComponent());
    }

    private class LoggingComponent
    {

        private static int a = 4;
        private LogHandler b;

        private void a(String s)
        {
            if (b != null)
            {
                b.handleLog(s);
            }
        }

        private void f(String s, String s1)
        {
            Log.v((new StringBuilder()).append("MMSDK-").append(s).toString(), s1);
            a(s1);
        }

        private void g(String s, String s1)
        {
            Log.d((new StringBuilder()).append("MMSDK-").append(s).toString(), s1);
            a(s1);
        }

        private void h(String s, String s1)
        {
            Log.i((new StringBuilder()).append("MMSDK-").append(s).toString(), s1);
            a(s1);
        }

        private void i(String s, String s1)
        {
            Log.w((new StringBuilder()).append("MMSDK-").append(s).toString(), s1);
            a(s1);
        }

        private void j(String s, String s1)
        {
            Log.e((new StringBuilder()).append("MMSDK-").append(s).toString(), s1);
            a(s1);
        }

        void a(String s, String s1)
        {
            if (a <= 2)
            {
                f(s, s1);
            }
        }

        void a(String s, String s1, Throwable throwable)
        {
            if (a <= 6)
            {
                j(s, (new StringBuilder()).append(s1).append(": ").append(Log.getStackTraceString(throwable)).toString());
            }
        }

        void b(String s, String s1)
        {
            if (a <= 3)
            {
                g(s, s1);
            }
        }

        void c(String s, String s1)
        {
            if (a <= 4)
            {
                h(s, s1);
            }
        }

        void d(String s, String s1)
        {
            if (a <= 5)
            {
                i(s, s1);
            }
        }

        void e(String s, String s1)
        {
            if (a <= 6)
            {
                j(s, s1);
            }
        }

        public int getLogLevel()
        {
            return a;
        }

        public void setLogLevel(int k)
        {
            a = k;
        }


        LoggingComponent()
        {
        }

        private class LogHandler
        {

            public abstract void handleLog(String s);
        }

    }

}
