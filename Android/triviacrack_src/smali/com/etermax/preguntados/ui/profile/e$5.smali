.class Lcom/etermax/preguntados/ui/profile/e$5;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/profile/e;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

.field final synthetic b:Lcom/etermax/preguntados/ui/profile/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 318
    iput-object p1, p0, Lcom/etermax/preguntados/ui/profile/e$5;->b:Lcom/etermax/preguntados/ui/profile/e;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/profile/e$5;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e$5;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 327
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$5;->b:Lcom/etermax/preguntados/ui/profile/e;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e$5;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;->getLanguage()Lcom/etermax/gamescommon/language/Language;

    move-result-object v1

    const-string v2, "profile"

    invoke-static {v0, v1, v2}, Lcom/etermax/preguntados/ui/profile/e;->a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/gamescommon/language/Language;Ljava/lang/String;)V

    .line 329
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e$5;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e$5;->b:Lcom/etermax/preguntados/ui/profile/e;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/profile/e;->p:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/d;->t()I

    move-result v1

    iget-object v2, p0, Lcom/etermax/preguntados/ui/profile/e$5;->b:Lcom/etermax/preguntados/ui/profile/e;

    iget-object v2, v2, Lcom/etermax/preguntados/ui/profile/e;->p:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v2}, Lcom/etermax/preguntados/datasource/d;->u()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, p2, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/etermax/preguntados/ui/profile/e;->startActivity(Landroid/content/Intent;)V

    .line 330
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/profile/e$5;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 331
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 335
    instance-of v0, p2, Lcom/etermax/preguntados/datasource/a/b;

    if-eqz v0, :cond_0

    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/profile/e$5;->b(Z)V

    move-object v0, p2

    .line 337
    check-cast v0, Lcom/etermax/preguntados/datasource/a/b;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/a/b;->c()I

    move-result v0

    .line 340
    const/16 v1, 0x7dd

    if-ne v0, v1, :cond_0

    .line 341
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$5;->b:Lcom/etermax/preguntados/ui/profile/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/profile/e;->d(Lcom/etermax/preguntados/ui/profile/e;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/profile/f;

    invoke-interface {v0}, Lcom/etermax/preguntados/ui/profile/f;->j_()V

    .line 344
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 345
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/etermax/preguntados/ui/profile/e;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/e$5;->a(Lcom/etermax/preguntados/ui/profile/e;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 318
    check-cast p1, Lcom/etermax/preguntados/ui/profile/e;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/profile/e$5;->a(Lcom/etermax/preguntados/ui/profile/e;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lcom/etermax/preguntados/ui/profile/e$5;->b:Lcom/etermax/preguntados/ui/profile/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/profile/e;->p:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/profile/e$5;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
