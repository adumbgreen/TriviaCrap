.class Lcom/etermax/gamescommon/datasource/e$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/datasource/e;->a(Ljava/io/File;)Ljava/lang/Void;
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
.field final synthetic a:Lorg/b/d/h;

.field final synthetic b:Lcom/etermax/gamescommon/datasource/e;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/datasource/e;Lorg/b/d/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 342
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/e$13;->b:Lcom/etermax/gamescommon/datasource/e;

    iput-object p2, p0, Lcom/etermax/gamescommon/datasource/e$13;->a:Lorg/b/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    .line 346
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/e$13;->b:Lcom/etermax/gamescommon/datasource/e;

    iget-object v0, v0, Lcom/etermax/gamescommon/datasource/e;->c:Lcom/etermax/gamescommon/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/datasource/e$13;->b:Lcom/etermax/gamescommon/datasource/e;

    invoke-static {v1}, Lcom/etermax/gamescommon/datasource/e;->u(Lcom/etermax/gamescommon/datasource/e;)Lcom/etermax/gamescommon/login/datasource/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    iget-object v3, p0, Lcom/etermax/gamescommon/datasource/e$13;->a:Lorg/b/d/h;

    invoke-interface {v0, v1, v2, v3}, Lcom/etermax/gamescommon/datasource/a/a;->a(JLorg/b/d/h;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 350
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 347
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/etermax/gamescommon/datasource/e$13;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
