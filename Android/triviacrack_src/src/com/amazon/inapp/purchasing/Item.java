// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Validator

public final class Item
{

    private static final String TO_STRING_FORMAT = "(%s, sku: \"%s\", price: \"%s\", itemType: \"%s\", title: \"%s\", description: \"%s\", smallIconUrl: \"%s\")";
    private final String _description;
    private final ItemType _itemType;
    private final String _price;
    private final String _sku;
    private final String _smallIconUrl;
    private final String _title;

    Item(String s, String s1, ItemType itemtype, String s2, String s3, String s4)
    {
        Validator.validateNotNull(s, "sku");
        Validator.validateNotNull(itemtype, "itemType");
        Validator.validateNotNull(s2, "title");
        Validator.validateNotNull(s3, "description");
        Validator.validateNotNull(s4, "smallIconUrl");
        if (ItemType.SUBSCRIPTION != itemtype)
        {
            Validator.validateNotNull(s1, "price");
        }
        _sku = s;
        _itemType = itemtype;
        _price = s1;
        _title = s2;
        _description = s3;
        _smallIconUrl = s4;
    }

    public String getDescription()
    {
        return _description;
    }

    public ItemType getItemType()
    {
        return _itemType;
    }

    public String getPrice()
    {
        return _price;
    }

    public String getSku()
    {
        return _sku;
    }

    public String getSmallIconUrl()
    {
        return _smallIconUrl;
    }

    public String getTitle()
    {
        return _title;
    }

    public String toString()
    {
        Object aobj[] = new Object[7];
        aobj[0] = super.toString();
        aobj[1] = _sku;
        aobj[2] = _price;
        aobj[3] = _itemType;
        aobj[4] = _title;
        aobj[5] = _description;
        aobj[6] = _smallIconUrl;
        return String.format("(%s, sku: \"%s\", price: \"%s\", itemType: \"%s\", title: \"%s\", description: \"%s\", smallIconUrl: \"%s\")", aobj);
    }

    private class ItemType extends Enum
    {

        private static final ItemType $VALUES[];
        public static final ItemType CONSUMABLE;
        public static final ItemType ENTITLED;
        public static final ItemType SUBSCRIPTION;

        public static ItemType valueOf(String s)
        {
            return (ItemType)Enum.valueOf(com/amazon/inapp/purchasing/Item$ItemType, s);
        }

        public static ItemType[] values()
        {
            return (ItemType[])$VALUES.clone();
        }

        static 
        {
            CONSUMABLE = new ItemType("CONSUMABLE", 0);
            ENTITLED = new ItemType("ENTITLED", 1);
            SUBSCRIPTION = new ItemType("SUBSCRIPTION", 2);
            ItemType aitemtype[] = new ItemType[3];
            aitemtype[0] = CONSUMABLE;
            aitemtype[1] = ENTITLED;
            aitemtype[2] = SUBSCRIPTION;
            $VALUES = aitemtype;
        }

        private ItemType(String s, int i)
        {
            super(s, i);
        }
    }

}
