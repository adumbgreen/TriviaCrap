.class abstract Lcom/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/b/a/aa;

.field final b:Lcom/b/a/ai;

.field final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<TT;>;"
        }
    .end annotation
.end field

.field final d:Z

.field final e:Z

.field final f:I

.field final g:Landroid/graphics/drawable/Drawable;

.field final h:Ljava/lang/String;

.field i:Z

.field j:Z


# direct methods
.method constructor <init>(Lcom/b/a/aa;Ljava/lang/Object;Lcom/b/a/ai;ZZILandroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/b/a/aa;",
            "TT;",
            "Lcom/b/a/ai;",
            "ZZI",
            "Landroid/graphics/drawable/Drawable;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/b/a/a;->a:Lcom/b/a/aa;

    .line 48
    iput-object p3, p0, Lcom/b/a/a;->b:Lcom/b/a/ai;

    .line 49
    new-instance v0, Lcom/b/a/b;

    iget-object v1, p1, Lcom/b/a/aa;->i:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0, p0, p2, v1}, Lcom/b/a/b;-><init>(Lcom/b/a/a;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    iput-object v0, p0, Lcom/b/a/a;->c:Ljava/lang/ref/WeakReference;

    .line 50
    iput-boolean p4, p0, Lcom/b/a/a;->d:Z

    .line 51
    iput-boolean p5, p0, Lcom/b/a/a;->e:Z

    .line 52
    iput p6, p0, Lcom/b/a/a;->f:I

    .line 53
    iput-object p7, p0, Lcom/b/a/a;->g:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object p8, p0, Lcom/b/a/a;->h:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract a(Landroid/graphics/Bitmap;Lcom/b/a/ae;)V
.end method

.method b()V
    .locals 1

    .prologue
    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/b/a/a;->j:Z

    .line 63
    return-void
.end method

.method c()Lcom/b/a/ai;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/b/a/a;->b:Lcom/b/a/ai;

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lcom/b/a/a;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/b/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method f()Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/b/a/a;->j:Z

    return v0
.end method

.method g()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/b/a/a;->i:Z

    return v0
.end method

.method h()Lcom/b/a/aa;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/b/a/a;->a:Lcom/b/a/aa;

    return-object v0
.end method
