.class public Lcom/etermax/mopubads/custom/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/etermax/mopubads/custom/b;


# direct methods
.method public static a(Landroid/content/Context;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    .prologue
    .line 19
    sget-object v0, Lcom/etermax/mopubads/custom/a;->a:Lcom/etermax/mopubads/custom/b;

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Lcom/etermax/mopubads/custom/b;

    invoke-static {p0}, Lcom/etermax/a/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/etermax/mopubads/custom/b;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/etermax/mopubads/custom/a;->a:Lcom/etermax/mopubads/custom/b;

    .line 23
    :cond_0
    new-instance v1, Lcom/etermax/mopubads/custom/b;

    const-string v0, "v"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/etermax/mopubads/custom/b;-><init>(Ljava/lang/String;)V

    .line 24
    sget-object v0, Lcom/etermax/mopubads/custom/a;->a:Lcom/etermax/mopubads/custom/b;

    invoke-virtual {v0, v1}, Lcom/etermax/mopubads/custom/b;->a(Lcom/etermax/mopubads/custom/b;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 26
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 31
    :goto_0
    return-object v0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    const-string v1, "mopub ads"

    const-string v2, "CustomEventHelper Exception"

    invoke-static {v1, v2, v0}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 31
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
