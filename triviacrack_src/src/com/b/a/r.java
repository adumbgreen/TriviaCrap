// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.content.Context;
import android.graphics.Bitmap;
import android.media.ExifInterface;
import android.net.Uri;

// Referenced classes of package com.b.a:
//            i, ai, aa, k, 
//            e, am, a

class r extends i
{

    r(Context context, aa aa, k k, e e, am am, a a1)
    {
        super(context, aa, k, e, am, a1);
    }

    static int a(Uri uri)
    {
        switch ((new ExifInterface(uri.getPath())).getAttributeInt("Orientation", 1))
        {
        case 4: // '\004'
        case 5: // '\005'
        case 7: // '\007'
        default:
            return 0;

        case 6: // '\006'
            return 90;

        case 3: // '\003'
            return 180;

        case 8: // '\b'
            return 270;
        }
    }

    Bitmap a(ai ai1)
    {
        a(a(ai1.c));
        return super.a(ai1);
    }
}
