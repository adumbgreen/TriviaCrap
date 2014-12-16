.class public final Lcom/etermax/gamescommon/coupon/c;
.super Lcom/etermax/gamescommon/coupon/a;
.source "SourceFile"

# interfaces
.implements Lorg/a/a/b/a;
.implements Lorg/a/a/b/b;


# instance fields
.field private final b:Lorg/a/a/b/c;

.field private c:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/etermax/gamescommon/coupon/a;-><init>()V

    .line 24
    new-instance v0, Lorg/a/a/b/c;

    invoke-direct {v0}, Lorg/a/a/b/c;-><init>()V

    iput-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->b:Lorg/a/a/b/c;

    .line 101
    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 52
    invoke-static {p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/b;)V

    .line 53
    return-void
.end method


# virtual methods
.method public a(Lorg/a/a/b/a;)V
    .locals 2
    .parameter

    .prologue
    .line 67
    const v0, 0x7f0a0116

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->a:Landroid/widget/EditText;

    .line 69
    const v0, 0x7f0a0119

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 70
    if-eqz v0, :cond_0

    .line 71
    new-instance v1, Lcom/etermax/gamescommon/coupon/c$1;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/coupon/c$1;-><init>(Lcom/etermax/gamescommon/coupon/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    const v0, 0x7f0a0117

    invoke-interface {p1, v0}, Lorg/a/a/b/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_1

    .line 86
    new-instance v1, Lcom/etermax/gamescommon/coupon/c$2;

    invoke-direct {v1, p0}, Lcom/etermax/gamescommon/coupon/c$2;-><init>(Lcom/etermax/gamescommon/coupon/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/gamescommon/coupon/c;->a()V

    .line 99
    return-void
.end method

.method public findViewById(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 37
    const/4 v0, 0x0

    .line 39
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->b:Lorg/a/a/b/c;

    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    move-result-object v0

    .line 30
    invoke-direct {p0, p1}, Lcom/etermax/gamescommon/coupon/c;->a(Landroid/os/Bundle;)V

    .line 31
    invoke-super {p0, p1}, Lcom/etermax/gamescommon/coupon/a;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-static {v0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/c;)Lorg/a/a/b/c;

    .line 33
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 44
    invoke-super {p0, p1, p2, p3}, Lcom/etermax/gamescommon/coupon/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->c:Landroid/view/View;

    .line 45
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->c:Landroid/view/View;

    if-nez v0, :cond_0

    .line 46
    const v0, 0x7f030056

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->c:Landroid/view/View;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->c:Landroid/view/View;

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 57
    invoke-super {p0, p1, p2}, Lcom/etermax/gamescommon/coupon/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/etermax/gamescommon/coupon/c;->b:Lorg/a/a/b/c;

    invoke-virtual {v0, p0}, Lorg/a/a/b/c;->a(Lorg/a/a/b/a;)V

    .line 59
    return-void
.end method
