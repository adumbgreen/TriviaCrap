.class Lcom/etermax/preguntados/ui/newgame/e$1;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/newgame/e;->a(Lcom/etermax/preguntados/datasource/dto/enums/GameType;Lcom/etermax/gamescommon/language/Language;Ljava/lang/Long;IIZ)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Landroid/support/v4/app/FragmentActivity;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Z

.field final synthetic e:Lcom/etermax/preguntados/ui/newgame/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/newgame/e;Ljava/lang/String;Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;IIZ)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->e:Lcom/etermax/preguntados/ui/newgame/e;

    iput-object p3, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    iput p4, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->b:I

    iput p5, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->c:I

    iput-boolean p6, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->d:Z

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/newgame/e$1;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->e:Lcom/etermax/preguntados/ui/newgame/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/e;->c:Lcom/etermax/gamescommon/c/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/c/a;->b()V

    .line 78
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->e:Lcom/etermax/preguntados/ui/newgame/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/e;->a:Landroid/content/Context;

    iget v1, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->b:I

    iget v2, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->c:I

    iget-boolean v3, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->d:Z

    invoke-static {v0, p2, v1, v2, v3}, Lcom/etermax/preguntados/ui/game/category/CategoryActivity;->a(Landroid/content/Context;Lcom/etermax/preguntados/datasource/dto/GameDTO;IIZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 80
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/newgame/e$1;->a(Landroid/support/v4/app/FragmentActivity;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public a_(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/etermax/tools/i/a;->a_(Landroid/support/v4/app/FragmentActivity;)V

    .line 67
    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->e:Lcom/etermax/preguntados/ui/newgame/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/newgame/e;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/newgame/e$1;->a:Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;

    invoke-virtual {v0, v1}, Lcom/etermax/preguntados/datasource/d;->a(Lcom/etermax/preguntados/datasource/dto/GameRequestDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
