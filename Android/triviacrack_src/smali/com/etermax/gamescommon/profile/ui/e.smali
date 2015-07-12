.class public Lcom/etermax/gamescommon/profile/ui/e;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/gamescommon/k;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/ImageView;

.field d:Landroid/widget/ProgressBar;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static a(Lcom/etermax/gamescommon/k;)Lcom/etermax/gamescommon/profile/ui/e;
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {}, Lcom/etermax/gamescommon/profile/ui/f;->b()Lcom/etermax/gamescommon/profile/ui/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/etermax/gamescommon/profile/ui/g;->a(Lcom/etermax/gamescommon/k;)Lcom/etermax/gamescommon/profile/ui/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/etermax/gamescommon/profile/ui/g;->a()Lcom/etermax/gamescommon/profile/ui/e;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected a()V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 62
    .line 65
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 67
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    .line 68
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 70
    iget v0, v2, Landroid/graphics/Point;->x:I

    .line 75
    :goto_0
    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/e;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v2}, Lcom/etermax/gamescommon/k;->getPhotoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 76
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/e;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v1}, Lcom/etermax/gamescommon/k;->getPhotoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/user/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 77
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/e;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v0}, Lcom/etermax/gamescommon/k;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/etermax/gamescommon/user/c;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 84
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/b/a/aa;->a(Landroid/content/Context;)Lcom/b/a/aa;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/b/a/aa;->a(Ljava/lang/String;)Lcom/b/a/ak;

    move-result-object v0

    invoke-virtual {v0}, Lcom/b/a/ak;->b()Lcom/b/a/ak;

    move-result-object v0

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/e;->b:Landroid/widget/ImageView;

    new-instance v3, Lcom/etermax/gamescommon/profile/ui/e$1;

    invoke-direct {v3, p0, v1}, Lcom/etermax/gamescommon/profile/ui/e$1;-><init>(Lcom/etermax/gamescommon/profile/ui/e;Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lcom/b/a/ak;->a(Landroid/widget/ImageView;Lcom/b/a/f;)V

    .line 111
    :goto_2
    return-void

    .line 72
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    goto :goto_0

    .line 78
    :cond_1
    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/e;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v2}, Lcom/etermax/gamescommon/k;->isFbShowPicture()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/etermax/gamescommon/profile/ui/e;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v2}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 79
    iget-object v1, p0, Lcom/etermax/gamescommon/profile/ui/e;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v1}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/etermax/gamescommon/user/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 80
    iget-object v0, p0, Lcom/etermax/gamescommon/profile/ui/e;->a:Lcom/etermax/gamescommon/k;

    invoke-interface {v0}, Lcom/etermax/gamescommon/k;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/etermax/gamescommon/user/c;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/e;->dismiss()V

    goto :goto_2

    :cond_3
    move-object v0, v1

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/e;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/profile/ui/e;->setStyle(II)V

    .line 51
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 55
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/profile/ui/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/p;->Theme_BigPictureDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method
