.class public abstract Lcom/etermax/tools/i/d;
.super Lcom/etermax/tools/i/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Host:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/etermax/tools/i/f",
        "<THost;TResult;>;"
    }
.end annotation


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/etermax/tools/i/f;-><init>()V

    .line 18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/i/d;->a:Z

    return-void
.end method

.method private c(Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 59
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "no_connection_dialog"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/widget/b/c;

    .line 60
    if-nez v0, :cond_0

    .line 61
    sget v0, Lcom/etermax/o;->no_internet_connection:I

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/etermax/o;->ok:I

    invoke-virtual {p1, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/etermax/tools/widget/b/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/etermax/tools/widget/b/c;

    move-result-object v0

    .line 63
    :cond_0
    invoke-virtual {v0}, Lcom/etermax/tools/widget/b/c;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 64
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "no_connection_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/etermax/tools/widget/b/c;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 67
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/etermax/tools/i/d;->a:Z

    if-eqz v0, :cond_1

    .line 49
    invoke-static {}, Lcom/etermax/tools/g/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 52
    :cond_0
    const-string v0, "ErrorManagedAsyncTask"

    invoke-static {v0, p2}, Lcom/etermax/a/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/etermax/tools/i/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 55
    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 4
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
    .line 34
    invoke-super {p0, p1, p2}, Lcom/etermax/tools/i/f;->a(Ljava/lang/Object;Ljava/lang/Exception;)V

    .line 35
    invoke-virtual {p0}, Lcom/etermax/tools/i/d;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/b/c;->a(Landroid/content/Context;)Lcom/etermax/tools/b/c;

    move-result-object v0

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/etermax/tools/b/a;->a(Ljava/lang/Class;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-boolean v3, p0, Lcom/etermax/tools/i/d;->a:Z

    invoke-virtual {v0, v2, p2, v3}, Lcom/etermax/tools/b/a;->a(Ljava/lang/Class;Ljava/lang/Exception;Z)V

    .line 40
    invoke-virtual {p0, p2, v1}, Lcom/etermax/tools/i/d;->a(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public b(Z)V
    .locals 0
    .parameter

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/etermax/tools/i/d;->a:Z

    .line 45
    return-void
.end method

.method protected b(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 23
    invoke-static {p1}, Lcom/etermax/a/b;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    invoke-super {p0, p1}, Lcom/etermax/tools/i/f;->b(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    .line 29
    :goto_0
    return v0

    .line 26
    :cond_0
    invoke-direct {p0, p1}, Lcom/etermax/tools/i/d;->c(Landroid/support/v4/app/FragmentActivity;)V

    .line 27
    const/4 v0, 0x0

    goto :goto_0
.end method
