.class public Lcom/etermax/gamescommon/dashboard/a/a/a;
.super Lcom/etermax/tools/widget/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/widget/a/a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private a:Lcom/etermax/gamescommon/dashboard/a/a/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/dashboard/a/a/b",
            "<TT;>;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLcom/etermax/gamescommon/dashboard/a/a/b;)V
    .locals 5
    .parameter
    .parameter
    .parameter
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
            "Ljava/util/List",
            "<",
            "Lcom/etermax/tools/widget/a/i",
            "<TT;>;>;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/dashboard/a/a/c",
            "<TT;>;>;Z",
            "Lcom/etermax/gamescommon/dashboard/a/a/b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 22
    invoke-direct {p0, p1, p2, p6}, Lcom/etermax/tools/widget/a/a;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/etermax/tools/widget/a/e;)V

    .line 23
    iput-object p6, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    .line 24
    iput-boolean p5, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->b:Z

    .line 25
    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v2}, Lcom/etermax/gamescommon/dashboard/a/a/b;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 29
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a/a;->a()V

    .line 36
    :goto_0
    invoke-interface {p6}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    add-int/lit8 v1, v0, 0x1

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v0, v1

    .line 41
    :cond_0
    invoke-interface {p6}, Lcom/etermax/gamescommon/dashboard/a/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 42
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 43
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    add-int/lit8 v0, v2, 0x1

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 44
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/a/i;

    .line 45
    iget-object v4, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v4, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_1

    .line 31
    :cond_1
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v2}, Lcom/etermax/gamescommon/dashboard/a/a/b;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 32
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 50
    :cond_2
    invoke-interface {p6}, Lcom/etermax/gamescommon/dashboard/a/a/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p4, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 51
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    new-instance v1, Lcom/etermax/tools/widget/a/h;

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-direct {v1, v2, v3}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/dashboard/a/a/c;

    .line 53
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_3
    return-void

    :cond_4
    move v0, v1

    goto/16 :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 174
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 177
    :cond_0
    return-void
.end method

.method protected a(I)Z
    .locals 2
    .parameter

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a/a;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-eq p1, v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/dashboard/a/a/a;->getItemViewType(I)I

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/dashboard/a/a/a;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 181
    invoke-virtual {p0, v2}, Lcom/etermax/gamescommon/dashboard/a/a/a;->getItemViewType(I)I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 182
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 183
    invoke-virtual {p0}, Lcom/etermax/gamescommon/dashboard/a/a/a;->notifyDataSetChanged()V

    .line 186
    :cond_0
    return-void
.end method

