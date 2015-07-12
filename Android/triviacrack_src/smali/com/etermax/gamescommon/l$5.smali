.class Lcom/etermax/gamescommon/l$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/etermax/gamescommon/l;
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/l;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/l;)V
    .locals 0
    .parameter

    .prologue
    .line 371
    iput-object p1, p0, Lcom/etermax/gamescommon/l$5;->a:Lcom/etermax/gamescommon/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 375
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/gamescommon/l;->a(Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 376
    invoke-static {}, Lcom/amazon/inapp/purchasing/PurchasingManager;->initiateGetUserIdRequest()Ljava/lang/String;

    .line 377
    return-void
.end method

.method public a(Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 5
    .parameter

    .prologue
    .line 381
    invoke-virtual {p1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getPurchaseRequestStatus()Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    move-result-object v0

    .line 383
    sget-object v1, Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;->SUCCESSFUL:Lcom/amazon/inapp/purchasing/PurchaseResponse$PurchaseRequestStatus;

    if-ne v0, v1, :cond_1

    .line 384
    iget-object v0, p0, Lcom/etermax/gamescommon/l$5;->a:Lcom/etermax/gamescommon/l;

    iget-object v1, p0, Lcom/etermax/gamescommon/l$5;->a:Lcom/etermax/gamescommon/l;

    invoke-static {v1}, Lcom/etermax/gamescommon/l;->b(Lcom/etermax/gamescommon/l;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/etermax/gamescommon/l;->a(Landroid/support/v4/app/FragmentActivity;Lcom/amazon/inapp/purchasing/PurchaseResponse;Lcom/etermax/gamescommon/n;)V

    .line 391
    :cond_0
    return-void

    .line 386
    :cond_1
    iget-object v0, p0, Lcom/etermax/gamescommon/l$5;->a:Lcom/etermax/gamescommon/l;

    invoke-static {v0}, Lcom/etermax/gamescommon/l;->c(Lcom/etermax/gamescommon/l;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/i;

    .line 387
    new-instance v2, Lcom/etermax/gamescommon/g/i;

    const/4 v3, 0x6

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/etermax/gamescommon/g/i;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/i;->onPurchaseError(Lcom/etermax/gamescommon/g/i;)V

    goto :goto_0
.end method
