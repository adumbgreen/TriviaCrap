.class Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/social/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 357
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 360
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->l:Lcom/etermax/gamescommon/social/a;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    const-string v2, "finish_game"

    new-instance v3, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2$1;

    invoke-direct {v3, p0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2$1;-><init>(Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/etermax/gamescommon/social/a;->a(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;Lcom/etermax/gamescommon/social/d;)V

    .line 366
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 370
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/CategoryActivity$2;->a:Lcom/etermax/preguntados/ui/game/category/CategoryActivity;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->finish()V

    .line 374
    return-void
.end method
