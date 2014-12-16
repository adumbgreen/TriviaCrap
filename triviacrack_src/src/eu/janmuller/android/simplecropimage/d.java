// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;


// Referenced classes of package eu.janmuller.android.simplecropimage:
//            b

class d
{

    public b a;
    public android.graphics.BitmapFactory.Options b;

    private d()
    {
        a = b.b;
    }

    d(a._cls1 _pcls1)
    {
        this();
    }

    public String toString()
    {
        String s;
        if (a == b.a)
        {
            s = "Cancel";
        } else
        if (a == b.b)
        {
            s = "Allow";
        } else
        {
            s = "?";
        }
        return (new StringBuilder()).append("thread state = ").append(s).append(", options = ").append(b).toString();
    }
}
