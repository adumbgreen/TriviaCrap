.class public Lcom/etermax/gamescommon/menu/a/l;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/menu/a/k;

.field b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/etermax/gamescommon/menu/a/l;->b:Landroid/content/Context;

    .line 20
    new-instance v0, Lcom/etermax/gamescommon/menu/a/k;

    invoke-direct {v0}, Lcom/etermax/gamescommon/menu/a/k;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    .line 21
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/k;->b()V

    .line 77
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/l;->notifyDataSetInvalidated()V

    .line 78
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/a/o;)V
    .locals 1
    .parameter

    .prologue
    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/menu/a/k;->a(Lcom/etermax/gamescommon/menu/a/o;)V

    .line 72
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/l;->notifyDataSetChanged()V

    .line 73
    return-void
.end method

.method public a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/menu/a/o;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/etermax/gamescommon/menu/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/gamescommon/menu/a/k;->a(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    .line 62
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/l;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/etermax/gamescommon/menu/a/o;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/etermax/gamescommon/menu/a/a/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0, p1, p2}, Lcom/etermax/gamescommon/menu/a/k;->b(Lcom/etermax/gamescommon/menu/a/o;Ljava/util/Collection;)V

    .line 67
    invoke-virtual {p0}, Lcom/etermax/gamescommon/menu/a/l;->notifyDataSetChanged()V

    .line 68
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/k;->a()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 40
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/menu/a/k;->a(I)Lcom/etermax/gamescommon/menu/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 45
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .parameter

    .prologue
    .line 25
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/menu/a/k;->a(I)Lcom/etermax/gamescommon/menu/a/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/a;->a()Lcom/etermax/gamescommon/menu/a/a/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/g;->ordinal()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 82
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/menu/a/k;->a(I)Lcom/etermax/gamescommon/menu/a/a/a;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/etermax/gamescommon/menu/a/l;->b:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p0}, Lcom/etermax/gamescommon/menu/a/a/a;->a(Landroid/content/Context;Landroid/view/View;Landroid/widget/BaseAdapter;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 30
    invoke-static {}, Lcom/etermax/gamescommon/menu/a/a/g;->values()[Lcom/etermax/gamescommon/menu/a/a/g;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1
    .parameter

    .prologue
    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/menu/a/l;->a:Lcom/etermax/gamescommon/menu/a/k;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/menu/a/k;->a(I)Lcom/etermax/gamescommon/menu/a/a/a;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/a;->a()Lcom/etermax/gamescommon/menu/a/a/g;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/etermax/gamescommon/menu/a/a/g;->a()Z

    move-result v0

    return v0
.end method
