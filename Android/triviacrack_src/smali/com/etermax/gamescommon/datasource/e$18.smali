.class Lcom/etermax/gamescommon/datasource/e$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->b(J)Ljava/lang/Void;
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
    .line 118
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$18;->b:Lcom/etermax/gamescommon/datasource/e;

    iput-wide p2, p0, Lcom/etermax/gamescommon/datasource/e$18;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 5

    .prologue
    .line 121
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$18;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$18;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/e;->c(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/etermax/gamescommon/datasource/e$18;->a:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/etermax/gamescommon/datasource/a/a;->a(JJ)V

    .line 122
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$18;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/e;->b(Lcom/etermax/gamescommon/datasource/e;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$18;->b:Lcom/etermax/gamescommon/datasource/e;

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

    .line 124
    iget-wide v2, p0, Lcom/etermax/gamescommon/datasource/e$18;->a:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/etermax/gamescommon/datasource/f;->b(Ljava/lang/Long;)V

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$18;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
