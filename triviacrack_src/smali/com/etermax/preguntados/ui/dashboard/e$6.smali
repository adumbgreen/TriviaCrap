.class Lcom/etermax/preguntados/ui/dashboard/e$6;
.super Lcom/etermax/gamescommon/j/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/dashboard/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/gamescommon/j/a",
        "<",
        "Lcom/etermax/preguntados/ui/dashboard/e;",
        "Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/dashboard/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/tools/social/a/b;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/etermax/preguntados/ui/dashboard/e$6;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-direct {p0, p2}, Lcom/etermax/gamescommon/j/a;-><init>(Lcom/etermax/tools/social/a/b;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 416
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/j/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 417
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$6;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/dashboard/e;->a(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;)V

    .line 418
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    check-cast p1, Lcom/etermax/preguntados/ui/dashboard/e;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/dashboard/e$6;->a(Lcom/etermax/preguntados/ui/dashboard/e;Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;)V

    return-void
.end method

.method protected b()Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/etermax/preguntados/ui/dashboard/e$6;->a:Lcom/etermax/preguntados/ui/dashboard/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/dashboard/e;->c:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->A()Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/dashboard/e$6;->b()Lcom/etermax/preguntados/datasource/dto/OpponentListDTO;

    move-result-object v0

    return-object v0
.end method
