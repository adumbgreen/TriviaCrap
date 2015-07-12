.class public Lcom/etermax/preguntados/h/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/support/v4/app/Fragment;

.field private b:Lcom/etermax/gamescommon/profile/ui/e;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/etermax/preguntados/h/g;->a:Landroid/support/v4/app/Fragment;

    .line 19
    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->isFbShowPicture()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/etermax/gamescommon/login/datasource/dto/UserDTO;->getFacebookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    :cond_0
    invoke-static {p2}, Lcom/etermax/gamescommon/profile/ui/e;->a(Lcom/etermax/gamescommon/k;)Lcom/etermax/gamescommon/profile/ui/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/h/g;->b:Lcom/etermax/gamescommon/profile/ui/e;

    .line 22
    :cond_1
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/etermax/preguntados/h/g;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "big_picture_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 29
    :goto_0
    iget-object v1, p0, Lcom/etermax/preguntados/h/g;->b:Lcom/etermax/gamescommon/profile/ui/e;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/h/g;->b:Lcom/etermax/gamescommon/profile/ui/e;

    invoke-virtual {v1}, Lcom/etermax/gamescommon/profile/ui/e;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/etermax/preguntados/h/g;->a:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/etermax/preguntados/h/g;->b:Lcom/etermax/gamescommon/profile/ui/e;

    iget-object v1, p0, Lcom/etermax/preguntados/h/g;->a:Landroid/support/v4/app/Fragment;

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "big_picture_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/gamescommon/profile/ui/e;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 32
    :cond_0
    return-void

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
