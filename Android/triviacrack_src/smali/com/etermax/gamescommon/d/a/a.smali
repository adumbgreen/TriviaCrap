.class public Lcom/etermax/gamescommon/d/a/a;
.super Lcom/etermax/tools/widget/b/e;
.source "SourceFile"


# instance fields
.field a:Lcom/etermax/tools/f/a;

.field private b:Lcom/etermax/gamescommon/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/e;-><init>()V

    return-void
.end method

.method public static a(ZZ)Lcom/etermax/gamescommon/d/a/a;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 24
    new-instance v0, Lcom/etermax/gamescommon/d/a/a;

    invoke-direct {v0}, Lcom/etermax/gamescommon/d/a/a;-><init>()V

    .line 25
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 26
    const-string v2, "is_blocked"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 27
    const-string v2, "is_favourite"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 28
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/d/a/a;->setArguments(Landroid/os/Bundle;)V

    .line 29
    return-object v0
.end method

.method static synthetic a(Lcom/etermax/gamescommon/d/a/a;)Lcom/etermax/gamescommon/d/a/b;
    .locals 1
    .parameter

    .prologue
    .line 15
    iget-object v0, p0, Lcom/etermax/gamescommon/d/a/a;->b:Lcom/etermax/gamescommon/d/a/b;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/etermax/gamescommon/d/a/b;Lcom/etermax/tools/f/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/etermax/gamescommon/d/a/a;->b:Lcom/etermax/gamescommon/d/a/b;

    .line 40
    iput-object p2, p0, Lcom/etermax/gamescommon/d/a/a;->a:Lcom/etermax/tools/f/a;

    .line 41
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/e;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/d/a/a;->setRetainInstance(Z)V

    .line 36
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7
    .parameter

    .prologue
    .line 64
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/d/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 66
    invoke-virtual {p0}, Lcom/etermax/gamescommon/d/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_favourite"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 67
    invoke-virtual {p0}, Lcom/etermax/gamescommon/d/a/a;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "is_blocked"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 69
    sget v1, Lcom/etermax/o;->add_to_friends:I

    .line 70
    sget v0, Lcom/etermax/o;->player_block:I

    .line 72
    if-eqz v3, :cond_0

    .line 73
    sget v1, Lcom/etermax/o;->remove_from_friends:I

    .line 75
    :cond_0
    if-eqz v4, :cond_1

    .line 76
    sget v0, Lcom/etermax/o;->player_unblock:I

    .line 78
    :cond_1
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/d/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/gamescommon/d/a/a;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v1

    const/4 v0, 0x2

    sget v1, Lcom/etermax/o;->delete_conversation:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/d/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    const/4 v0, 0x3

    sget v1, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v1}, Lcom/etermax/gamescommon/d/a/a;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v5, v0

    .line 79
    new-instance v0, Lcom/etermax/gamescommon/d/a/a$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/etermax/gamescommon/d/a/a$1;-><init>(Lcom/etermax/gamescommon/d/a/a;ZZ)V

    invoke-virtual {v2, v5, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 113
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/e;->onDismiss(Landroid/content/DialogInterface;)V

    .line 52
    iget-object v0, p0, Lcom/etermax/gamescommon/d/a/a;->b:Lcom/etermax/gamescommon/d/a/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/d/a/b;->b_()V

    .line 53
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Lcom/etermax/tools/widget/b/e;->onPause()V

    .line 46
    iget-object v0, p0, Lcom/etermax/gamescommon/d/a/a;->b:Lcom/etermax/gamescommon/d/a/b;

    invoke-interface {v0}, Lcom/etermax/gamescommon/d/a/b;->b_()V

    .line 47
    return-void
.end method
