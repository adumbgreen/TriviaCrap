.class public abstract Lcom/etermax/tools/a/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected s:Landroid/content/Context;

.field protected t:Lcom/etermax/tools/j/a;

.field protected u:Lcom/etermax/tools/a/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method private c()V
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/a;->H()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    new-instance v0, Lcom/etermax/tools/a/c/c;

    invoke-direct {v0}, Lcom/etermax/tools/a/c/c;-><init>()V

    throw v0

    .line 237
    :cond_0
    return-void
.end method


# virtual methods
.method protected E()Lcom/google/gson/GsonBuilder;
    .locals 2

    .prologue
    .line 61
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v1, "MM/dd/yyyy HH:mm:ss ZZZ"

    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected F()Lorg/b/e/a/k;
    .locals 4

    .prologue
    .line 65
    new-instance v0, Lorg/b/e/a/k;

    invoke-direct {v0}, Lorg/b/e/a/k;-><init>()V

    .line 66
    new-instance v1, Lorg/b/c/b/b/a;

    invoke-direct {v1}, Lorg/b/c/b/b/a;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/a;->E()Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/b/c/b/b/a;->a(Lcom/google/gson/Gson;)V

    .line 69
    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/b/c/b/c;

    invoke-direct {v3}, Lorg/b/c/b/c;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0}, Lorg/b/e/a/k;->c()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    new-instance v1, Lorg/b/c/a/k;

    invoke-direct {v1}, Lorg/b/c/a/k;-><init>()V

    invoke-virtual {v0, v1}, Lorg/b/e/a/k;->a(Lorg/b/c/a/g;)V

    .line 77
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 78
    new-instance v2, Lcom/etermax/tools/a/a/b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/etermax/tools/a/a/b;-><init>(Lcom/etermax/tools/a/a/a;Lcom/etermax/tools/a/a/a$1;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    invoke-virtual {v0, v1}, Lorg/b/e/a/k;->a(Ljava/util/List;)V

    .line 81
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/a;->d()Lcom/etermax/tools/a/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/b/e/a/k;->a(Lorg/b/e/a/h;)V

    .line 83
    return-object v0
.end method

.method protected G()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 197
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 199
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/a;->b()Ljava/lang/String;

    move-result-object v1

    .line 200
    if-eqz v1, :cond_0

    .line 201
    const-string v2, "Cookie"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    :cond_0
    invoke-static {}, Lcom/etermax/tools/g/a;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 205
    const-string v1, "god-password"

    invoke-static {}, Lcom/etermax/tools/g/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    :cond_1
    return-object v0
.end method

.method public H()Z
    .locals 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/etermax/tools/a/a/a;->s:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 241
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 242
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Lcom/etermax/tools/a/a/c;)Ljava/lang/Object;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/etermax/tools/a/a/c",
            "<TU;>;)TU;"
        }
    .end annotation

    .prologue
    .line 213
    :try_start_0
    invoke-direct {p0}, Lcom/etermax/tools/a/a/a;->c()V

    .line 214
    invoke-interface {p1}, Lcom/etermax/tools/a/a/c;->b()Ljava/lang/Object;
    :try_end_0
    .catch Lcom/etermax/tools/a/c/a; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 230
    :goto_0
    return-object v0

    .line 215
    :catch_0
    move-exception v0

    .line 216
    const/4 v1, 0x0

    .line 218
    :try_start_1
    invoke-virtual {p0}, Lcom/etermax/tools/a/a/a;->a()Z
    :try_end_1
    .catch Lorg/b/e/a/g; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-result v1

    .line 224
    :goto_1
    if-eqz v1, :cond_0

    .line 225
    invoke-interface {p1}, Lcom/etermax/tools/a/a/c;->b()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 219
    :catch_1
    move-exception v0

    .line 220
    throw v0

    .line 227
    :cond_0
    throw v0

    .line 221
    :catch_2
    move-exception v2

    goto :goto_1
.end method

.method protected abstract a()Z
.end method

.method protected abstract b()Ljava/lang/String;
.end method

.method protected abstract d()Lcom/etermax/tools/a/b/a;
.end method
