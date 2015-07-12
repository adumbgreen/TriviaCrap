.class public Lcom/etermax/tools/i/b;
.super Lcom/etermax/tools/widget/b/c;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/widget/b/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Lcom/etermax/tools/widget/b/c;-><init>()V

    .line 47
    const/4 v0, 0x0

    invoke-virtual {p0, p0, v0}, Lcom/etermax/tools/i/b;->setTargetFragment(Landroid/support/v4/app/Fragment;I)V

    .line 48
    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/i/b;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 51
    new-instance v0, Lcom/etermax/tools/i/b;

    invoke-direct {v0}, Lcom/etermax/tools/i/b;-><init>()V

    .line 52
    invoke-static {p0, p1}, Lcom/etermax/tools/i/b;->c(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/etermax/tools/i/b;->setArguments(Landroid/os/Bundle;)V

    .line 53
    return-object v0
.end method


# virtual methods
.method public onAccept(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/etermax/tools/i/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/etermax/tools/i/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/etermax/tools/i/e;

    if-eqz v1, :cond_0

    .line 60
    check-cast v0, Lcom/etermax/tools/i/e;

    invoke-virtual {p0}, Lcom/etermax/tools/i/b;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/etermax/tools/i/e;->a(Landroid/app/Activity;)V

    .line 63
    :cond_0
    return-void
.end method
