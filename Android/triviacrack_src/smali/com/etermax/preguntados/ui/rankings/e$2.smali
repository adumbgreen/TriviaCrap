.class Lcom/etermax/preguntados/ui/rankings/e$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/rankings/e;->e()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/rankings/e;",
        "Lcom/etermax/preguntados/datasource/dto/RankingsDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/rankings/e;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/rankings/e;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    iput-object p1, p0, Lcom/etermax/preguntados/ui/rankings/e$2;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 74
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/rankings/e$2;->b()Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/etermax/preguntados/ui/rankings/e;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 92
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 93
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$2;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-static {v0, p2}, Lcom/etermax/preguntados/ui/rankings/e;->a(Lcom/etermax/preguntados/ui/rankings/e;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V

    .line 94
    return-void
.end method

.method protected a(Lcom/etermax/preguntados/ui/rankings/e;Ljava/lang/Exception;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 81
    instance-of v0, p2, Lcom/etermax/preguntados/datasource/a/b;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 82
    check-cast v0, Lcom/etermax/preguntados/datasource/a/b;

    .line 83
    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/a/b;->c()I

    move-result v0

    const/16 v1, 0x7de

    if-ne v0, v1, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/etermax/preguntados/ui/rankings/e$2;->b(Z)V

    .line 85
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$2;->a:Lcom/etermax/preguntados/ui/rankings/e;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/rankings/e;->a(Lcom/etermax/preguntados/ui/rankings/e;)V

    .line 88
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 89
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    check-cast p1, Lcom/etermax/preguntados/ui/rankings/e;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/rankings/e$2;->a(Lcom/etermax/preguntados/ui/rankings/e;Ljava/lang/Exception;)V

    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 74
    check-cast p1, Lcom/etermax/preguntados/ui/rankings/e;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/rankings/e$2;->a(Lcom/etermax/preguntados/ui/rankings/e;Lcom/etermax/preguntados/datasource/dto/RankingsDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/RankingsDTO;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/etermax/preguntados/ui/rankings/e$2;->a:Lcom/etermax/preguntados/ui/rankings/e;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/rankings/e;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->C()Lcom/etermax/preguntados/datasource/dto/RankingsDTO;

    move-result-object v0

    return-object v0
.end method
