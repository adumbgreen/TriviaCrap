// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.etermax.gamescommon.shop.dto;

import com.etermax.gamescommon.a;

public class ProductDTO
{

    private AppItemType app_item_type;
    private int coins;
    private Discounts discounts;
    private float price;
    private ProductIds product_ids;
    private int quantity;
    private ItemType type;

    public ProductDTO()
    {
        product_ids = new ProductIds();
        discounts = new Discounts();
    }

    public AppItemType getAppItemType()
    {
        return app_item_type;
    }

    public int getCoins()
    {
        return coins;
    }

    public float getDiscount()
    {
        return discounts.GOOGLEPLAY;
    }

    public float getPrice()
    {
        return price;
    }

    public String getProductId(a a1, boolean flag)
    {
        class _cls1
        {

            static final int $SwitchMap$com$etermax$gamescommon$BillingType[];

            static 
            {
                $SwitchMap$com$etermax$gamescommon$BillingType = new int[a.values().length];
                try
                {
                    $SwitchMap$com$etermax$gamescommon$BillingType[a.b.ordinal()] = 1;
                }
                catch (NoSuchFieldError nosuchfielderror) { }
            }
        }

        switch (_cls1..SwitchMap.com.etermax.gamescommon.BillingType[a1.ordinal()])
        {
        default:
            return product_ids.GOOGLEPLAY.DEFAULT;

        case 1: // '\001'
            break;
        }
        if (flag)
        {
            return product_ids.AMAZON.PRO;
        } else
        {
            return product_ids.AMAZON.DEFAULT;
        }
    }

    public int getQuantity()
    {
        return quantity;
    }

    public ItemType getType()
    {
        return type;
    }

    public void setDiscount(float f)
    {
        discounts.GOOGLEPLAY = f;
    }

    public void setPrice(float f)
    {
        price = f;
    }

    public void setProductId(a a1, boolean flag, String s)
    {
        switch (_cls1..SwitchMap.com.etermax.gamescommon.BillingType[a1.ordinal()])
        {
        default:
            product_ids.GOOGLEPLAY.DEFAULT = s;
            return;

        case 1: // '\001'
            break;
        }
        if (flag)
        {
            product_ids.AMAZON.PRO = s;
            return;
        } else
        {
            product_ids.AMAZON.DEFAULT = s;
            return;
        }
    }

    private class ProductIds
    {
        private class MarketId
        {

            public String DEFAULT;
            public String PRO;
            final ProductDTO this$0;

            private MarketId()
            {
                this$0 = ProductDTO.this;
                super();
            }

        }


        public MarketId AMAZON;
        public MarketId GOOGLEPLAY;
        final ProductDTO this$0;

        public ProductIds()
        {
            this$0 = ProductDTO.this;
            super();
            GOOGLEPLAY = new MarketId();
            AMAZON = new MarketId();
        }
    }


    private class Discounts
    {

        public float GOOGLEPLAY;
        final ProductDTO this$0;

        private Discounts()
        {
            this$0 = ProductDTO.this;
            super();
        }

    }

}
