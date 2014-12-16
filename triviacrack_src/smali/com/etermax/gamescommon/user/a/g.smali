.class public Lcom/etermax/gamescommon/user/a/g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"

# interfaces
.implements Landroid/widget/Filterable;


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/b/a;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/a/f;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/a/f;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/widget/Filter;

.field private e:Lcom/etermax/gamescommon/user/a/a;

.field private f:Landroid/content/Context;

.field private g:I

.field private h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/etermax/gamescommon/user/a/a;)V
    .locals 6
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/a/f;",
            ">;",
            "Lcom/etermax/gamescommon/user/a/a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/etermax/gamescommon/user/a/g;-><init>(Landroid/content/Context;ILjava/util/List;Lcom/etermax/gamescommon/user/a/a;Z)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/List;Lcom/etermax/gamescommon/user/a/a;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/a/f;",
            ">;",
            "Lcom/etermax/gamescommon/user/a/a;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/etermax/gamescommon/user/a/g;->f:Landroid/content/Context;

    .line 43
    iput-object p3, p0, Lcom/etermax/gamescommon/user/a/g;->b:Ljava/util/List;

    .line 44
    iput-object p4, p0, Lcom/etermax/gamescommon/user/a/g;->e:Lcom/etermax/gamescommon/user/a/a;

    .line 45
    iput p2, p0, Lcom/etermax/gamescommon/user/a/g;->g:I

    .line 46
    iput-boolean p5, p0, Lcom/etermax/gamescommon/user/a/g;->h:Z

    .line 47
    invoke-direct {p0, p3}, Lcom/etermax/gamescommon/user/a/g;->a(Ljava/util/List;)V

    .line 48
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/user/a/g;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/user/a/g;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/user/a/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    .line 52
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/a/f;

    .line 53
    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/f;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 54
    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    new-instance v2, Lcom/etermax/gamescommon/user/b/b;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/f;->a()Lcom/etermax/gamescommon/h/a/e;

    move-result-object v4

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/f;->c()Z

    move-result v5

    invoke-direct {v2, v4, v5}, Lcom/etermax/gamescommon/user/b/b;-><init>(Lcom/etermax/gamescommon/h/a/e;Z)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/f;->b()Ljava/util/List;

    move-result-object v7

    move v4, v3

    move v5, v3

    .line 59
    :goto_0
    if-nez v4, :cond_0

    .line 60
    new-instance v8, Lcom/etermax/gamescommon/user/b/d;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/a/f;->a()Lcom/etermax/gamescommon/h/a/e;

    move-result-object v1

    iget v2, p0, Lcom/etermax/gamescommon/user/a/g;->g:I

    invoke-direct {v8, v1, v2}, Lcom/etermax/gamescommon/user/b/d;-><init>(Lcom/etermax/gamescommon/h/a/e;I)V

    move v2, v3

    .line 63
    :goto_1
    iget v1, p0, Lcom/etermax/gamescommon/user/a/g;->g:I

    if-ge v2, v1, :cond_2

    .line 64
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    add-int v9, v5, v2

    if-le v1, v9, :cond_1

    .line 65
    add-int v1, v5, v2

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;

    invoke-virtual {v8, v1}, Lcom/etermax/gamescommon/user/b/d;->a(Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V

    .line 63
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1

    .line 68
    :cond_2
    iget v1, p0, Lcom/etermax/gamescommon/user/a/g;->g:I

    add-int v2, v5, v1

    .line 70
    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v2, :cond_4

    .line 73
    const/4 v1, 0x1

    :goto_2
    move v4, v1

    move v5, v2

    .line 75
    goto :goto_0

    .line 78
    :cond_3
    return-void

    :cond_4
    move v1, v4

    goto :goto_2
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->b:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/etermax/gamescommon/user/a/g;->a(Ljava/util/List;)V

    .line 82
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->d:Landroid/widget/Filter;

    if-nez v0, :cond_0

    .line 153
    new-instance v0, Lcom/etermax/gamescommon/user/a/h;

    invoke-direct {v0, p0}, Lcom/etermax/gamescommon/user/a/h;-><init>(Lcom/etermax/gamescommon/user/a/g;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->d:Landroid/widget/Filter;

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->d:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 96
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/b/a;->a()Lcom/etermax/gamescommon/user/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/b/c;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 124
    if-nez p2, :cond_0

    .line 125
    sget-object v1, Lcom/etermax/gamescommon/user/a/g$1;->a:[I

    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/b/a;->a()Lcom/etermax/gamescommon/user/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/b/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 135
    :cond_0
    :goto_0
    sget-object v1, Lcom/etermax/gamescommon/user/a/g$1;->a:[I

    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/b/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/b/a;->a()Lcom/etermax/gamescommon/user/b/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/user/b/c;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_1

    .line 147
    :goto_1
    return-object p2

    .line 127
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->e:Lcom/etermax/gamescommon/user/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/g;->f:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/user/a/a;->b(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 130
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->e:Lcom/etermax/gamescommon/user/a/a;

    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/g;->f:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/etermax/gamescommon/user/a/a;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    .line 137
    :pswitch_2
    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/g;->e:Lcom/etermax/gamescommon/user/a/a;

    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/b/d;

    iget-boolean v2, p0, Lcom/etermax/gamescommon/user/a/g;->h:Z

    invoke-interface {v1, p0, p2, v0, v2}, Lcom/etermax/gamescommon/user/a/a;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/user/b/d;Z)V

    goto :goto_1

    .line 142
    :pswitch_3
    iget-object v1, p0, Lcom/etermax/gamescommon/user/a/g;->e:Lcom/etermax/gamescommon/user/a/a;

    iget-object v0, p0, Lcom/etermax/gamescommon/user/a/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/user/b/b;

    invoke-interface {v1, p0, p2, v0}, Lcom/etermax/gamescommon/user/a/a;->a(Landroid/widget/BaseAdapter;Landroid/view/View;Lcom/etermax/gamescommon/user/b/b;)V

    goto :goto_1

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 135
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 101
    invoke-static {}, Lcom/etermax/gamescommon/user/b/c;->values()[Lcom/etermax/gamescommon/user/b/c;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 116
    const/4 v0, 0x0

    return v0
.end method
