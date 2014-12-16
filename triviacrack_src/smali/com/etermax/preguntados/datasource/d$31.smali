.class Lcom/etermax/preguntados/datasource/d$31;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/preguntados/datasource/d;->a(J)Lcom/etermax/preguntados/datasource/dto/GameDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/preguntados/datasource/dto/GameDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/preguntados/datasource/d;


# direct methods
.method constructor <init>(Lcom/etermax/preguntados/datasource/d;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 292
    iput-object p1, p0, Lcom/etermax/preguntados/datasource/d$31;->b:Lcom/etermax/preguntados/datasource/d;

    iput-wide p2, p0, Lcom/etermax/preguntados/datasource/d$31;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/preguntados/datasource/dto/GameDTO;
    .locals 7

    .prologue
    .line 295
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/d$31;->b:Lcom/etermax/preguntados/datasource/d;

    iget-object v0, v0, Lcom/etermax/preguntados/datasource/d;->c:Lcom/etermax/preguntados/datasource/b;

    iget-object v1, p0, Lcom/etermax/preguntados/datasource/d$31;->b:Lcom/etermax/preguntados/datasource/d;

    invoke-static {v1}, Lcom/etermax/preguntados/datasource/d;->d(Lcom/etermax/preguntados/datasource/d;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/etermax/preguntados/datasource/d$31;->a:J

    new-instance v5, Lcom/etermax/preguntados/datasource/dto/GameActionDTO;

    sget-object v6, Lcom/etermax/preguntados/datasource/dto/enums/GameAction;->RESIGN:Lcom/etermax/preguntados/datasource/dto/enums/GameAction;

    invoke-direct {v5, v6}, Lcom/etermax/preguntados/datasource/dto/GameActionDTO;-><init>(Lcom/etermax/preguntados/datasource/dto/enums/GameAction;)V

    invoke-interface/range {v0 .. v5}, Lcom/etermax/preguntados/datasource/b;->a(JJLcom/etermax/preguntados/datasource/dto/GameActionDTO;)Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/d$31;->a()Lcom/etermax/preguntados/datasource/dto/GameDTO;

    move-result-object v0

    return-object v0
.end method
