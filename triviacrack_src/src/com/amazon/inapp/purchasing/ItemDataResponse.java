// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            Validator

public final class ItemDataResponse
{

    private static final String TO_STRING_FORMAT = "(%s, requestId: \"%s\", itemDataRequestStatus: \"%s\", unavailableSkus: %s, itemData: %s)";
    private final Map _itemData;
    private final ItemDataRequestStatus _itemDataRequestStatus;
    private final String _requestId;
    private final Set _unavailableSkus;

    ItemDataResponse(String s, Set set, ItemDataRequestStatus itemdatarequeststatus, Map map)
    {
        Validator.validateNotNull(s, "requestId");
        Validator.validateNotNull(itemdatarequeststatus, "itemDataRequestStatus");
        if (ItemDataRequestStatus.SUCCESSFUL_WITH_UNAVAILABLE_SKUS == itemdatarequeststatus)
        {
            Validator.validateNotNull(set, "unavailableSkus");
            Validator.validateNotEmpty(set, "unavailableSkus");
        }
        if (ItemDataRequestStatus.SUCCESSFUL == itemdatarequeststatus)
        {
            Validator.validateNotNull(map, "itemData");
            Validator.validateNotEmpty(map.entrySet(), "itemData");
        }
        _requestId = s;
        _itemDataRequestStatus = itemdatarequeststatus;
        if (set == null)
        {
            set = new HashSet();
        }
        _unavailableSkus = set;
        if (map == null)
        {
            map = new HashMap();
        }
        _itemData = map;
    }

    public Map getItemData()
    {
        return _itemData;
    }

    public ItemDataRequestStatus getItemDataRequestStatus()
    {
        return _itemDataRequestStatus;
    }

    public String getRequestId()
    {
        return _requestId;
    }

    public Set getUnavailableSkus()
    {
        return _unavailableSkus;
    }

    public String toString()
    {
        Object aobj[] = new Object[5];
        aobj[0] = super.toString();
        aobj[1] = _requestId;
        aobj[2] = _itemDataRequestStatus;
        aobj[3] = _unavailableSkus;
        aobj[4] = _itemData;
        return String.format("(%s, requestId: \"%s\", itemDataRequestStatus: \"%s\", unavailableSkus: %s, itemData: %s)", aobj);
    }

    private class ItemDataRequestStatus extends Enum
    {

        private static final ItemDataRequestStatus $VALUES[];
        public static final ItemDataRequestStatus FAILED;
        public static final ItemDataRequestStatus SUCCESSFUL;
        public static final ItemDataRequestStatus SUCCESSFUL_WITH_UNAVAILABLE_SKUS;

        public static ItemDataRequestStatus valueOf(String s)
        {
            return (ItemDataRequestStatus)Enum.valueOf(com/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus, s);
        }

        public static ItemDataRequestStatus[] values()
        {
            return (ItemDataRequestStatus[])$VALUES.clone();
        }

        static 
        {
            SUCCESSFUL = new ItemDataRequestStatus("SUCCESSFUL", 0);
            FAILED = new ItemDataRequestStatus("FAILED", 1);
            SUCCESSFUL_WITH_UNAVAILABLE_SKUS = new ItemDataRequestStatus("SUCCESSFUL_WITH_UNAVAILABLE_SKUS", 2);
            ItemDataRequestStatus aitemdatarequeststatus[] = new ItemDataRequestStatus[3];
            aitemdatarequeststatus[0] = SUCCESSFUL;
            aitemdatarequeststatus[1] = FAILED;
            aitemdatarequeststatus[2] = SUCCESSFUL_WITH_UNAVAILABLE_SKUS;
            $VALUES = aitemdatarequeststatus;
        }

        private ItemDataRequestStatus(String s, int i)
        {
            super(s, i);
        }
    }

}
