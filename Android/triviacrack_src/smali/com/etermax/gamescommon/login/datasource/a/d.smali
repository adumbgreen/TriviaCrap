.class public final Lcom/etermax/gamescommon/login/datasource/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/login/datasource/a/c;


# instance fields
.field private a:Lorg/b/e/a/k;

.field private b:Ljava/lang/String;

.field private c:Lorg/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lorg/b/e/a/k;

    invoke-direct {v0}, Lorg/b/e/a/k;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->a:Lorg/b/e/a/k;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->b:Ljava/lang/String;

    .line 30
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->a:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/b/c/b/j;

    invoke-direct {v1}, Lorg/b/c/b/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lorg/b/c/l;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;",
            ")",
            "Lorg/b/c/l",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p1}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 62
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->b:Ljava/lang/String;

    const-string v2, "/social-login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 66
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v0

    .line 64
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 66
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_0
    throw v0
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;",
            ")",
            "Lorg/b/c/l",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p1}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 92
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->b:Ljava/lang/String;

    const-string v2, "/login"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 96
    :goto_0
    return-object v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 95
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 96
    const/4 v0, 0x0

    goto :goto_0

    .line 98
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 40
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->b:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public a(Lorg/b/e/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->a:Lorg/b/e/a/k;

    .line 36
    return-void
.end method

.method public b(Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lorg/b/c/l;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;",
            ")",
            "Lorg/b/c/l",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p1}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->b:Ljava/lang/String;

    const-string v2, "/social-users"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 48
    :catch_0
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 50
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 51
    const/4 v0, 0x0

    goto :goto_0

    .line 53
    :cond_0
    throw v0
.end method

.method public b(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;",
            ")",
            "Lorg/b/c/l",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 75
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p1}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->b:Ljava/lang/String;

    const-string v2, "/users"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 80
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/d;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 81
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_0
    throw v0
.end method
