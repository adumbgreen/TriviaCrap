.class Lcom/etermax/gamescommon/login/datasource/c$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/a/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/etermax/gamescommon/login/datasource/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/a/a/c",
        "<",
        "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

.field final synthetic c:Lcom/etermax/gamescommon/login/datasource/c;


# direct methods
.method constructor <init>(Lcom/etermax/gamescommon/login/datasource/c;ZLcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 319
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iput-boolean p2, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->a:Z

    iput-object p3, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->b:Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 3

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->a:Z

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->b:Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/a/a;->b(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/login/datasource/c;->c:Lcom/etermax/gamescommon/login/datasource/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->c:Lcom/etermax/gamescommon/login/datasource/c;

    iget-object v1, v1, Lcom/etermax/gamescommon/login/datasource/c;->d:Lcom/etermax/gamescommon/login/datasource/a;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/login/datasource/a;->e()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/gamescommon/login/datasource/c$3;->b:Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/login/datasource/a/a;->a(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    goto :goto_0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 319
    invoke-virtual {p0}, Lcom/etermax/gamescommon/login/datasource/c$3;->a()Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    move-result-object v0

    return-object v0
.end method
