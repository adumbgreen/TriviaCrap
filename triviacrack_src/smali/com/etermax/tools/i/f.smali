.class public abstract Lcom/etermax/tools/i/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/etermax/tools/i/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Host:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/etermax/tools/i/h;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:Z

.field protected h:Lcom/etermax/tools/h/a/a;

.field protected i:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-boolean v0, p0, Lcom/etermax/tools/i/f;->b:Z

    .line 17
    iput-boolean v0, p0, Lcom/etermax/tools/i/f;->c:Z

    return-void
.end method

.method private a(Ljava/lang/Object;Landroid/support/v4/app/FragmentActivity;)V
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;",
            "Landroid/support/v4/app/FragmentActivity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 104
    check-cast v0, Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getTag()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/i/f;->a:Ljava/lang/String;

    .line 105
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/tools/i/f;->i:Ljava/lang/Integer;

    .line 108
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 109
    const-string v0, "TaskManagerFragment"

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/etermax/tools/h/a/a;

    iput-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    .line 111
    iget-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    if-nez v0, :cond_1

    .line 112
    new-instance v0, Lcom/etermax/tools/h/a/a;

    invoke-direct {v0}, Lcom/etermax/tools/h/a/a;-><init>()V

    iput-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    .line 114
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    const-string v2, "TaskManagerFragment"

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentTransaction;->add(Landroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Exception;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method protected a(Ljava/lang/Object;Ljava/lang/Exception;)V
    .locals 0
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
    .line 88
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
    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/i/f;->c:Z

    .line 92
    return-void
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;)Z"
        }
    .end annotation

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/etermax/tools/i/f;->e(Ljava/lang/Object;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    const-string v0, "ManagedAsyncTask"

    const-string v1, "Host no attacheado a un activity"

    invoke-static {v0, v1}, Lcom/etermax/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 29
    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/etermax/tools/i/f;->a(Ljava/lang/Object;Landroid/support/v4/app/FragmentActivity;)V

    .line 30
    invoke-virtual {p0, v0}, Lcom/etermax/tools/i/f;->b(Landroid/support/v4/app/FragmentActivity;)Z

    move-result v0

    goto :goto_0
.end method

.method protected a_(Landroid/support/v4/app/FragmentActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    return-void
.end method

.method public b(Ljava/lang/Exception;)V
    .locals 2
    .parameter

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/etermax/tools/i/f;->b:Z

    if-nez v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    new-instance v1, Lcom/etermax/tools/i/f$2;

    invoke-direct {v1, p0, p1}, Lcom/etermax/tools/i/f$2;-><init>(Lcom/etermax/tools/i/f;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/h/a/a;->b(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    return-void
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
    .line 95
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/i/f;->c:Z

    .line 96
    return-void
.end method

.method protected b(Landroid/support/v4/app/FragmentActivity;)Z
    .locals 1
    .parameter

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/etermax/tools/i/f;->a_(Landroid/support/v4/app/FragmentActivity;)V

    .line 42
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/tools/i/i;->a(Landroid/content/Context;)Lcom/etermax/tools/i/i;

    move-result-object v0

    .line 43
    invoke-virtual {v0, p0}, Lcom/etermax/tools/i/g;->a(Lcom/etermax/tools/i/h;)V

    .line 44
    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 2
    .parameter

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/etermax/tools/i/f;->b:Z

    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    new-instance v1, Lcom/etermax/tools/i/f$1;

    invoke-direct {v1, p0, p1}, Lcom/etermax/tools/i/f$1;-><init>(Lcom/etermax/tools/i/f;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/etermax/tools/h/a/a;->b(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    return-void
.end method

.method protected d(Ljava/lang/Object;)Landroid/support/v4/app/FragmentManager;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;)",
            "Landroid/support/v4/app/FragmentManager;"
        }
    .end annotation

    .prologue
    .line 143
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 144
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    goto :goto_0
.end method

.method protected final e(Ljava/lang/Object;)Landroid/support/v4/app/FragmentActivity;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(THost;)",
            "Landroid/support/v4/app/FragmentActivity;"
        }
    .end annotation

    .prologue
    .line 153
    instance-of v0, p1, Landroid/support/v4/app/Fragment;

    if-eqz v0, :cond_0

    .line 154
    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 161
    :goto_0
    return-object p1

    .line 155
    :cond_0
    instance-of v0, p1, Landroid/support/v4/app/FragmentActivity;

    if-eqz v0, :cond_1

    .line 156
    check-cast p1, Landroid/support/v4/app/FragmentActivity;

    goto :goto_0

    .line 158
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Host debe ser un FragmentActivity o un Fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final h()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/etermax/tools/i/f;->b:Z

    .line 38
    return-void
.end method

.method protected i()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()THost;"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    .line 125
    iget-object v1, p0, Lcom/etermax/tools/i/f;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/etermax/tools/i/f;->a:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/h/a/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/i/f;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 129
    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/etermax/tools/i/f;->i:Ljava/lang/Integer;

    if-eqz v1, :cond_1

    .line 130
    iget-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/h/a/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/tools/i/f;->i:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 133
    :cond_1
    if-eqz v0, :cond_2

    .line 139
    :goto_0
    return-object v0

    .line 136
    :cond_2
    invoke-virtual {p0}, Lcom/etermax/tools/i/f;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    goto :goto_0
.end method

.method protected final j()Landroid/support/v4/app/FragmentActivity;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/etermax/tools/i/f;->h:Lcom/etermax/tools/h/a/a;

    invoke-virtual {v0}, Lcom/etermax/tools/h/a/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method
