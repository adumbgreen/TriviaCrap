.class Lcom/etermax/gamescommon/datasource/e$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->a(J)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;J)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$16;->b:Lcom/etermax/gamescommon/datasource/e;

    iput-wide p2, p0, Lcom/etermax/gamescommon/datasource/e$16;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-direct {v0}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>()V

    .line 105
    iget-wide v1, p0, Lcom/etermax/gamescommon/datasource/e$16;->a:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->setId(Ljava/lang/Long;)V

    .line 106
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$16;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, v1, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/e$16;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v2}, Lcom/etermax/gamescommon/datasource/e;->a(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/etermax/gamescommon/datasource/a/a;->a(JLcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 107
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$16;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/e;->b(Lcom/etermax/gamescommon/datasource/e;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$16;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/e;->b(Lcom/etermax/gamescommon/datasource/e;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/datasource/f;

    .line 109
    iget-wide v2, p0, Lcom/etermax/gamescommon/datasource/e$16;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/datasource/f;->a(Ljava/lang/Long;)V

    goto :goto_0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$16;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
