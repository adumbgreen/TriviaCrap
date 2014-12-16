.class public Lcom/etermax/preguntados/datasource/a/a;
.super Lcom/etermax/tools/a/b/a;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/etermax/tools/a/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/b/c/a/i;)V
    .locals 2
    .parameter

    .prologue
    .line 15
    :try_start_0
    invoke-super {p0, p1}, Lcom/etermax/tools/a/b/a;->a(Lorg/b/c/a/i;)V
    :try_end_0
    .catch Lorg/b/e/a/b; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    return-void

    .line 16
    :catch_0
    move-exception v0

    .line 17
    new-instance v1, Lcom/etermax/preguntados/datasource/a/b;

    invoke-direct {v1, v0}, Lcom/etermax/preguntados/datasource/a/b;-><init>(Lorg/b/e/a/b;)V

    throw v1
.end method
