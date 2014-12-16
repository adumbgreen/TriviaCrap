.class Lcom/etermax/preguntados/ui/game/category/m$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/m;->onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/etermax/preguntados/ui/game/category/m;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/m;Ljava/util/List;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->c:Lcom/etermax/preguntados/ui/game/category/m;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->a:Ljava/util/List;

    iput p3, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 103
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->c:Lcom/etermax/preguntados/ui/game/category/m;

    const-string v1, "buy"

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/game/category/m;->a(Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->c:Lcom/etermax/preguntados/ui/game/category/m;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->a:Ljava/util/List;

    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/etermax/preguntados/ui/game/category/m;->a(I)V

    .line 105
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->c:Lcom/etermax/preguntados/ui/game/category/m;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->a:Ljava/util/List;

    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->c:Lcom/etermax/preguntados/ui/game/category/m;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/game/category/m;->a(Lcom/etermax/preguntados/ui/game/category/m;)Lcom/etermax/gamescommon/shop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->c:Lcom/etermax/preguntados/ui/game/category/m;

    invoke-static {v3}, Lcom/etermax/preguntados/ui/game/category/m;->b(Lcom/etermax/preguntados/ui/game/category/m;)Lcom/etermax/tools/j/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/preguntados/ui/game/category/m;->a(Lcom/etermax/preguntados/ui/game/category/m;Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->c:Lcom/etermax/preguntados/ui/game/category/m;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->a:Ljava/util/List;

    iget v2, p0, Lcom/etermax/preguntados/ui/game/category/m$1;->b:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getQuantity()I

    move-result v0

    invoke-static {v1, v0}, Lcom/etermax/preguntados/ui/game/category/m;->a(Lcom/etermax/preguntados/ui/game/category/m;I)I

    .line 107
    return-void
.end method
