.class Lcom/etermax/preguntados/ui/game/category/i$6;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/game/category/i;->a(J)V
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
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/preguntados/ui/game/category/i;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/game/category/i;Ljava/lang/String;J)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 675
    iput-object p1, p0, Lcom/etermax/preguntados/ui/game/category/i$6;->b:Lcom/etermax/preguntados/ui/game/category/i;

    iput-wide p3, p0, Lcom/etermax/preguntados/ui/game/category/i$6;->a:J

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/game/category/i$6;->b()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 683
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 684
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$6;->b:Lcom/etermax/preguntados/ui/game/category/i;

    iput-object p2, v0, Lcom/etermax/preguntados/ui/game/category/i;->a:Lcom/etermax/preguntados/datasource/dto/GameDTO;

    .line 685
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$6;->b:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/i;->c()V

    .line 686
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$6;->b:Lcom/etermax/preguntados/ui/game/category/i;

    invoke-virtual {v0}, Lcom/etermax/preguntados/ui/game/category/i;->b()V

    .line 688
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 675
    check-cast p1, Lcom/etermax/preguntados/ui/game/category/i;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/GameDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/game/category/i$6;->a(Lcom/etermax/preguntados/ui/game/category/i;Lcom/etermax/preguntados/datasource/dto/GameDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 3

    .prologue
    .line 678
    iget-object v0, p0, Lcom/etermax/preguntados/ui/game/category/i$6;->b:Lcom/etermax/preguntados/ui/game/category/i;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/game/category/i;->c:Lcom/etermax/preguntados/datasource/d;

    iget-wide v1, p0, Lcom/etermax/preguntados/ui/game/category/i$6;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/etermax/preguntados/datasource/d;->d(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
