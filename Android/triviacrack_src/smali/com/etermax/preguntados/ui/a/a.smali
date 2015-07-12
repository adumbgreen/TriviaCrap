.class public Lcom/etermax/preguntados/ui/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/animation/Animation;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/a/a;->b:Landroid/util/SparseArray;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/a/a;->c:Landroid/os/Handler;

    .line 30
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 34
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, p2, v1, v2}, Lcom/etermax/preguntados/ui/a/a;->a(Ljava/util/List;IJ)V

    .line 35
    return-void
.end method

.method public a(Ljava/util/List;IJ)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 43
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 45
    iget-object v1, p0, Lcom/etermax/preguntados/ui/a/a;->c:Landroid/os/Handler;

    new-instance v2, Lcom/etermax/preguntados/ui/a/a$1;

    invoke-direct {v2, p0, p1, v0, p2}, Lcom/etermax/preguntados/ui/a/a$1;-><init>(Lcom/etermax/preguntados/ui/a/a;Ljava/util/List;II)V

    int-to-long v3, v0

    mul-long/2addr v3, p3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 43
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-void
.end method
