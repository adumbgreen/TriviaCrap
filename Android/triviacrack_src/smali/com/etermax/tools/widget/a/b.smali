.class public Lcom/etermax/tools/widget/a/b;
.super Lcom/etermax/tools/widget/a/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/widget/a/a",
        "<TT;>;",
        "Landroid/widget/Filterable;"
    }
.end annotation


# instance fields
.field private a:Lcom/etermax/tools/widget/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/tools/widget/a/b",
            "<TT;>.com/etermax/tools/widget/a/c;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/h",
            "<TT;>;>;",
            "Lcom/etermax/tools/widget/a/e",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V

    .line 15
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/tools/widget/a/b;->b:Ljava/util/List;

    .line 19
    return-void
.end method

.method static synthetic a(Lcom/etermax/tools/widget/a/b;)Ljava/util/List;
    .locals 1
    .parameter

    .prologue
    .line 11
    iget-object v0, p0, Lcom/etermax/tools/widget/a/b;->b:Ljava/util/List;

    return-object v0
.end method

.method static synthetic a(Lcom/etermax/tools/widget/a/b;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 11
    iput-object p1, p0, Lcom/etermax/tools/widget/a/b;->b:Ljava/util/List;

    return-object p1
.end method


# virtual methods
.method public a(Lcom/etermax/tools/widget/a/g;)V
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/a;->a(Lcom/etermax/tools/widget/a/g;)V

    .line 34
    iget-object v0, p0, Lcom/etermax/tools/widget/a/b;->b:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 36
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/etermax/tools/widget/a/b;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 38
    iget-object v1, p0, Lcom/etermax/tools/widget/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 39
    instance-of v2, v1, Lcom/etermax/tools/widget/a/g;

    if-eqz v2, :cond_1

    .line 41
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/etermax/tools/widget/a/b;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 48
    :cond_0
    return-void

    .line 36
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/etermax/tools/widget/a/b;->a:Lcom/etermax/tools/widget/a/c;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/etermax/tools/widget/a/c;

    invoke-direct {v0, p0}, Lcom/etermax/tools/widget/a/c;-><init>(Lcom/etermax/tools/widget/a/b;)V

    iput-object v0, p0, Lcom/etermax/tools/widget/a/b;->a:Lcom/etermax/tools/widget/a/c;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/etermax/tools/widget/a/b;->a:Lcom/etermax/tools/widget/a/c;

    return-object v0
.end method
