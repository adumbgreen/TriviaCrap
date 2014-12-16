.class Lcom/b/a/at;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static a(Landroid/content/Context;)Ljava/lang/Object;
    .locals 4
    .parameter

    .prologue
    .line 92
    invoke-static {p0}, Lcom/b/a/au;->b(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 93
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 94
    if-nez v0, :cond_0

    .line 95
    invoke-static {v1}, Lcom/b/a/au;->a(Ljava/io/File;)J

    move-result-wide v2

    .line 96
    invoke-static {v1, v2, v3}, Landroid/net/http/HttpResponseCache;->install(Ljava/io/File;J)Landroid/net/http/HttpResponseCache;

    move-result-object v0

    .line 98
    :cond_0
    return-object v0
.end method
