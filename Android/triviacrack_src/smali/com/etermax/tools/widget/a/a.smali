.class public Lcom/etermax/tools/widget/a/a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;"
    }
.end annotation


# instance fields
.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Landroid/content/Context;

.field protected e:Lcom/etermax/tools/widget/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/tools/widget/a/e",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V
    .locals 4
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
    .line 17
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/etermax/tools/widget/a/a;->d:Landroid/content/Context;

    .line 19
    iput-object p3, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    .line 22
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/a/h;

    .line 23
    invoke-virtual {v0}, Lcom/etermax/tools/widget/a/h;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 24
    iget-object v2, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_1
    invoke-virtual {v0}, Lcom/etermax/tools/widget/a/h;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/a/g;

    .line 28
    iget-object v3, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    :cond_2
    return-void
.end method


# virtual methods
.method protected a(ILandroid/view/View;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/a/a;->b(I)Z

    move-result v0

    .line 125
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/a/a;->a(I)Z

    move-result v1

    .line 127
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    invoke-interface {v0, p2}, Lcom/etermax/tools/widget/a/e;->f(Landroid/view/View;)V

    .line 139
    :goto_0
    return-void

    .line 130
    :cond_0
    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    invoke-interface {v0, p2}, Lcom/etermax/tools/widget/a/e;->d(Landroid/view/View;)V

    goto :goto_0

    .line 133
    :cond_1
    if-eqz v1, :cond_2

    .line 134
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    invoke-interface {v0, p2}, Lcom/etermax/tools/widget/a/e;->e(Landroid/view/View;)V

    goto :goto_0

    .line 137
    :cond_2
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    invoke-interface {v0, p2}, Lcom/etermax/tools/widget/a/e;->g(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Lcom/etermax/tools/widget/a/g;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/tools/widget/a/g",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 39
    move v0, v1

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 42
    iget-object v2, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 43
    instance-of v3, v2, Lcom/etermax/tools/widget/a/g;

    if-eqz v3, :cond_2

    .line 45
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 46
    iget-object v1, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 47
    const/4 v1, 0x1

    .line 53
    :cond_0
    if-eqz v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/etermax/tools/widget/a/a;->notifyDataSetChanged()V

    .line 56
    :cond_1
    return-void

    .line 40
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected a(I)Z
    .locals 1
    .parameter

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/etermax/tools/widget/a/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/a/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected b(I)Z
    .locals 1
    .parameter

    .prologue
    .line 142
    if-lez p1, :cond_0

    add-int/lit8 v0, p1, -0x1

    invoke-virtual {p0, v0}, Lcom/etermax/tools/widget/a/a;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 91
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 74
    instance-of v1, v0, Lcom/etermax/tools/widget/a/h;

    if-eqz v1, :cond_0

    .line 75
    const/4 v0, 0x0

    .line 81
    :goto_0
    return v0

    .line 76
    :cond_0
    instance-of v0, v0, Lcom/etermax/tools/widget/a/g;

    if-eqz v0, :cond_1

    .line 77
    const/4 v0, 0x1

    goto :goto_0

    .line 79
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/a/a;->getItemViewType(I)I

    move-result v1

    .line 98
    if-nez p2, :cond_0

    .line 99
    packed-switch v1, :pswitch_data_0

    .line 111
    :cond_0
    :goto_0
    invoke-virtual {p0, p1}, Lcom/etermax/tools/widget/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 113
    if-nez v1, :cond_2

    .line 114
    iget-object v1, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/tools/widget/a/h;

    invoke-interface {v1, p2, v0}, Lcom/etermax/tools/widget/a/e;->a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V

    .line 120
    :cond_1
    :goto_1
    return-object p2

    .line 101
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    iget-object v2, p0, Lcom/etermax/tools/widget/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/etermax/tools/widget/a/e;->g(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 104
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    iget-object v2, p0, Lcom/etermax/tools/widget/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/etermax/tools/widget/a/e;->h(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 116
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/etermax/tools/widget/a/a;->a(ILandroid/view/View;)V

    .line 118
    iget-object v1, p0, Lcom/etermax/tools/widget/a/a;->e:Lcom/etermax/tools/widget/a/e;

    check-cast v0, Lcom/etermax/tools/widget/a/g;

    invoke-interface {v1, p0, p2, v0}, Lcom/etermax/tools/widget/a/e;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/g;)V

    goto :goto_1

    .line 99
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x2

    .line 66
    return v0
.end method
