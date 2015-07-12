// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.b.a;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

// Referenced classes of package com.b.a:
//            ak, f

class j
    implements android.view.ViewTreeObserver.OnPreDrawListener
{

    final ak a;
    final WeakReference b;
    f c;

    j(ak ak1, ImageView imageview, f f)
    {
        a = ak1;
        b = new WeakReference(imageview);
        c = f;
        imageview.getViewTreeObserver().addOnPreDrawListener(this);
    }

    void a()
    {
        c = null;
        ImageView imageview = (ImageView)b.get();
        ViewTreeObserver viewtreeobserver;
        if (imageview != null)
        {
            if ((viewtreeobserver = imageview.getViewTreeObserver()).isAlive())
            {
                viewtreeobserver.removeOnPreDrawListener(this);
                return;
            }
        }
    }

    public boolean onPreDraw()
    {
        ImageView imageview = (ImageView)b.get();
        ViewTreeObserver viewtreeobserver;
        if (imageview != null)
        {
            if ((viewtreeobserver = imageview.getViewTreeObserver()).isAlive())
            {
                int i = imageview.getWidth();
                int k = imageview.getHeight();
                if (i > 0 && k > 0)
                {
                    viewtreeobserver.removeOnPreDrawListener(this);
                    a.a().a(i, k).a(imageview, c);
                    return true;
                }
            }
        }
        return true;
    }
}
