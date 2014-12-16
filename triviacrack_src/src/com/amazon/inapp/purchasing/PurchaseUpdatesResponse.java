// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;

import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.amazon.inapp.purchasing:
//            Validator, Offset

public final class PurchaseUpdatesResponse
{

    private static final String TO_STRING_FORMAT = "(%s, requestId: \"%s\", purchaseUpdatesRequestStatus: \"%s\", userId: \"%s\", receipts: %s, revokedSkus: %s, offset: \"%s\", isMore: \"%b\")";
    private final boolean _isMore;
    private final Offset _offset;
    private final PurchaseUpdatesRequestStatus _purchaseUpdatesRequestStatus;
    private final Set _receipts;
    private final String _requestId;
    private final Set _revokedSkus;
    private final String _userId;

    PurchaseUpdatesResponse(String s, String s1, PurchaseUpdatesRequestStatus purchaseupdatesrequeststatus, Set set, Set set1, Offset offset, boolean flag)
    {
        Validator.validateNotNull(s, "requestId");
        Validator.validateNotNull(purchaseupdatesrequeststatus, "purchaseUpdatesRequestStatus");
        Validator.validateNotNull(offset, "offset");
        if (PurchaseUpdatesRequestStatus.SUCCESSFUL == purchaseupdatesrequeststatus)
        {
            Validator.validateNotNull(s1, "userId");
            Validator.validateNotNull(set, "receipts");
            Validator.validateNotNull(set1, "revokedSkus");
        }
        _requestId = s;
        _userId = s1;
        _purchaseUpdatesRequestStatus = purchaseupdatesrequeststatus;
        if (set == null)
        {
            set = new HashSet();
        }
        _receipts = set;
        if (set1 == null)
        {
            set1 = new HashSet();
        }
        _revokedSkus = set1;
        _offset = offset;
        _isMore = flag;
    }

    public Offset getOffset()
    {
        return _offset;
    }

    public PurchaseUpdatesRequestStatus getPurchaseUpdatesRequestStatus()
    {
        return _purchaseUpdatesRequestStatus;
    }

    public Set getReceipts()
    {
        return _receipts;
    }

    public String getRequestId()
    {
        return _requestId;
    }

    public Set getRevokedSkus()
    {
        return _revokedSkus;
    }

    public String getUserId()
    {
        return _userId;
    }

    public boolean isMore()
    {
        return _isMore;
    }

    public String toString()
    {
        Object aobj[] = new Object[8];
        aobj[0] = super.toString();
        aobj[1] = _requestId;
        aobj[2] = _purchaseUpdatesRequestStatus;
        aobj[3] = _userId;
        aobj[4] = _receipts;
        aobj[5] = _revokedSkus;
        aobj[6] = _offset;
        aobj[7] = Boolean.valueOf(_isMore);
        return String.format("(%s, requestId: \"%s\", purchaseUpdatesRequestStatus: \"%s\", userId: \"%s\", receipts: %s, revokedSkus: %s, offset: \"%s\", isMore: \"%b\")", aobj);
    }

    private class PurchaseUpdatesRequestStatus extends Enum
    {

        private static final PurchaseUpdatesRequestStatus $VALUES[];
        public static final PurchaseUpdatesRequestStatus FAILED;
        public static final PurchaseUpdatesRequestStatus SUCCESSFUL;

        public static PurchaseUpdatesRequestStatus valueOf(String s)
        {
            return (PurchaseUpdatesRequestStatus)Enum.valueOf(com/amazon/inapp/purchasing/PurchaseUpdatesResponse$PurchaseUpdatesRequestStatus, s);
        }

        public static PurchaseUpdatesRequestStatus[] values()
        {
            return (PurchaseUpdatesRequestStatus[])$VALUES.clone();
        }

        static 
        {
            SUCCESSFUL = new PurchaseUpdatesRequestStatus("SUCCESSFUL", 0);
            FAILED = new PurchaseUpdatesRequestStatus("FAILED", 1);
            PurchaseUpdatesRequestStatus apurchaseupdatesrequeststatus[] = new PurchaseUpdatesRequestStatus[2];
            apurchaseupdatesrequeststatus[0] = SUCCESSFUL;
            apurchaseupdatesrequeststatus[1] = FAILED;
            $VALUES = apurchaseupdatesrequeststatus;
        }

        private PurchaseUpdatesRequestStatus(String s, int i)
        {
            super(s, i);
        }
    }

}
