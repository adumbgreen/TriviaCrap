.class Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->c(Lcom/etermax/preguntados/datasource/dto/GameDTO;Z)V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->b:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    iput-object p2, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 210
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->b:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->l:Lcom/etermax/gamescommon/social/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->b:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    const-string v2, "finish_duel"

    new-instance v3, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1$1;

    invoke-direct {v3, p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1$1;-><init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V

    .line 216
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->b:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 220
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->b:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$1;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 224
    return-void
.end method