.method public getItemViewType(I)I
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x7

    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x3

    const/4 v0, 0x2

    .line 82
    iget-object v5, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->c:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 85
    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    const/16 v0, 0x8

    .line 104
    :cond_0
    :goto_0
    return v0

    .line 87
    :cond_1
    const/16 v6, 0x9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 88
    const/16 v0, 0x9

    goto :goto_0

    .line 89
    :cond_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 91
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    .line 92
    goto :goto_0

    .line 93
    :cond_3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    .line 94
    goto :goto_0

    .line 95
    :cond_4
    instance-of v0, v5, Lcom/etermax/tools/widget/a/i;

    if-eqz v0, :cond_5

    .line 96
    const/4 v0, 0x4

    goto :goto_0

    .line 97
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v3

    .line 98
    goto :goto_0

    .line 99
    :cond_6
    instance-of v0, v5, Lcom/etermax/gamescommon/dashboard/a/a/c;

    if-nez v0, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    move v0, v4

    .line 100
    goto :goto_0

    .line 102
    :cond_8
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/a/a;->getItemViewType(I)I

    move-result v0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x4

    .line 110
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/tools/widget/a/a;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 111
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/dashboard/a/a/a;->getItemViewType(I)I

    move-result v2

    .line 113
    if-nez v0, :cond_0

    .line 114
    packed-switch v2, :pswitch_data_0

    :cond_0
    move-object v1, v0

    .line 142
    :goto_0
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/dashboard/a/a/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 143
    const/16 v3, 0x8

    if-ne v2, v3, :cond_2

    .line 144
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->b(Landroid/view/View;)V

    .line 165
    :cond_1
    :goto_1
    return-object v1

    .line 116
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->e(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 117
    goto :goto_0

    .line 119
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->f(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 120
    goto :goto_0

    .line 122
    :pswitch_2
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 123
    goto :goto_0

    .line 125
    :pswitch_3
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->g(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 126
    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->c(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 129
    goto :goto_0

    .line 131
    :pswitch_5
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 132
    goto :goto_0

    .line 134
    :pswitch_6
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->g(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    .line 135
    goto :goto_0

    .line 137
    :pswitch_7
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->d:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->d(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 145
    :cond_2
    const/16 v3, 0x9

    if-ne v2, v3, :cond_3

    .line 146
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->c(Landroid/view/View;)V

    goto :goto_1

    .line 147
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 148
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a(Landroid/view/View;)V

    goto :goto_1

    .line 149
    :cond_4
    const/4 v3, 0x5

    if-ne v2, v3, :cond_5

    .line 150
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->d(Landroid/view/View;)V

    .line 151
    iget-object v0, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    iget-boolean v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a(Landroid/view/View;Ljava/lang/Boolean;)V

    goto :goto_1

    .line 152
    :cond_5
    const/4 v3, 0x3

    if-ne v2, v3, :cond_6

    .line 153
    new-instance v0, Lcom/etermax/tools/widget/a/h;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v4}, Lcom/etermax/tools/widget/a/h;-><init>(Ljava/util/List;I)V

    .line 154
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v2, v1, v0}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V

    goto/16 :goto_1

    .line 155
    :cond_6
    if-ne v2, v4, :cond_7

    .line 156
    invoke-virtual {p0, p1, v1}, Lcom/etermax/gamescommon/dashboard/a/a/a;->a(ILandroid/view/View;)V

    .line 157
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    check-cast v0, Lcom/etermax/tools/widget/a/i;

    invoke-interface {v2, p0, v1, v0}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/tools/widget/a/i;)V

    goto/16 :goto_1

    .line 158
    :cond_7
    const/4 v3, 0x6

    if-ne v2, v3, :cond_8

    .line 159
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    check-cast v0, Lcom/etermax/tools/widget/a/h;

    invoke-interface {v2, v1, v0}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a(Landroid/view/View;Lcom/etermax/tools/widget/a/h;)V

    goto/16 :goto_1

    .line 160
    :cond_8
    const/4 v3, 0x7

    if-ne v2, v3, :cond_1

    .line 161
    invoke-virtual {p0, p1, v1}, Lcom/etermax/gamescommon/dashboard/a/a/a;->a(ILandroid/view/View;)V

    .line 162
    iget-object v2, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    check-cast v0, Lcom/etermax/gamescommon/dashboard/a/a/c;

    invoke-interface {v2, p0, v1, v0}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/dashboard/a/a/c;)V

    goto/16 :goto_1

    .line 114
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Lcom/etermax/tools/widget/a/a;->getViewTypeCount()I

    move-result v0

    .line 61
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 62
    add-int/lit8 v0, v0, 0x1

    .line 64
    :cond_0
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    add-int/lit8 v0, v0, 0x1

    .line 67
    :cond_1
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    add-int/lit8 v0, v0, 0x1

    .line 72
    :cond_2
    iget-object v1, p0, Lcom/etermax/gamescommon/dashboard/a/a/a;->a:Lcom/etermax/gamescommon/dashboard/a/a/b;

    invoke-interface {v1}, Lcom/etermax/gamescommon/dashboard/a/a/b;->c()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 73
    add-int/lit8 v0, v0, 0x1

    .line 74
    add-int/lit8 v0, v0, 0x1

    .line 76
    :cond_3
    add-int/lit8 v0, v0, 0x1

    .line 77
    return v0
.end method
