.class public Lcom/etermax/gamescommon/dashboard/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .parameter

    .prologue
    .line 152
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/etermax/h;->dashboard_item_default_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/widget/ViewSwitcher;)V
    .locals 2
    .parameter

    .prologue
    .line 110
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 111
    sget v0, Lcom/etermax/i;->tile_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 112
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 113
    return-void
.end method

.method private b(Landroid/widget/ViewSwitcher;)V
    .locals 2
    .parameter

    .prologue
    .line 139
    sget v0, Lcom/etermax/i;->tile_image_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 140
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Landroid/widget/ImageView;)V

    .line 142
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 143
    sget v0, Lcom/etermax/i;->tile_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 144
    instance-of v1, v0, Lcom/etermax/gamescommon/dashboard/c;

    if-eqz v1, :cond_0

    .line 145
    check-cast v0, Lcom/etermax/gamescommon/dashboard/c;

    invoke-interface {v0}, Lcom/etermax/gamescommon/dashboard/c;->a()V

    .line 149
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;)V

    goto :goto_0
.end method

.method private b(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    const/4 v0, 0x0

    .line 55
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://graph.facebook.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/picture?width=%s&height=%s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    const-string v0, "120"

    .line 58
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v2

    const/16 v3, 0x2d0

    if-lt v2, v3, :cond_2

    .line 59
    const-string v0, "720"

    .line 63
    :cond_0
    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    :cond_1
    invoke-direct {p0, p1, v0, p3}, Lcom/etermax/gamescommon/dashboard/b;->d(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void

    .line 60
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v2

    const/16 v3, 0xfa

    if-lt v2, v3, :cond_0

    .line 61
    const-string v0, "250"

    goto :goto_0
.end method

.method private c(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 70
    const/4 v0, 0x0

    .line 71
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "http"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 73
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v1

    const/16 v2, 0xc8

    if-le v1, v2, :cond_2

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_l"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    :cond_0
    invoke-direct {p0, p1, v0, p3}, Lcom/etermax/gamescommon/dashboard/b;->d(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    return-void

    .line 72
    :cond_1
    const-string v0, "http://"

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Landroid/widget/ViewSwitcher;->getWidth()I

    move-result v1

    const/16 v2, 0xa0

    if-le v1, v2, :cond_3

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_p"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 78
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_t"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private d(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 86
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-virtual {p0, p1, p3}, Lcom/etermax/gamescommon/dashboard/b;->b(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V

    .line 90
    sget v0, Lcom/etermax/i;->tile_image_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 91
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v1

    new-instance v2, Lcom/etermax/gamescommon/dashboard/b$1;

    invoke-direct {v2, p0, p1, p3}, Lcom/etermax/gamescommon/dashboard/b$1;-><init>(Lcom/etermax/gamescommon/dashboard/b;Landroid/widget/ViewSwitcher;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;Lcom/b/a/f;)V

    .line 106
    :goto_0
    return-void

    .line 104
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public a(Landroid/widget/ViewSwitcher;Lcom/etermax/gamescommon/k;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 40
    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getId()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 41
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/dashboard/b;->b(Landroid/widget/ViewSwitcher;)V

    .line 51
    :goto_0
    return-void

    .line 42
    :cond_0
    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 43
    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/etermax/gamescommon/dashboard/b;->c(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_1
    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->isFbShowPicture()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 47
    :goto_1
    if-eqz v0, :cond_3

    invoke-interface {p2}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    .line 49
    :goto_2
    invoke-direct {p0, p1, v0, p3}, Lcom/etermax/gamescommon/dashboard/b;->b(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    .line 47
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public a(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 116
    sget v0, Lcom/etermax/i;->tile_image_icon:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 117
    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/aa;->a(Landroid/widget/ImageView;)V

    .line 119
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 120
    sget v0, Lcom/etermax/i;->tile_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 121
    instance-of v1, v0, Lcom/etermax/gamescommon/dashboard/c;

    if-eqz v1, :cond_0

    .line 122
    check-cast v0, Lcom/etermax/gamescommon/dashboard/c;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/dashboard/c;->a(Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;)V

    goto :goto_0
.end method

.method public a(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/etermax/gamescommon/dashboard/b;->b(Landroid/widget/ViewSwitcher;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public b(Landroid/widget/ViewSwitcher;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 129
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->setDisplayedChild(I)V

    .line 130
    sget v0, Lcom/etermax/i;->tile_default:I

    invoke-virtual {p1, v0}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 131
    instance-of v1, v0, Lcom/etermax/gamescommon/dashboard/c;

    if-eqz v1, :cond_0

    .line 132
    check-cast v0, Lcom/etermax/gamescommon/dashboard/c;

    invoke-interface {v0, p2}, Lcom/etermax/gamescommon/dashboard/c;->b(Ljava/lang/String;)V

    .line 136
    :goto_0
    return-void

    .line 134
    :cond_0
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/dashboard/b;->a(Landroid/widget/ViewSwitcher;)V

    goto :goto_0
.end method
