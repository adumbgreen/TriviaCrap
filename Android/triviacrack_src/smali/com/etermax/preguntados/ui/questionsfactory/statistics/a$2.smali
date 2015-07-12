.class Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;
.super Lcom/etermax/tools/i/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/etermax/tools/i/a",
        "<",
        "Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;",
        "Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    iput-object p1, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;

    invoke-direct {p0, p2}, Lcom/etermax/tools/i/a;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic a()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;->b()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 71
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/a;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 72
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;

    invoke-virtual {v0, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;)V

    .line 73
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;

    invoke-static {v0}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;

    invoke-interface {v0, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/b;->a(Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;)V

    .line 74
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 62
    check-cast p1, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;

    check-cast p2, Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    invoke-virtual {p0, p1, p2}, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;->a(Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;)V

    return-void
.end method

.method public b()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a$2;->a:Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;

    iget-object v0, v0, Lcom/etermax/preguntados/ui/questionsfactory/statistics/a;->a:Lcom/etermax/preguntados/datasource/d;

    invoke-virtual {v0}, Lcom/etermax/preguntados/datasource/d;->p()Lcom/etermax/preguntados/datasource/dto/UserFactoryStatsListDTO;

    move-result-object v0

    return-object v0
.end method
