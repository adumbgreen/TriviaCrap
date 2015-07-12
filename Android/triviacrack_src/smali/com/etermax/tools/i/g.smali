.class public Lcom/etermax/tools/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/tools/i/h;)V
    .locals 0
    .parameter

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/etermax/tools/i/g;->b(Lcom/etermax/tools/i/h;)V

    .line 19
    return-void
.end method

.method protected a(Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    invoke-interface {p1, p2}, Lcom/etermax/tools/i/h;->b(Ljava/lang/Exception;)V

    .line 40
    return-void
.end method

.method protected a(Lcom/etermax/tools/i/h;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 34
    invoke-interface {p1, p2}, Lcom/etermax/tools/i/h;->c(Ljava/lang/Object;)V

    .line 35
    return-void
.end method

.method protected b(Lcom/etermax/tools/i/h;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    :try_start_0
    invoke-interface {p1}, Lcom/etermax/tools/i/h;->a()Ljava/lang/Object;

    move-result-object v0

    .line 25
    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/i/g;->a(Lcom/etermax/tools/i/h;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    :goto_0
    return-void

    .line 27
    :catch_0
    move-exception v0

    .line 28
    invoke-virtual {p0, p1, v0}, Lcom/etermax/tools/i/g;->a(Lcom/etermax/tools/i/h;Ljava/lang/Exception;)V

    goto :goto_0
.end method
