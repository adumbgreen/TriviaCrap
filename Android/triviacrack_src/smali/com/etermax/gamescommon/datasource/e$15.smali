.class Lcom/etermax/gamescommon/datasource/e$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->a(Ljava/lang/Long;)V
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
.field final synthetic a:Ljava/lang/Long;

.field final synthetic b:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;Ljava/lang/Long;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 408
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$15;->b:Lcom/etermax/gamescommon/datasource/e;

    iput-object p2, p0, Lcom/etermax/gamescommon/datasource/e$15;->a:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 411
    new-instance v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$15;->a:Ljava/lang/Long;

    invoke-direct {v0, v1}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;-><init>(Ljava/lang/Long;)V

    .line 412
    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$15;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v1, v1, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v2, p0, Lcom/etermax/gamescommon/datasource/e$15;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v2}, Lcom/etermax/gamescommon/datasource/e;->w(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v2

    invoke-interface {v1, v2, v3, v0}, Lcom/etermax/gamescommon/datasource/a/a;->c(JLcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 413
    const/4 v0, 0x0

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 408
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$15;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
