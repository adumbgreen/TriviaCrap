.class public Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ViewSwitcher;

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/ViewFlipper;

.field private f:Lcom/etermax/gamescommon/dashboard/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    invoke-direct {p0, p1}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->a(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x1

    .line 39
    invoke-virtual {p0, v2}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->setOrientation(I)V

    .line 40
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/etermax/k;->list_item_image:I

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 42
    new-instance v0, Lcom/etermax/gamescommon/dashboard/b;

    invoke-direct {v0}, Lcom/etermax/gamescommon/dashboard/b;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->f:Lcom/etermax/gamescommon/dashboard/b;

    .line 43
    sget v0, Lcom/etermax/i;->user_avatar:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->b:Landroid/widget/ViewSwitcher;

    .line 44
    sget v0, Lcom/etermax/i;->message_container:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->c:Landroid/widget/LinearLayout;

    .line 45
    sget v0, Lcom/etermax/i;->hour_container:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->d:Landroid/widget/LinearLayout;

    .line 46
    sget v0, Lcom/etermax/i;->image:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->a:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/etermax/i;->transfer_feedback:I

    invoke-virtual {p0, v0}, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewFlipper;

    iput-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->e:Landroid/widget/ViewFlipper;

    .line 49
    return-void
.end method


# virtual methods
.method public a(Lcom/etermax/chat/a/f;)V
    .locals 4
    .parameter

    .prologue
    .line 53
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->a()Z

    move-result v0

    if-nez v0, :cond_4

    .line 55
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->c()Ljava/lang/String;

    move-result-object v1

    .line 56
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    .line 58
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    .line 59
    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->f:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/etermax/chat/a/l;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :goto_1
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v0

    sget-object v1, Lcom/etermax/chat/a/g;->c:Lcom/etermax/chat/a/g;

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->g()Lcom/etermax/chat/a/g;

    move-result-object v0

    sget-object v1, Lcom/etermax/chat/a/g;->d:Lcom/etermax/chat/a/g;

    if-ne v0, v1, :cond_3

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->b:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    .line 76
    :goto_2
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 77
    const/4 v0, 0x5

    .line 82
    :goto_3
    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 83
    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->d:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 84
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->a:Landroid/widget/ImageView;

    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->h()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    return-void

    .line 56
    :cond_1
    invoke-virtual {p1}, Lcom/etermax/chat/a/f;->a()Lcom/etermax/chat/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/chat/a/l;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->f:Lcom/etermax/gamescommon/dashboard/b;

    iget-object v2, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->b:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, v2, v0}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V

    goto :goto_1

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->b:Landroid/widget/ViewSwitcher;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_2

    .line 71
    :cond_4
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->b:Landroid/widget/ViewSwitcher;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    goto :goto_2

    .line 79
    :cond_5
    const/4 v0, 0x3

    goto :goto_3
.end method

.method public setDownloadState(Lcom/etermax/chat/ui/adapter/item/a;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 89
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 90
    sget-object v0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem$1;->a:[I

    invoke-virtual {p1}, Lcom/etermax/chat/ui/adapter/item/a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 99
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->e:Landroid/widget/ViewFlipper;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setVisibility(I)V

    .line 102
    :goto_0
    return-void

    .line 92
    :pswitch_0
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->e:Landroid/widget/ViewFlipper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 95
    :pswitch_1
    iget-object v0, p0, Lcom/etermax/chat/ui/adapter/item/ImageMessageListItem;->e:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, v2}, Landroid/widget/ViewFlipper;->setDisplayedChild(I)V

    goto :goto_0

    .line 90
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
