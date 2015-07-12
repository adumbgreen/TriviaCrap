.class Lcom/etermax/preguntados/ui/dashboard/a/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/a/e;->onProductsLoaded(Lcom/etermax/gamescommon/shop/dto/ProductListDTO;)V
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/etermax/preguntados/ui/dashboard/a/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/a/e;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$1;->b:Lcom/etermax/preguntados/ui/dashboard/a/e;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$1;->b:Lcom/etermax/preguntados/ui/dashboard/a/e;

    const-string v1, "buy_live"

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a(Ljava/lang/String;)V

    .line 124
    iget-object v1, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$1;->b:Lcom/etermax/preguntados/ui/dashboard/a/e;

    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$1;->a:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/shop/dto/ProductDTO;

    iget-object v2, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$1;->b:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-static {v2}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a(Lcom/etermax/preguntados/ui/dashboard/a/e;)Lcom/etermax/gamescommon/shop/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/shop/c;->b()Lcom/etermax/gamescommon/a;

    move-result-object v2

    iget-object v3, p0, Lcom/etermax/preguntados/ui/dashboard/a/e$1;->b:Lcom/etermax/preguntados/ui/dashboard/a/e;

    invoke-static {v3}, Lcom/etermax/preguntados/ui/dashboard/a/e;->b(Lcom/etermax/preguntados/ui/dashboard/a/e;)Lcom/etermax/tools/j/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/tools/j/a;->c()Z

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/etermax/gamescommon/shop/dto/ProductDTO;->getProductId(Lcom/etermax/gamescommon/a;Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/preguntados/ui/dashboard/a/e;->a(Lcom/etermax/preguntados/ui/dashboard/a/e;Ljava/lang/String;)V

    .line 125
    return-void
.end method
