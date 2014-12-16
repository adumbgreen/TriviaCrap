.class public Lcom/etermax/gamescommon/a/b;
.super Lcom/amazon/inapp/purchasing/BasePurchasingObserver;
.source "SourceFile"


# instance fields
.field public a:Lcom/etermax/gamescommon/a/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/etermax/gamescommon/a/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/amazon/inapp/purchasing/BasePurchasingObserver;-><init>(Landroid/content/Context;)V

    .line 23
    iput-object p2, p0, Lcom/etermax/gamescommon/a/b;->a:Lcom/etermax/gamescommon/a/a;

    .line 24
    return-void
.end method


# virtual methods
.method public onGetUserIdResponse(Lcom/amazon/inapp/purchasing/GetUserIdResponse;)V
    .locals 2
    .parameter

    .prologue
    .line 31
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/GetUserIdResponse;->getUserIdRequestStatus()Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    move-result-object v0

    sget-object v1, Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/GetUserIdResponse$GetUserIdRequestStatus;

    if-ne v0, v1, :cond_0

    .line 32
    sget-object v0, Lcom/amazon/inapp/purchasing/Offset;->BEGINNING:Lcom/amazon/inapp/purchasing/Offset;

    invoke-static {v0}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiatePurchaseUpdatesRequest(Lcom/amazon/inapp/purchasing/Offset;)Ljava/lang/String;

    .line 36
    :cond_0
    return-void
.end method

.method public onItemDataResponse(Lcom/amazon/inapp/purchasing/ItemDataResponse;)V
    .locals 8
    .parameter

    .prologue
    .line 39
    sget-object v0, Lcom/etermax/gamescommon/a/b$1;->a:[I

    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemDataRequestStatus()Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/ItemDataResponse$ItemDataRequestStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 41
    :pswitch_0
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 42
    const-string v2, "AmazonPurchase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unavailable SKU:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    :cond_1
    :pswitch_1
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/ItemDataResponse;->getItemData()Ljava/util/Map;

    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 48
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/inapp/purchasing/Item;

    .line 49
    const-string v3, "AmazonPurchase"

    const-string v4, "Item: %s\n Type: %s\n SKU: %s\n Price: %s\n Description: %s\n"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getTitle()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getItemType()Lcom/amazon/inapp/purchasing/Item$ItemType;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x2

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getSku()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getPrice()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x4

    invoke-virtual {v0}, Lcom/amazon/inapp/purchasing/Item;->getDescription()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 54
    :pswitch_2
    const-string v0, "AmazonPurchase"

    const-string v1, "ItemDataRequestStatus: FAILED"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPurchaseResponse(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 1
    .parameter

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/gamescommon/a/b;->a:Lcom/etermax/gamescommon/a/a;

    invoke-interface {v0, p1}, Lcom/etermax/gamescommon/a/a;->a(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V

    .line 61
    return-void
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/inapp/purchasing/PurchaseUpdatesResponse;)V
    .locals 0
    .parameter

    .prologue
    .line 64
    return-void
.end method

.method public onSdkAvailable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 27
    iget-object v0, p0, Lcom/etermax/gamescommon/a/b;->a:Lcom/etermax/gamescommon/a/a;

    invoke-interface {v0}, Lcom/etermax/gamescommon/a/a;->a()V

    .line 28
    return-void
.end method
