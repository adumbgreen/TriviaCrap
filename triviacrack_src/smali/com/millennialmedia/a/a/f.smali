.class Lcom/millennialmedia/a/a/f;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/millennialmedia/a/a/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/c;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 1140
    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->a:Lcom/millennialmedia/a/a/s;

    if-nez v0, :cond_0

    .line 1141
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1143
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->a:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 1144
    return-void
.end method

.method public a(Lcom/millennialmedia/a/a/s;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->a:Lcom/millennialmedia/a/a/s;

    if-eqz v0, :cond_0

    .line 1123
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1125
    :cond_0
    iput-object p1, p0, Lcom/millennialmedia/a/a/f;->a:Lcom/millennialmedia/a/a/s;

    .line 1126
    return-void
.end method

.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/millennialmedia/a/a/d/a;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 1131
    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->a:Lcom/millennialmedia/a/a/s;

    if-nez v0, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 1134
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/f;->a:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
