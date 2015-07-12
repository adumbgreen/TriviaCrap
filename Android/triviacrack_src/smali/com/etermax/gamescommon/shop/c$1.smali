.class Lcom/etermax/gamescommon/shop/c$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/shop/c;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/g/j;

.field final synthetic b:Lcom/etermax/gamescommon/n;

.field final synthetic c:Lcom/etermax/gamescommon/shop/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;Lcom/etermax/gamescommon/n;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/etermax/gamescommon/shop/c$1;->c:Lcom/etermax/gamescommon/shop/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    iput-object p3, p0, Lcom/etermax/gamescommon/shop/c$1;->b:Lcom/etermax/gamescommon/n;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/c$1;->b()Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 101
    if-eqz p2, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ConfirmationDTO;

    .line 103
    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ConfirmationDTO;->getOrderId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/g/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c$1;->c:Lcom/etermax/gamescommon/shop/c;

    iget-object v3, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ConfirmationDTO;->isDuplicate()Z

    move-result v4

    iget-object v5, p0, Lcom/etermax/gamescommon/shop/c$1;->b:Lcom/etermax/gamescommon/n;

    invoke-static {v2, v3, v4, v5}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;ZLcom/etermax/gamescommon/n;)V

    .line 105
    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c$1;->c:Lcom/etermax/gamescommon/shop/c;

    iget-object v3, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/g/j;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;)V

    .line 106
    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c$1;->c:Lcom/etermax/gamescommon/shop/c;

    iget-object v3, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-virtual {v3}, Lcom/etermax/gamescommon/g/j;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ConfirmationDTO;->getOrderId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/c;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 110
    :cond_1
    return-void
.end method

.method protected a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/shop/c$1;->b(Z)V

    .line 92
    const-string v0, "ShopManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception en la confirmaci\u00f3n de la compra a la API. Product = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/g/j;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c$1;->c:Lcom/etermax/gamescommon/shop/c;

    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-static {v0, v1, p2}, Lcom/etermax/gamescommon/shop/c;->a(Lcom/etermax/gamescommon/shop/c;Lcom/etermax/gamescommon/g/j;Ljava/lang/Exception;)V

    .line 95
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/shop/c$1;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/shop/c$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;
    .locals 3

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/c$1;->c:Lcom/etermax/gamescommon/shop/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/shop/c;->f:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/g/j;->f()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/shop/c$1;->a:Lcom/etermax/gamescommon/g/j;

    invoke-virtual {v2}, Lcom/etermax/gamescommon/g/j;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/datasource/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/gamescommon/shop/dto/ConfirmationListDTO;

    move-result-object v0

    return-object v0
.end method
