.class public Lcom/etermax/gamescommon/view/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/widget/ListView;

.field b:Landroid/widget/RelativeLayout;

.field c:Landroid/view/View;

.field d:Lcom/etermax/gamescommon/view/FlagsLayout;

.field e:Landroid/widget/PopupWindow;

.field f:Lcom/etermax/gamescommon/view/b;

.field private final g:Landroid/content/Context;

.field private final h:Landroid/view/LayoutInflater;

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/etermax/gamescommon/view/FlagsLayout;Ljava/util/List;)V
    .locals 4
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/view/View;",
            "Lcom/etermax/gamescommon/view/FlagsLayout;",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/gamescommon/view/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v3, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/etermax/gamescommon/view/d;->i:Z

    .line 39
    iput-object p2, p0, Lcom/etermax/gamescommon/view/d;->c:Landroid/view/View;

    .line 40
    iput-object p1, p0, Lcom/etermax/gamescommon/view/d;->g:Landroid/content/Context;

    .line 41
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->g:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/view/d;->h:Landroid/view/LayoutInflater;

    .line 42
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->h:Landroid/view/LayoutInflater;

    sget v1, Lcom/etermax/k;->flags_list_layout:I

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/etermax/gamescommon/view/d;->b:Landroid/widget/RelativeLayout;

    .line 43
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->b:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->b:Landroid/widget/RelativeLayout;

    sget v1, Lcom/etermax/i;->list_languages:I

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/etermax/gamescommon/view/d;->a:Landroid/widget/ListView;

    .line 45
    iput-object p3, p0, Lcom/etermax/gamescommon/view/d;->d:Lcom/etermax/gamescommon/view/FlagsLayout;

    .line 46
    new-instance v0, Lcom/etermax/gamescommon/view/b;

    invoke-direct {v0, p4, p3}, Lcom/etermax/gamescommon/view/b;-><init>(Ljava/util/List;Lcom/etermax/gamescommon/view/FlagsLayout;)V

    iput-object v0, p0, Lcom/etermax/gamescommon/view/d;->f:Lcom/etermax/gamescommon/view/b;

    .line 47
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/etermax/gamescommon/view/d;->f:Lcom/etermax/gamescommon/view/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 49
    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/view/d;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/d;->d()V

    return-void
.end method

.method static synthetic a(Lcom/etermax/gamescommon/view/d;Z)Z
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/etermax/gamescommon/view/d;->i:Z

    return p1
.end method

.method private d()V
    .locals 3

    .prologue
    .line 102
    .line 103
    iget-boolean v0, p0, Lcom/etermax/gamescommon/view/d;->i:Z

    if-eqz v0, :cond_0

    .line 104
    const/16 v0, 0xff

    move v1, v0

    .line 109
    :goto_0
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->d:Lcom/etermax/gamescommon/view/FlagsLayout;

    sget v2, Lcom/etermax/i;->flag_more_01:I

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 110
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->d:Lcom/etermax/gamescommon/view/FlagsLayout;

    sget v2, Lcom/etermax/i;->flag_more_02:I

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 111
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->d:Lcom/etermax/gamescommon/view/FlagsLayout;

    sget v2, Lcom/etermax/i;->flag_more_03:I

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 112
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->d:Lcom/etermax/gamescommon/view/FlagsLayout;

    sget v2, Lcom/etermax/i;->flag_more_04:I

    invoke-virtual {v0, v2}, Lcom/etermax/gamescommon/view/FlagsLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 113
    return-void

    .line 106
    :cond_0
    const/16 v0, 0xa5

    move v1, v0

    goto :goto_0
.end method

.method private e()Z
    .locals 2

    .prologue
    .line 116
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Amazon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "Kindle Fire"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "KF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 52
    iput-boolean v1, p0, Lcom/etermax/gamescommon/view/d;->i:Z

    .line 53
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/d;->d()V

    .line 54
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 55
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 56
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 60
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    new-instance v1, Lcom/etermax/gamescommon/view/d$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/view/d$1;-><init>(Lcom/etermax/gamescommon/view/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 67
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
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
    .line 98
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->f:Lcom/etermax/gamescommon/view/b;

    invoke-virtual {v0, p1}, Lcom/etermax/gamescommon/view/b;->a(Ljava/util/List;)V

    .line 99
    return-void
.end method

.method public b()V
    .locals 9

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 70
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6, v6}, Landroid/widget/RelativeLayout;->measure(II)V

    .line 71
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getMeasuredHeight()I

    move-result v1

    .line 73
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 76
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->g:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 77
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 79
    invoke-direct {p0}, Lcom/etermax/gamescommon/view/d;->e()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 80
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/etermax/gamescommon/view/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    aget v5, v2, v7

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/etermax/gamescommon/view/d;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v0, v5

    invoke-direct {v3, v4, v8, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    .line 84
    :goto_0
    invoke-virtual {p0}, Lcom/etermax/gamescommon/view/d;->a()V

    .line 85
    div-int/lit8 v0, v1, 0x4

    .line 86
    iget-object v3, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/etermax/gamescommon/view/d;->c:Landroid/view/View;

    aget v5, v2, v6

    add-int/lit8 v5, v5, -0xa

    aget v2, v2, v7

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    invoke-virtual {v3, v4, v6, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 88
    return-void

    .line 82
    :cond_0
    new-instance v3, Landroid/widget/PopupWindow;

    iget-object v4, p0, Lcom/etermax/gamescommon/view/d;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    aget v5, v2, v7

    sub-int/2addr v0, v5

    iget-object v5, p0, Lcom/etermax/gamescommon/view/d;->c:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v0, v5

    invoke-direct {v3, v4, v8, v0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v3, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    goto :goto_0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 93
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/view/d;->e:Landroid/widget/PopupWindow;

    .line 95
    :cond_0
    return-void
.end method
