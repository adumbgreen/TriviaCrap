.class Lcom/etermax/gamescommon/gifting/b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/etermax/gamescommon/gifting/a;

.field private b:Landroid/content/Context;

.field private c:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>(Lcom/etermax/gamescommon/gifting/a;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/etermax/gamescommon/gifting/b;->a:Lcom/etermax/gamescommon/gifting/a;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 84
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/gifting/b;->c:Lcom/etermax/gamescommon/dashboard/b;

    .line 87
    iput-object p2, p0, Lcom/etermax/gamescommon/gifting/b;->b:Landroid/content/Context;

    .line 88
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/b;->a:Lcom/etermax/gamescommon/gifting/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/gifting/a;->a(Lcom/etermax/gamescommon/gifting/a;)[Lcom/etermax/tools/social/a/c;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 95
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter

    .prologue
    .line 99
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 106
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/b;->a:Lcom/etermax/gamescommon/gifting/a;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/gifting/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/g;->empty_inbox_dialog_user_images_side_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 107
    if-nez p2, :cond_1

    .line 108
    new-instance p2, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/etermax/gamescommon/gifting/b;->b:Landroid/content/Context;

    invoke-direct {p2, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/b;->a:Lcom/etermax/gamescommon/gifting/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/gifting/a;->a(Lcom/etermax/gamescommon/gifting/a;)[Lcom/etermax/tools/social/a/c;

    move-result-object v0

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/etermax/gamescommon/gifting/b;->a:Lcom/etermax/gamescommon/gifting/a;

    invoke-static {v0}, Lcom/etermax/gamescommon/gifting/a;->a(Lcom/etermax/gamescommon/gifting/a;)[Lcom/etermax/tools/social/a/c;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-virtual {p2}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/etermax/gamescommon/user/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 117
    iget-object v1, p0, Lcom/etermax/gamescommon/gifting/b;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;)V

    .line 120
    :cond_0
    return-object p2

    .line 111
    :cond_1
    check-cast p2, Landroid/widget/ImageView;

    goto :goto_0
.end method
