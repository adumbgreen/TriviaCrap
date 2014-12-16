.class public abstract Lcom/etermax/tools/i/c;
.super Lcom/etermax/tools/i/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Host:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/i/d",
        "<THost;TResult;>;"
    }
.end annotation


# instance fields
.field private a:Z

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/etermax/tools/i/d;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/i/c;->a:Z

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/tools/i/d;-><init>()V

    .line 13
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/i/c;->a:Z

    .line 20
    iput-object p1, p0, Lcom/etermax/tools/i/c;->g:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method protected a(Landroid/support/v4/app/FragmentManager;)V
    .locals 3
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Lcom/etermax/tools/i/c;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/etermax/tools/i/c;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/etermax/tools/widget/b/f;->a(Ljava/lang/String;)Lcom/etermax/tools/widget/b/f;

    move-result-object v0

    .line 58
    iget-boolean v1, p0, Lcom/etermax/tools/i/c;->a:Z

    invoke-virtual {v0, v1}, Lcom/etermax/tools/widget/b/f;->setCancelable(Z)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog_error_managed_async_task"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/etermax/tools/i/c;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/etermax/tools/widget/b/f;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 61
    :cond_0
    return-void
.end method

.method protected a(Ljava/lang/Exception;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/etermax/tools/i/c;->h:Lcom/etermax/tools/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/h/a/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/i/c;->b(Landroid/support/v4/app/FragmentManager;)V

    .line 43
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;",
            "Ljava/lang/Exception;",
            ")V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/d;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 48
    iget-object v0, p0, Lcom/etermax/tools/i/c;->h:Lcom/etermax/tools/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/h/a/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/i/c;->b(Landroid/support/v4/app/FragmentManager;)V

    .line 49
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;TResult;)V"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/tools/i/c;->h:Lcom/etermax/tools/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/h/a/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/i/c;->b(Landroid/support/v4/app/FragmentManager;)V

    .line 33
    return-void
.end method

.method protected a_(Landroid/support/v4/app/FragmentActivity;)V
    .locals 1
    .parameter

    .prologue
    .line 25
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/i/c;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 28
    :cond_0
    return-void
.end method

.method protected b(Landroid/support/v4/app/FragmentManager;)V
    .locals 2
    .parameter

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dialog_error_managed_async_task"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/i/c;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/DialogFragment;

    .line 66
    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 67
    invoke-virtual {v0}, Landroid/support/v4/app/DialogFragment;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    const-string v1, "DialogErrorMaganeAsyncTask"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)V"
        }
    .end annotation

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/tools/i/c;->h:Lcom/etermax/tools/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/h/a/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/etermax/tools/i/c;->b(Landroid/support/v4/app/FragmentManager;)V

    .line 38
    return-void
.end method
