.class Lcom/etermax/gamescommon/shop/a$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/shop/a;->loadProductsTask()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/gamescommon/shop/a;",
        "Lcom/etermax/gamescommon/shop/dto/ProductListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/shop/a;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/shop/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/etermax/gamescommon/shop/a$2;->a:Lcom/etermax/gamescommon/shop/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    invoke-virtual {p0}, Lcom/etermax/gamescommon/shop/a$2;->b()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/gamescommon/shop/a;Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 91
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 92
    iget-object v0, p1, Lcom/etermax/gamescommon/shop/a;->mShopManager:Lcom/etermax/gamescommon/shop/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/c;->c()V

    .line 93
    invoke-virtual {p1, p2}, Lcom/etermax/gamescommon/shop/a;->onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V

    .line 94
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    check-cast p1, Lcom/etermax/gamescommon/shop/a;

    check-cast p2, Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/gamescommon/shop/a$2;->a(Lcom/etermax/gamescommon/shop/a;Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/gamescommon/shop/a$2;->a:Lcom/etermax/gamescommon/shop/a;

    #calls: Lcom/etermax/gamescommon/shop/a;->getProductList()Lcom/etermax/gamescommon/shop/dto/ProductListDTO;
    invoke-static {v0}, Lcom/etermax/gamescommon/shop/a;->access$000(Lcom/etermax/gamescommon/shop/a;)Lcom/etermax/gamescommon/shop/dto/ProductListDTO;

    move-result-object v0

    return-object v0
.end method
