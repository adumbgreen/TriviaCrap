.class public Lcom/etermax/gamescommon/j/e;
.super Lcom/etermax/tools/widget/b/a;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/b;


# static fields
.field private static a:Lcom/etermax/gamescommon/j/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/etermax/gamescommon/j/c",
            "<**>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/a;-><init>()V

    .line 102
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/gamescommon/j/e;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 103
    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/etermax/gamescommon/j/c;)Lcom/etermax/gamescommon/j/e;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/etermax/gamescommon/j/c",
            "<**>;)",
            "Lcom/etermax/gamescommon/j/e;"
        }
    .end annotation

    .prologue
    .line 84
    sput-object p2, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    .line 86
    new-instance v1, Lcom/etermax/gamescommon/j/e;

    invoke-direct {v1}, Lcom/etermax/gamescommon/j/e;-><init>()V

    .line 89
    if-nez p1, :cond_0

    .line 91
    sget v0, Lcom/etermax/o;->are_you_sure_facebook_link_guest_account:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_0
    sget v2, Lcom/etermax/o;->accept:I

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/etermax/o;->cancel:I

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/etermax/gamescommon/j/e;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/etermax/gamescommon/j/e;->setArguments(Landroid/os/Bundle;)V

    .line 98
    return-object v1

    .line 93
    :cond_0
    sget v0, Lcom/etermax/o;->are_you_sure_to_link:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 112
    sget-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/j/c;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->d()V

    .line 113
    sget-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/j/c;->e()V

    .line 114
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    .line 115
    return-void
.end method

.method protected b()I
    .locals 1

    .prologue
    .line 128
    sget v0, Lcom/etermax/k;->link_choose_dialog:I

    return v0
.end method

.method public onAccept(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    .line 106
    sget-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    invoke-virtual {p0}, Lcom/etermax/gamescommon/j/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/etermax/gamescommon/j/c;->a(Lcom/etermax/gamescommon/j/c;Landroid/support/v4/app/FragmentActivity;Z)V

    .line 107
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    .line 108
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1
    .parameter

    .prologue
    .line 120
    invoke-super {p0, p1}, Lcom/etermax/tools/widget/b/a;->onCancel(Landroid/content/DialogInterface;)V

    .line 121
    sget-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    iget-object v0, v0, Lcom/etermax/gamescommon/j/c;->d:Lcom/etermax/tools/social/a/b;

    invoke-virtual {v0}, Lcom/etermax/tools/social/a/b;->d()V

    .line 122
    sget-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    invoke-virtual {v0}, Lcom/etermax/gamescommon/j/c;->e()V

    .line 123
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/gamescommon/j/e;->a:Lcom/etermax/gamescommon/j/c;

    .line 124
    return-void
.end method
