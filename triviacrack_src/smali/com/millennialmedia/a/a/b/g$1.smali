.class Lcom/millennialmedia/a/a/b/g$1;
.super Lcom/millennialmedia/a/a/s;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/g;->a(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/millennialmedia/a/a/s",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/millennialmedia/a/a/e;

.field final synthetic d:Lcom/millennialmedia/a/a/c/a;

.field final synthetic e:Lcom/millennialmedia/a/a/b/g;

.field private f:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/g;ZZLcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 136
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/g$1;->e:Lcom/millennialmedia/a/a/b/g;

    iput-boolean p2, p0, Lcom/millennialmedia/a/a/b/g$1;->a:Z

    iput-boolean p3, p0, Lcom/millennialmedia/a/a/b/g$1;->b:Z

    iput-object p4, p0, Lcom/millennialmedia/a/a/b/g$1;->c:Lcom/millennialmedia/a/a/e;

    iput-object p5, p0, Lcom/millennialmedia/a/a/b/g$1;->d:Lcom/millennialmedia/a/a/c/a;

    invoke-direct {p0}, Lcom/millennialmedia/a/a/s;-><init>()V

    return-void
.end method

.method private a()Lcom/millennialmedia/a/a/s;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/millennialmedia/a/a/s",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g$1;->f:Lcom/millennialmedia/a/a/s;

    .line 166
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/g$1;->c:Lcom/millennialmedia/a/a/e;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/g$1;->e:Lcom/millennialmedia/a/a/b/g;

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/g$1;->d:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/t;Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/g$1;->f:Lcom/millennialmedia/a/a/s;

    goto :goto_0
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
    .line 156
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g$1;->b:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/c;->f()Lcom/millennialmedia/a/a/d/c;

    .line 161
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/g$1;->a()Lcom/millennialmedia/a/a/s;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    goto :goto_0
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
    .line 146
    iget-boolean v0, p0, Lcom/millennialmedia/a/a/b/g$1;->a:Z

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->n()V

    .line 148
    const/4 v0, 0x0

    .line 150
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/a/a/b/g$1;->a()Lcom/millennialmedia/a/a/s;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
