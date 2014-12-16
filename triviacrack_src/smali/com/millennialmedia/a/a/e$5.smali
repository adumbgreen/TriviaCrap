.class Lcom/millennialmedia/a/a/e$5;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/r;)Lcom/millennialmedia/a/a/s;
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
    .line 371
    iput-object p1, p0, Lcom/millennialmedia/a/a/e$5;->a:Lcom/millennialmedia/a/a/e;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;
    .locals 2
    .parameter

    .prologue
    .line 375
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/b;

    move-result-object v0

    sget-object v1, Lcom/millennialmedia/a/a/d/b;->i:Lcom/millennialmedia/a/a/d/b;

    if-ne v0, v1, :cond_0

    .line 376
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V

    .line 377
    const/4 v0, 0x0

    .line 379
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Number;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 385
    if-nez p2, :cond_0

    .line 386
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 390
    :goto_0
    return-void

    .line 389
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/millennialmedia/a/a/d/c;->b(Ljava/lang/String;)Lcom/millennialmedia/a/a/d/c;

    goto :goto_0
.end method

.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 371
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/e$5;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Number;)V

    return-void
.end method

.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 371
    invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/e$5;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Number;

    move-result-object v0

    return-object v0
.end method
