.class Lcom/etermax/gamescommon/login/datasource/c$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/datasource/c;->c(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic a:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

.field final synthetic b:Lcom/etermax/gamescommon/login/datasource/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/datasource/c;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 439
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/c$6;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iput-object p2, p0, Lcom/etermax/gamescommon/login/datasource/c$6;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 442
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$6;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$6;->b:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c$6;->a:Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/a/a;->b(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;

    move-result-object v0

    .line 443
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$6;->b:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/c;->f()V

    .line 444
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$6;->b:Lcom/etermax/gamescommon/login/datasource/c;

    invoke-virtual {v0}, Lorg/b/c/l;->a()Lorg/b/c/c;

    move-result-object v2

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-static {v1, v2, v0, v3}, Lcom/etermax/gamescommon/login/datasource/c;->a(Lcom/etermax/gamescommon/login/datasource/c;Lorg/b/c/c;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;Ljava/lang/String;)V

    .line 445
    return-object v3
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 439
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c$6;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
