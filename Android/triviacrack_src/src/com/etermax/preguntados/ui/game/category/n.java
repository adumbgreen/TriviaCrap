// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.preguntados.ui.game.category;

import com.etermax.gamescommon.shop.dto.ProductDTO;
import java.util.Comparator;

// Referenced classes of package com.etermax.preguntados.ui.game.category:
//            m

class n
    implements Comparator
{

    final m a;

    private n(m m)
    {
        a = m;
        super();
    }

    n(m m, m._cls1 _pcls1)
    {
        this(m);
    }

    public int a(ProductDTO productdto, ProductDTO productdto1)
    {
        if (productdto.getType() != com.etermax.gamescommon.shop.dto.ProductDTO.ItemType.APP_ITEM || productdto1.getType() != com.etermax.gamescommon.shop.dto.ProductDTO.ItemType.APP_ITEM) goto _L2; else goto _L1
_L1:
        if (productdto.getQuantity() >= productdto1.getQuantity()) goto _L4; else goto _L3
_L3:
        return -1;
_L4:
        return productdto.getQuantity() <= productdto1.getQuantity() ? 0 : 1;
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
