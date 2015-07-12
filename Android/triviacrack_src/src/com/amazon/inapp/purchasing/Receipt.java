// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Validator, SubscriptionPeriod

public final class Receipt
{

    private static final String TO_STRING_FORMAT = "(%s, sku: \"%s\", itemType: \"%s\", subscriptionPeriod: %s, purchaseToken: \"%s\")";
    private final boolean _isContentAvailable;
    private final Item.ItemType _itemType;
    private final String _purchaseToken;
    private final String _sku;
    private final SubscriptionPeriod _subscriptionPeriod;

    Receipt(String s, Item.ItemType itemtype, boolean flag, SubscriptionPeriod subscriptionperiod, String s1)
    {
        Validator.validateNotNull(s, "sku");
        Validator.validateNotNull(itemtype, "itemType");
        Validator.validateNotNull(s1, "purchaseToken");
        if (Item.ItemType.SUBSCRIPTION == itemtype)
        {
            Validator.validateNotNull(subscriptionperiod, "subscriptionPeriod");
        }
        _sku = s;
        _itemType = itemtype;
        _purchaseToken = s1;
        _isContentAvailable = flag;
        _subscriptionPeriod = subscriptionperiod;
    }

    public Item.ItemType getItemType()
    {
        return _itemType;
    }

    public String getPurchaseToken()
    {
        return _purchaseToken;
    }

    public String getSku()
    {
        return _sku;
    }

    public SubscriptionPeriod getSubscriptionPeriod()
    {
        return _subscriptionPeriod;
    }

    boolean isContentAvailable()
    {
        return _isContentAvailable;
    }

    public String toString()
    {
        Object aobj[] = new Object[5];
        aobj[0] = super.toString();
        aobj[1] = _sku;
        aobj[2] = _itemType;
        aobj[3] = _subscriptionPeriod;
        aobj[4] = _purchaseToken;
        return String.format("(%s, sku: \"%s\", itemType: \"%s\", subscriptionPeriod: %s, purchaseToken: \"%s\")", aobj);
    }
}
