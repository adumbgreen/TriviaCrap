.class public final Lcom/etermax/gamescommon/login/datasource/a/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/login/datasource/a/e;


# instance fields
.field private a:Lorg/b/e/a/k;

.field private b:Ljava/lang/String;

.field private c:Lorg/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Lorg/b/e/a/k;

    invoke-direct {v0}, Lorg/b/e/a/k;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->b:Ljava/lang/String;

    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/b/c/b/j;

    invoke-direct {v1}, Lorg/b/c/b/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 91
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 92
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 93
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/check-social-account"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    :goto_0
    return-object v0

    .line 96
    :catch_0
    move-exception v0

    .line 97
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 99
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 46
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v0, "email"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->b:Ljava/lang/String;

    const-string v2, "/search?email={email}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->a:Lorg/b/c/f;

    const/4 v3, 0x0

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;

    move-result-object v0

    invoke-virtual {v0}, Lorg/b/c/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/login/datasource/dto/UserListDTO;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 52
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    move-object v0, v6

    .line 53
    goto :goto_0

    .line 55
    :cond_0
    throw v0
.end method

.method public a(Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V
    .locals 6
    .parameter

    .prologue
    .line 62
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p1}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 64
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->b:Ljava/lang/String;

    const-string v2, "/reset-password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;[Ljava/lang/Object;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 69
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;)V
    .locals 6
    .parameter

    .prologue
    .line 76
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 77
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/logout"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 84
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Ljava/lang/String;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 108
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 109
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v0, "network"

    invoke-virtual {v5, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/link?network={network}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->f:Lorg/b/c/f;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :goto_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 115
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 117
    :cond_0
    throw v0
.end method

.method public a(Lorg/b/e/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->a:Lorg/b/e/a/k;

    .line 37
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 41
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/a/f;->b:Ljava/lang/String;

    .line 42
    return-void
.end method
