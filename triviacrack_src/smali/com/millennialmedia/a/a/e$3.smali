.class Lcom/millennialmedia/a/a/e$3;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/e;->a(Z)Lcom/millennialmedia/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<",
        "Ljava/lang/Number;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/millennialmedia/a/a/e;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/e;)V
    .locals 0
    .parameter

    .prologue
    .line 297
    iput-object p1, p0, Lcom/millennialmedia/a/a/e$3;->a:Lcom/millennialmedia/a/a/e;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Double;
    .locals 2
    .parameter

    .prologue
    .line 301
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 302
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 303
    const/4 v0, 0x0

    .line 305
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->k()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Number;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 311
    if-nez p2, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 318
    :goto_0
    return-void

    .line 315
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 316
    iget-object v2, p0, Lcom/millennialmedia/a/a/e$3;->a:Lcom/millennialmedia/a/a/e;

    invoke-static {v2, v0, v1}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/e;D)V

    .line 317
    invoke-virtual {p1, p2}, Lcom/millennialmedia/a/a/d/c;->a(Ljava/lang/Number;)Lcom/millennialmedia/a/a/d/c;

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 297
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/e$3;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/e$3;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method
