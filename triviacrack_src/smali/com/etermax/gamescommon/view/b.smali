.class public Lcom/etermax/gamescommon/view/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/view/FlagsLayout;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/view/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/etermax/gamescommon/view/FlagsLayout;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/view/a;",
            ">;",
            "Lcom/etermax/gamescommon/view/FlagsLayout;",
            ")V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/etermax/gamescommon/view/b;->b:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/etermax/gamescommon/view/b;->a:Lcom/etermax/gamescommon/view/FlagsLayout;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/view/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    iput-object p1, p0, Lcom/etermax/gamescommon/view/b;->b:Ljava/util/List;

    .line 40
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/b;->notifyDataSetChanged()V

    .line 41
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etermax/gamescommon/view/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 31
    iget-object v0, p0, Lcom/etermax/gamescommon/view/b;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 35
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/etermax/gamescommon/view/b;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/etermax/gamescommon/view/a;

    .line 46
    if-nez p2, :cond_0

    .line 47
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/etermax/k;->flags_list_item:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    move-object p2, v1

    .line 52
    :goto_0
    new-instance v1, Lcom/etermax/gamescommon/view/b$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/gamescommon/view/b$1;-><init>(Lcom/etermax/gamescommon/view/b;I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    sget v1, Lcom/etermax/i;->flag_name:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 62
    iget v2, v0, Lcom/etermax/gamescommon/view/a;->e:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 64
    sget v1, Lcom/etermax/i;->flag_image:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v0, v0, Lcom/etermax/gamescommon/view/a;->b:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 66
    return-object p2

    .line 49
    :cond_0
    check-cast p2, Landroid/view/ViewGroup;

    goto :goto_0
.end method
