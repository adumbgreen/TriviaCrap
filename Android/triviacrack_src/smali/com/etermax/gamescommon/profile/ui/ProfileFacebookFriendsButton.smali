.class public Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
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


# virtual methods
.method protected a()V
    .locals 2

    .prologue
    .line 40
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->setOrientation(I)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    .line 42
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    sget v0, Lcom/etermax/i;->avatar_1:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    sget v0, Lcom/etermax/i;->avatar_2:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    sget v0, Lcom/etermax/i;->avatar_3:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    sget v0, Lcom/etermax/i;->avatar_4:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    sget v0, Lcom/etermax/i;->avatar_5:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    sget v0, Lcom/etermax/i;->avatar_6:I

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 57
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 58
    const/4 v0, 0x0

    move v3, v0

    :goto_0
    const/4 v0, 0x6

    if-ge v3, v0, :cond_3

    .line 59
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 60
    const-string v1, ""

    .line 61
    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_0

    .line 62
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->a:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    :cond_0
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    .line 66
    const/16 v4, 0xa

    invoke-virtual {v2, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 67
    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    .line 68
    sget v2, Lcom/etermax/h;->facebook_avatar_female:I

    .line 73
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    invoke-static {v1, v4}, Lcom/etermax/gamescommon/user/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/b/a/ak;->a(I)Lcom/b/a/ak;

    move-result-object v1

    new-instance v2, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton$1;

    invoke-direct {v2, p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton$1;-><init>(Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;)V

    invoke-virtual {v1, v2}, Lcom/b/a/ak;->a(Lcom/b/a/ar;)Lcom/b/a/ak;

    move-result-object v1

    invoke-virtual {v1}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;)V

    .line 58
    :goto_2
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_0

    .line 70
    :cond_1
    sget v2, Lcom/etermax/h;->facebook_avatar_male:I

    goto :goto_1

    .line 97
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 100
    const/high16 v2, 0x4140

    invoke-static {v1, v2}, Lcom/etermax/tools/j/f;->b(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 102
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 106
    :cond_3
    return-void
.end method

.method public setFacebookFriendsIds(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 51
    iput-object p1, p0, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->a:Ljava/util/List;

    .line 52
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/ProfileFacebookFriendsButton;->b()V

    .line 53
    return-void
.end method
