.class public Lcom/etermax/gamescommon/i/b/l;
.super Lcom/etermax/tools/widget/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/d;


# instance fields
.field private a:Lcom/etermax/gamescommon/i/a/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 405
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    .line 406
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/i/b/l;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 407
    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/etermax/gamescommon/i/b/h;Lcom/etermax/gamescommon/i/a/a;)Lcom/etermax/gamescommon/i/b/l;
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 410
    new-instance v0, Lcom/etermax/gamescommon/i/b/l;

    invoke-direct {v0}, Lcom/etermax/gamescommon/i/b/l;-><init>()V

    .line 411
    sget v1, Lcom/etermax/o;->must_set_pass_desc:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 412
    sget v2, Lcom/etermax/o;->ok:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-static {v1, v2}, Lcom/etermax/gamescommon/i/b/l;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .line 415
    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/b/l;->setArguments(Landroid/os/Bundle;)V

    .line 417
    invoke-direct {v0, p2}, Lcom/etermax/gamescommon/i/b/l;->a(Lcom/etermax/gamescommon/i/a/a;)V

    .line 418
    return-object v0
.end method

.method private a(Lcom/etermax/gamescommon/i/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 426
    iput-object p1, p0, Lcom/etermax/gamescommon/i/b/l;->a:Lcom/etermax/gamescommon/i/a/a;

    .line 427
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 1
    .parameter

    .prologue
    .line 430
    const-string v0, "missing_password_dialog"

    invoke-super {p0, p1, v0}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 431
    return-void
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 445
    iget-object v0, p0, Lcom/etermax/gamescommon/i/b/l;->a:Lcom/etermax/gamescommon/i/a/a;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/i/b/l;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/gamescommon/i/a/a;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 446
    return-void
.end method
