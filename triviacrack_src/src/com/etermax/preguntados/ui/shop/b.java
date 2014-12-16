// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.shop;

import com.etermax.gamescommon.shop.dto.ProductDTO;
import java.util.Comparator;

// Referenced classes of package com.etermax.preguntados.ui.shop:
//            a

class b
    implements Comparator
{

    final a a;

    private b(a a1)
    {
        a = a1;
        super();
    }

    b(a a1, a._cls1 _pcls1)
    {
        this(a1);
    }

    public int a(ProductDTO productdto, ProductDTO productdto1)
    {
        if (productdto1.getPrice() < productdto.getPrice())
        {
            return -1;
        }
        return productdto1.getPrice() <= productdto.getPrice() ? 0 : 1;
    }

    public int compare(Object obj, Object obj1)
    {
        return a((ProductDTO)obj, (ProductDTO)obj1);
    }
}
