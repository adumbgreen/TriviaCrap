// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.promotion;

import com.etermax.gamescommon.shop.dto.ProductDTO;
import java.util.Comparator;

// Referenced classes of package com.etermax.gamescommon.promotion:
//            BasePromotionFragment

public class this._cls0
    implements Comparator
{

    final BasePromotionFragment this$0;

    public int compare(ProductDTO productdto, ProductDTO productdto1)
    {
        if (productdto.getPrice() < productdto1.getPrice())
        {
            return -1;
        }
        return productdto.getPrice() <= productdto1.getPrice() ? 0 : 1;
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((ProductDTO)obj, (ProductDTO)obj1);
    }

    protected ()
    {
        this$0 = BasePromotionFragment.this;
        super();
    }
}
