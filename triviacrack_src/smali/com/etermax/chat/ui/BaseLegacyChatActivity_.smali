.class public final Lcom/etermax/chat/ui/BaseLegacyChatActivity_;
.super Lcom/etermax/chat/ui/BaseLegacyChatActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final u:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;-><init>()V

    .line 31
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->u:Lorg/a/a/b/c;

    .line 86
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 42
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->n:Lcom/etermax/gamescommon/menu/a/d;

    .line 43
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->o:Lcom/etermax/gamescommon/datasource/e;

    .line 44
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->i:Lcom/etermax/gamescommon/datasource/a;

    .line 45
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->k:Lcom/etermax/gamescommon/menu/a;

    .line 46
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->m:Lcom/etermax/tools/f/a;

    .line 47
    invoke-static {p0}, Lcom/etermax/gamescommon/notification/e;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->j:Lcom/etermax/gamescommon/notification/d;

    .line 48
    invoke-static {p0}, Lcom/etermax/chat/a/e;->a(Landroid/content/Context;)Lcom/etermax/chat/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->h:Lcom/etermax/chat/a/a;

    .line 49
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->l:Lcom/etermax/gamescommon/login/datasource/a;

    .line 50
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 35
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->u:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 36
    invoke-direct {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->b(Landroid/os/Bundle;)V

    .line 37
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 38
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 39
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 80
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->onBackPressed()V

    .line 83
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->setContentView(I)V

    .line 55
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->u:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 56
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->setContentView(Landroid/view/View;)V

    .line 67
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->u:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 68
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/etermax/chat/ui/BaseLegacyChatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    iget-object v0, p0, Lcom/etermax/chat/ui/BaseLegacyChatActivity_;->u:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 62
    return-void
.end method
