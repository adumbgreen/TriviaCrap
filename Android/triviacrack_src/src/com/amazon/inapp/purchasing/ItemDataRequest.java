// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.Iterator;
import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            Request, Validator, ImplementationFactory, RequestHandler

final class ItemDataRequest extends Request
{

    private final Set _skus;

    ItemDataRequest(Set set)
    {
        Validator.validateNotNull(set, "skus");
        Validator.validateNotEmpty(set, "skus");
        for (Iterator iterator = set.iterator(); iterator.hasNext();)
        {
            if (((String)iterator.next()).trim().length() == 0)
            {
                throw new IllegalArgumentException("Empty SKU values are not allowed");
            }
        }

        if (set.size() > 100)
        {
            throw new IllegalArgumentException((new StringBuilder()).append(set.size()).append(" SKUs were provided, but no more than ").append(100).append(" SKUs are allowed").toString());
        } else
        {
            _skus = set;
            return;
        }
    }

    Runnable getRunnable()
    {
        return new Runnable() {

            final ItemDataRequest this$0;

            public void run()
            {
                ImplementationFactory.getRequestHandler().sendItemDataRequest(_skus, getRequestId());
            }

            
            {
                this$0 = ItemDataRequest.this;
                super();
            }
        };
    }

}
