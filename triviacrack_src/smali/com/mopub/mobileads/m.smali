.class abstract Lcom/mopub/mobileads/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/widget/RelativeLayout;

.field private final c:Lcom/mopub/mobileads/n;

.field private d:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/mopub/mobileads/n;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/m;->a:Landroid/content/Context;

    .line 33
    iput-wide p2, p0, Lcom/mopub/mobileads/m;->d:J

    .line 34
    iput-object p4, p0, Lcom/mopub/mobileads/m;->c:Lcom/mopub/mobileads/n;

    .line 35
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/mopub/mobileads/m;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mopub/mobileads/m;->b:Landroid/widget/RelativeLayout;

    .line 36
    return-void
.end method


# virtual methods
.method a()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    iget-object v1, p0, Lcom/mopub/mobileads/m;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/mopub/mobileads/m;->b()Landroid/widget/VideoView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object v0, p0, Lcom/mopub/mobileads/m;->c:Lcom/mopub/mobileads/n;

    iget-object v1, p0, Lcom/mopub/mobileads/m;->b:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/n;->onSetContentView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method a(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 57
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/mopub/mobileads/m;->a:Landroid/content/Context;

    iget-wide v1, p0, Lcom/mopub/mobileads/m;->d:J

    invoke-static {v0, v1, v2, p1}, Lcom/mopub/mobileads/p;->a(Landroid/content/Context;JLjava/lang/String;)V

    .line 92
    return-void
.end method

.method a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 73
    const-string v0, "Error: video can not be played."

    invoke-static {v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;)V

    .line 74
    const-string v0, "com.mopub.action.interstitial.fail"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/m;->a(Ljava/lang/String;)V

    .line 75
    if-eqz p1, :cond_0

    .line 76
    iget-object v0, p0, Lcom/mopub/mobileads/m;->c:Lcom/mopub/mobileads/n;

    invoke-interface {v0}, Lcom/mopub/mobileads/n;->onFinish()V

    .line 78
    :cond_0
    return-void
.end method

.method abstract b()Landroid/widget/VideoView;
.end method

.method b(Z)V
    .locals 1
    .parameter

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    iget-object v0, p0, Lcom/mopub/mobileads/m;->c:Lcom/mopub/mobileads/n;

    invoke-interface {v0}, Lcom/mopub/mobileads/n;->onFinish()V

    .line 84
    :cond_0
    return-void
.end method

.method abstract c()V
.end method

.method abstract d()V
.end method

.method abstract e()V
.end method

.method f()Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method g()Lcom/mopub/mobileads/n;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/mopub/mobileads/m;->c:Lcom/mopub/mobileads/n;

    return-object v0
.end method

.method h()Landroid/content/Context;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/mobileads/m;->a:Landroid/content/Context;

    return-object v0
.end method

.method i()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/mopub/mobileads/m;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method j()V
    .locals 1

    .prologue
    .line 87
    const-string v0, "com.mopub.action.interstitial.click"

    invoke-virtual {p0, v0}, Lcom/mopub/mobileads/m;->a(Ljava/lang/String;)V

    .line 88
    return-void
.end method
