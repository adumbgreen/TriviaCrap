.class Lcom/etermax/preguntados/ui/game/category/i$4;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/i;->k()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/game/category/i;",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/game/category/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/i;)V
    .locals 0
    .parameter

    .prologue
    .line 440
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/i$4;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-direct {p0}, Lcom/etermax/tools/i/a;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i$4;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 448
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 449
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$4;->a:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 450
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/game/category/i;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 454
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 455
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$4;->a:Lcom/etermax/preguntados/ui/game/category/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/etermax/preguntados/ui/game/category/i;->a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    .line 456
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    check-cast p1, Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/i$4;->a(Lcom/etermax/preguntados/ui/game/category/i;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 440
    check-cast p1, Lcom/etermax/preguntados/ui/game/category/i;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/i$4;->a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 3

    .prologue
    .line 443
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$4;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->c:Lcom/etermax/preguntados/datasource/d;

    iget-object v1, p0, Lcom/etermax/preguntados/ui/game/category/i$4;->a:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v1, v1, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {v1}, Lcom/etermax/preguntados/datasource/dto/GameDTO;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->c(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
