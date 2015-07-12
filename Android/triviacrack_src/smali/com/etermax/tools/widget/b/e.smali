.class public abstract Lcom/etermax/tools/widget/b/e;
.super Landroid/support/v4/app/DialogFragment;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field private a:Z

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/support/v4/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/e;->getTheme()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/tools/widget/b/e;->setStyle(II)V

    .line 26
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .parameter

    .prologue
    .line 65
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcom/etermax/p;->Theme_EtermaxToolsBaseDialog:I

    invoke-direct {v0, v1, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v4, 0x19

    const/16 v3, 0x18

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 38
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 39
    if-ne p2, v4, :cond_1

    .line 40
    iput-boolean v1, p0, Lcom/etermax/tools/widget/b/e;->a:Z

    :cond_0
    :goto_0
    move v0, v1

    .line 59
    :goto_1
    return v0

    .line 41
    :cond_1
    if-ne p2, v3, :cond_0

    .line 42
    iput-boolean v1, p0, Lcom/etermax/tools/widget/b/e;->b:Z

    goto :goto_0

    .line 44
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    .line 45
    if-ne p2, v4, :cond_3

    .line 46
    iput-boolean v0, p0, Lcom/etermax/tools/widget/b/e;->a:Z

    .line 47
    iget-boolean v2, p0, Lcom/etermax/tools/widget/b/e;->b:Z

    if-eqz v2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/etermax/tools/bugcatcher/a;->a(Landroid/app/Activity;Landroid/support/v4/app/DialogFragment;)V

    goto :goto_1

    .line 51
    :cond_3
    if-ne p2, v3, :cond_0

    .line 52
    iput-boolean v0, p0, Lcom/etermax/tools/widget/b/e;->b:Z

    .line 53
    iget-boolean v2, p0, Lcom/etermax/tools/widget/b/e;->a:Z

    if-eqz v2, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/e;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/etermax/tools/bugcatcher/a;->a(Landroid/app/Activity;Landroid/support/v4/app/DialogFragment;)V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/DialogFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 31
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {p0}, Lcom/etermax/tools/widget/b/e;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 34
    :cond_0
    return-void
.end method
