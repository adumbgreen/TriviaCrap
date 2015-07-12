.class public final Lcom/etermax/preguntados/ui/chat/ChatActivity_;
.super Lcom/etermax/preguntados/ui/chat/ChatActivity;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;


# instance fields
.field private final w:Lorg/a/a/b/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/etermax/preguntados/ui/chat/ChatActivity;-><init>()V

    .line 33
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->w:Lorg/a/a/b/c;

    .line 90
    return-void
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 44
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->k:Lcom/etermax/gamescommon/menu/a;

    .line 45
    invoke-static {p0}, Lcom/etermax/tools/f/d;->c(Landroid/content/Context;)Lcom/etermax/tools/f/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->m:Lcom/etermax/tools/f/a;

    .line 46
    invoke-static {p0}, Lcom/etermax/gamescommon/login/datasource/b;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/login/datasource/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->l:Lcom/etermax/gamescommon/login/datasource/a;

    .line 47
    invoke-static {p0}, Lcom/etermax/gamescommon/menu/a/j;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/menu/a/j;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->n:Lcom/etermax/gamescommon/menu/a/d;

    .line 48
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/i;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/i;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->o:Lcom/etermax/gamescommon/datasource/e;

    .line 49
    invoke-static {p0}, Lcom/etermax/gamescommon/notification/e;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/notification/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->j:Lcom/etermax/gamescommon/notification/d;

    .line 50
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/d;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/d;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->i:Lcom/etermax/gamescommon/datasource/a;

    .line 51
    invoke-static {p0}, Lcom/etermax/chat/a/e;->a(Landroid/content/Context;)Lcom/etermax/chat/a/e;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->h:Lcom/etermax/chat/a/a;

    .line 52
    invoke-static {p0}, Lcom/etermax/preguntados/g/b;->a(Landroid/content/Context;)Lcom/etermax/preguntados/g/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->u:Lcom/etermax/preguntados/g/a;

    .line 53
    invoke-static {p0}, Lcom/etermax/gamescommon/datasource/m;->a(Landroid/content/Context;)Lcom/etermax/gamescommon/datasource/m;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->v:Lcom/etermax/gamescommon/datasource/l;

    .line 54
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 37
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->w:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1}, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->b(Landroid/os/Bundle;)V

    .line 39
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 41
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 84
    invoke-static {}, Lorg/a/a/c;->a()I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->onBackPressed()V

    .line 87
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setContentView(I)V
    .locals 1
    .parameter

    .prologue
    .line 58
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->setContentView(I)V

    .line 59
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->w:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 60
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->setContentView(Landroid/view/View;)V

    .line 71
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->w:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 72
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 64
    invoke-super {p0, p1, p2}, Lcom/etermax/preguntados/ui/chat/ChatActivity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    iget-object v0, p0, Lcom/etermax/preguntados/ui/chat/ChatActivity_;->w:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 66
    return-void
.end method
