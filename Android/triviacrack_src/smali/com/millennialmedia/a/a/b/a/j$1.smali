.class Lcom/millennialmedia/a/a/b/a/j$1;
.super Lcom/millennialmedia/a/a/b/a/l;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/millennialmedia/a/a/b/a/j;->a(Lcom/millennialmedia/a/a/e;Ljava/lang/reflect/Field;Ljava/lang/String;Lcom/millennialmedia/a/a/c/a;ZZ)Lcom/millennialmedia/a/a/b/a/l;
.end annotation


# instance fields
.field final a:Lcom/millennialmedia/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/millennialmedia/a/a/s",
            "<*>;"
        }
    .end annotation
.end field

.field final synthetic b:Lcom/millennialmedia/a/a/e;

.field final synthetic c:Lcom/millennialmedia/a/a/c/a;

.field final synthetic d:Ljava/lang/reflect/Field;

.field final synthetic e:Z

.field final synthetic f:Lcom/millennialmedia/a/a/b/a/j;


# direct methods
.method constructor <init>(Lcom/millennialmedia/a/a/b/a/j;Ljava/lang/String;ZZLcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/c/a;Ljava/lang/reflect/Field;Z)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 95
    iput-object p1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->f:Lcom/millennialmedia/a/a/b/a/j;

    iput-object p5, p0, Lcom/millennialmedia/a/a/b/a/j$1;->b:Lcom/millennialmedia/a/a/e;

    iput-object p6, p0, Lcom/millennialmedia/a/a/b/a/j$1;->c:Lcom/millennialmedia/a/a/c/a;

    iput-object p7, p0, Lcom/millennialmedia/a/a/b/a/j$1;->d:Ljava/lang/reflect/Field;

    iput-boolean p8, p0, Lcom/millennialmedia/a/a/b/a/j$1;->e:Z

    invoke-direct {p0, p2, p3, p4}, Lcom/millennialmedia/a/a/b/a/l;-><init>(Ljava/lang/String;ZZ)V

    .line 96
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->b:Lcom/millennialmedia/a/a/e;

    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->c:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/a/a/e;->a(Lcom/millennialmedia/a/a/c/a;)Lcom/millennialmedia/a/a/s;

    move-result-object v0

    iput-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->a:Lcom/millennialmedia/a/a/s;

    return-void
.end method


# virtual methods
.method a(Lcom/millennialmedia/a/a/d/a;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 114
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->a:Lcom/millennialmedia/a/a/s;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/s;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->e:Z

    if-nez v1, :cond_1

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/millennialmedia/a/a/b/a/j$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p2, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    :cond_1
    return-void
.end method

.method a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 104
    iget-object v0, p0, Lcom/millennialmedia/a/a/b/a/j$1;->d:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/millennialmedia/a/a/b/a/o;

    iget-object v2, p0, Lcom/millennialmedia/a/a/b/a/j$1;->b:Lcom/millennialmedia/a/a/e;

    iget-object v3, p0, Lcom/millennialmedia/a/a/b/a/j$1;->a:Lcom/millennialmedia/a/a/s;

    iget-object v4, p0, Lcom/millennialmedia/a/a/b/a/j$1;->c:Lcom/millennialmedia/a/a/c/a;

    invoke-virtual {v4}, Lcom/millennialmedia/a/a/c/a;->b()Ljava/lang/reflect/Type;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Lcom/millennialmedia/a/a/b/a/o;-><init>(Lcom/millennialmedia/a/a/e;Lcom/millennialmedia/a/a/s;Ljava/lang/reflect/Type;)V

    .line 107
    invoke-virtual {v1, p1, v0}, Lcom/millennialmedia/a/a/s;->a(Lcom/millennialmedia/a/a/d/c;Ljava/lang/Object;)V

    .line 108
    return-void
.end method
