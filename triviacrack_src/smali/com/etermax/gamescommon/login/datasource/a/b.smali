.class public final Lcom/etermax/gamescommon/login/datasource/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/gamescommon/login/datasource/a/a;


# instance fields
.field private a:Lorg/b/e/a/k;

.field private b:Ljava/lang/String;

.field private c:Lorg/a/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lorg/b/e/a/k;

    invoke-direct {v0}, Lorg/b/e/a/k;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->b:Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/b/c/b/j;

    invoke-direct {v1}, Lorg/b/c/b/j;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 52
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 53
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 54
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/link"

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

    .line 60
    :goto_0
    return-object v0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 59
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 60
    const/4 v0, 0x0

    goto :goto_0

    .line 62
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/DeviceInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 69
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 70
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 71
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/devices"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 78
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 119
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 120
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 121
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->e:Lorg/b/c/f;

    const/4 v4, 0x0

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    goto :goto_0

    .line 128
    :cond_0
    throw v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->b:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public a(Lorg/b/e/a/k;)V
    .locals 0
    .parameter

    .prologue
    .line 42
    iput-object p1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    .line 43
    return-void
.end method

.method public b(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/SocialAccountDTO;)Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 102
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 103
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 104
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/link?keep=true"

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

    .line 110
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 110
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :cond_0
    throw v0
.end method

.method public b(Ljava/lang/Long;Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;)Lorg/b/c/l;
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserInfo;",
            ")",
            "Lorg/b/c/l",
            "<",
            "Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v3, Lorg/b/c/b;

    invoke-direct {v3, p2}, Lorg/b/c/b;-><init>(Ljava/lang/Object;)V

    .line 86
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 87
    const-string v0, "userId"

    invoke-virtual {v5, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->a:Lorg/b/e/a/k;

    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->b:Ljava/lang/String;

    const-string v2, "/users/{userId}/account-link"

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/b/c/f;->b:Lorg/b/c/f;

    const-class v4, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual/range {v0 .. v5}, Lorg/b/e/a/k;->a(Ljava/lang/String;Lorg/b/c/f;Lorg/b/c/b;Ljava/lang/Class;Ljava/util/Map;)Lorg/b/c/l;
    :try_end_0
    .catch Lorg/b/e/a/j; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 93
    :goto_0
    return-object v0

    .line 90
    :catch_0
    move-exception v0

    .line 91
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    if-eqz v1, :cond_0

    .line 92
    iget-object v1, p0, Lcom/etermax/gamescommon/login/datasource/a/b;->c:Lorg/a/a/a/a;

    invoke-interface {v1, v0}, Lorg/a/a/a/a;->a(Lorg/b/e/a/j;)V

    .line 93
    const/4 v0, 0x0

    goto :goto_0

    .line 95
    :cond_0
    throw v0
.end method
