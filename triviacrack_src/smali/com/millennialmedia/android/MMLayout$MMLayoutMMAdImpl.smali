.class Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;
.super Lcom/millennialmedia/android/MMAdImpl;
.source "SourceFile"


# instance fields
.field final synthetic o:Lcom/millennialmedia/android/MMLayout;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMLayout;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 438
    iput-object p1, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->o:Lcom/millennialmedia/android/MMLayout;

    .line 439
    invoke-direct {p0, p2}, Lcom/millennialmedia/android/MMAdImpl;-><init>(Landroid/content/Context;)V

    .line 440
    return-void
.end method


# virtual methods
.method public addView(Lcom/millennialmedia/android/MMWebView;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 463
    const-string v0, "MMLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MMLayout adding view ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->o:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    return-void
.end method

.method synthetic d()Lcom/millennialmedia/android/MMAd;
    .locals 1

    .prologue
    .line 435
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->r()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    return-object v0
.end method

.method e()I
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->o:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->getId()I

    move-result v0

    return v0
.end method

.method r()Lcom/millennialmedia/android/MMLayout;
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->o:Lcom/millennialmedia/android/MMLayout;

    return-object v0
.end method

.method public removeView(Lcom/millennialmedia/android/MMWebView;)V
    .locals 1
    .parameter

    .prologue
    .line 457
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->o:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMLayout;->removeView(Landroid/view/View;)V

    .line 458
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .parameter

    .prologue
    .line 451
    iget-object v0, p0, Lcom/millennialmedia/android/MMLayout$MMLayoutMMAdImpl;->o:Lcom/millennialmedia/android/MMLayout;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMLayout;->setClickable(Z)V

    .line 452
    return-void
.end method
