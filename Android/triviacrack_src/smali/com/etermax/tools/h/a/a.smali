.class public Lcom/etermax/tools/h/a/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"


# instance fields
.field protected final a:Ljava/lang/Object;

.field protected b:Ljava/lang/Boolean;

.field protected c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 13
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/h/a/a;->a:Ljava/lang/Object;

    .line 15
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/h/a/a;->b:Ljava/lang/Boolean;

    .line 16
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/h/a/a;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Runnable;)V
    .locals 2
    .parameter

    .prologue
    .line 82
    iget-object v1, p0, Lcom/etermax/tools/h/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/h/a/a;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    monitor-exit v1

    .line 85
    return-void

    .line 84
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 70
    iget-object v1, p0, Lcom/etermax/tools/h/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 71
    :try_start_0
    iget-object v0, p0, Lcom/etermax/tools/h/a/a;->b:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    monitor-exit v1

    return v0

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 88
    invoke-virtual {p0}, Lcom/etermax/tools/h/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0, p1}, Lcom/etermax/tools/h/a/a;->c(Ljava/lang/Runnable;)V

    .line 94
    :goto_0
    return-void

    .line 92
    :cond_0
    invoke-virtual {p0, p1}, Lcom/etermax/tools/h/a/a;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected c(Ljava/lang/Runnable;)V
    .locals 1
    .parameter

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/etermax/tools/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v4/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 98
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 44
    iget-object v2, p0, Lcom/etermax/tools/h/a/a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 45
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/h/a/a;->b:Ljava/lang/Boolean;

    .line 47
    iget-object v0, p0, Lcom/etermax/tools/h/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 49
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/etermax/tools/h/a/a;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/etermax/tools/h/a/a;->c(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    .line 52
    :cond_0
    monitor-exit v2

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 20
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/etermax/tools/h/a/a;->setRetainInstance(Z)V

    .line 22
    return-void
.end method

.method public onDetach()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 28
    iget-object v1, p0, Lcom/etermax/tools/h/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 29
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/h/a/a;->b:Ljava/lang/Boolean;

    .line 30
    monitor-exit v1

    .line 31
    return-void

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 57
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 58
    iget-object v2, p0, Lcom/etermax/tools/h/a/a;->a:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    const/4 v0, 0x1

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/h/a/a;->b:Ljava/lang/Boolean;

    .line 61
    iget-object v0, p0, Lcom/etermax/tools/h/a/a;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 63
    :goto_0
    add-int/lit8 v1, v0, -0x1

    if-lez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/etermax/tools/h/a/a;->c:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/etermax/tools/h/a/a;->c(Ljava/lang/Runnable;)V

    move v0, v1

    goto :goto_0

    .line 66
    :cond_0
    monitor-exit v2

    .line 67
    return-void

    .line 66
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 35
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 36
    iget-object v1, p0, Lcom/etermax/tools/h/a/a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    const/4 v0, 0x0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/h/a/a;->b:Ljava/lang/Boolean;

    .line 38
    monitor-exit v1

    .line 39
    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
