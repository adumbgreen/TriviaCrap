// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package eu.janmuller.android.simplecropimage;

import android.view.View;

// Referenced classes of package eu.janmuller.android.simplecropimage:
//            CropImage, k, j, CropImageView

class a
    implements android.view.Listener
{

    final CropImage a;

    public void onClick(View view)
    {
        CropImage.a(a, k.a(CropImage.b(a), 90F));
        j j1 = new j(CropImage.b(a));
        CropImage.c(a).a(j1, true);
        a.e.run();
    }

    w(CropImage cropimage)
    {
        a = cropimage;
        super();
    }
}
