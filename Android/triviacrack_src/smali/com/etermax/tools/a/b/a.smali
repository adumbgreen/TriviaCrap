.class public Lcom/etermax/tools/a/b/a;
.super Lorg/b/e/a/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lorg/b/e/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/a/i;)V
    .locals 3
    .parameter

    .prologue
    .line 16
    :try_start_0
    invoke-super {p0, p1}, Lorg/b/e/a/a;->a(Lorg/b/c/a/i;)V
    :try_end_0
    .catch Lorg/b/e/a/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-void

    .line 17
    :catch_0
    move-exception v0

    .line 18
    invoke-virtual {v0}, Lorg/b/e/a/b;->a()Lorg/b/c/i;

    move-result-object v1

    invoke-virtual {v1}, Lorg/b/c/i;->a()I

    move-result v1

    const/16 v2, 0x193

    if-ne v1, v2, :cond_0

    .line 19
    new-instance v0, Lcom/etermax/tools/a/c/a;

    invoke-direct {v0}, Lcom/etermax/tools/a/c/a;-><init>()V

    throw v0

    .line 21
    :cond_0
    throw v0
.end method
