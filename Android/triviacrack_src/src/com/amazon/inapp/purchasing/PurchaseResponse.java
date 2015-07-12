// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.amazon.inapp.purchasing;


// Referenced classes of package com.amazon.inapp.purchasing:
//            Validator, Receipt

public final class PurchaseResponse
{

    private static final String TO_STRING_FORMAT = "(%s, requestId: \"%s\", purchaseRequestStatus: \"%s\", userId: \"%s\", receipt: %s)";
    private final PurchaseRequestStatus _purchaseRequestStatus;
    private final Receipt _receipt;
    private final String _requestId;
    private final String _userId;

    PurchaseResponse(String s, String s1, Receipt receipt, PurchaseRequestStatus purchaserequeststatus)
    {
        Validator.validateNotNull(s, "requestId");
        Validator.validateNotNull(purchaserequeststatus, "purchaseRequestStatus");
        if (purchaserequeststatus == PurchaseRequestStatus.SUCCESSFUL)
        {
            Validator.validateNotNull(receipt, "receipt");
            Validator.validateNotNull(s1, "userId");
        }
        _requestId = s;
        _userId = s1;
        _receipt = receipt;
        _purchaseRequestStatus = purchaserequeststatus;
    }

    public PurchaseRequestStatus getPurchaseRequestStatus()
    {
        return _purchaseRequestStatus;
    }

    public Receipt getReceipt()
    {
        return _receipt;
    }

    public String getRequestId()
    {
        return _requestId;
    }

    public String getUserId()
    {
        return _userId;
    }

    public String toString()
    {
        Object aobj[] = new Object[5];
        aobj[0] = super.toString();
        aobj[1] = _requestId;
        aobj[2] = _purchaseRequestStatus;
        aobj[3] = _userId;
        aobj[4] = _receipt;
        return String.format("(%s, requestId: \"%s\", purchaseRequestStatus: \"%s\", userId: \"%s\", receipt: %s)", aobj);
    }

    private class PurchaseRequestStatus extends Enum
    {

        private static final PurchaseRequestStatus $VALUES[];
        public static final PurchaseRequestStatus ALREADY_ENTITLED;
        public static final PurchaseRequestStatus FAILED;
        public static final PurchaseRequestStatus INVALID_SKU;
        public static final PurchaseRequestStatus SUCCESSFUL;

        public static PurchaseRequestStatus valueOf(String s)
        {
            return (PurchaseRequestStatus)Enum.valueOf(com/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus, s);
        }

        public static PurchaseRequestStatus[] values()
        {
            return (PurchaseRequestStatus[])$VALUES.clone();
        }

        static 
        {
            SUCCESSFUL = new PurchaseRequestStatus("SUCCESSFUL", 0);
            FAILED = new PurchaseRequestStatus("FAILED", 1);
            INVALID_SKU = new PurchaseRequestStatus("INVALID_SKU", 2);
            ALREADY_ENTITLED = new PurchaseRequestStatus("ALREADY_ENTITLED", 3);
            PurchaseRequestStatus apurchaserequeststatus[] = new PurchaseRequestStatus[4];
            apurchaserequeststatus[0] = SUCCESSFUL;
            apurchaserequeststatus[1] = FAILED;
            apurchaserequeststatus[2] = INVALID_SKU;
            apurchaserequeststatus[3] = ALREADY_ENTITLED;
            $VALUES = apurchaserequeststatus;
        }

        private PurchaseRequestStatus(String s, int i)
        {
            super(s, i);
        }
    }

}
