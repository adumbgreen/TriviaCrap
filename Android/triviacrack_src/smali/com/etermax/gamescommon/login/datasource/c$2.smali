.class Lcom/etermax/gamescommon/login/datasource/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Landroid/content/Context;)V
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
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/etermax/gamescommon/login/datasource/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/datasource/c;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 300
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 303
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->b:Lcom/etermax/gamescommon/login/datasource/a/e;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/a/e;->a(Ljava/lang/Long;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/login/datasource/a;->c(Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v0, v3}, Lcom/etermax/gamescommon/login/datasource/a;->d(Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$2;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->e:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->d()V

    .line 307
    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
