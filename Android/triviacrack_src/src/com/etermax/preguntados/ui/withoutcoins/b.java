// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.withoutcoins;

import com.etermax.gamescommon.shop.dto.ProductDTO;
import java.util.Comparator;

// Referenced classes of package com.etermax.preguntados.ui.withoutcoins:
//            c, a

class b
    implements Comparator
{

    final a a;
    private c b;

    public b(a a1, c c1)
    {
        a = a1;
        super();
        b = c1;
    }

    public int a(ProductDTO productdto, ProductDTO productdto1)
    {
        if (!c.b.equals(b)) goto _L2; else goto _L1
_L1:
        if (productdto1.getPrice() >= productdto.getPrice()) goto _L4; else goto _L3
_L3:
        return -1;
_L4:
        return productdto1.getPrice() <= productdto.getPrice() ? 0 : 1;
_L2:
        if (productdto.getPrice() >= productdto1.getPrice())
        {
            return productdto.getPrice() <= productdto1.getPrice() ? 0 : 1;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public int compare(Object obj, Object obj1)
    {
        return a((ProductDTO)obj, (ProductDTO)obj1);
    }
}
