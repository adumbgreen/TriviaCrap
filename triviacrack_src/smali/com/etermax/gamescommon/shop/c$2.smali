.class Lcom/etermax/gamescommon/shop/c$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/shop/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/amazon/inapp/purchasing/PurchaseResponse;Lcom/etermax/gamescommon/n;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

.field final synthetic b:Lcom/etermax/gamescommon/shop/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;Lcom/amazon/inapp/purchasing/PurchaseResponse;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/etermax/gamescommon/shop/c$2;->b:Lcom/etermax/gamescommon/shop/c;

    iput-object p3, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/c$2;->b()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 129
    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/shop/c$2;->b(Z)V

    .line 130
    const-string v0, "ShopManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception en la confirmaci\u00f3n de la compra a la API. Product = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, p2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 132
    const/4 v2, 0x1

    .line 133
    instance-of v0, p2, Lcom/etermax/tools/a/c/b;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 134
    check-cast v0, Lcom/etermax/tools/a/c/b;

    invoke-virtual {v0}, Lcom/etermax/tools/a/c/b;->c()I

    move-result v0

    const/16 v3, 0x321

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 139
    :goto_0
    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c$2;->b:Lcom/etermax/gamescommon/shop/c;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2}, Lcom/etermax/gamescommon/shop/c;->b(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;Ljava/lang/Exception;)V

    .line 142
    :cond_0
    return-void

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Void;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 146
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c$2;->b:Lcom/etermax/gamescommon/shop/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/shop/c;->b(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c$2;->b:Lcom/etermax/gamescommon/shop/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c$2;->b:Lcom/etermax/gamescommon/shop/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Receipt;->getSku()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/shop/c$2;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 119
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/shop/c$2;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Void;)V

    return-void
.end method

.method public b()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 123
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c$2;->b:Lcom/etermax/gamescommon/shop/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/c;->f:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getReceipt()Lcom/amazon/inapp/purchasing/Receipt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/inapp/purchasing/Receipt;->getPurchaseToken()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c$2;->a:Lcom/amazon/inapp/purchasing/PurchaseResponse;

    invoke-virtual {v2}, Lcom/amazon/inapp/purchasing/PurchaseResponse;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v0, 0x0

    return-object v0
.end method
