.class Lcom/millennialmedia/android/AdViewOverlayActivity;
.super Lcom/millennialmedia/android/MMBaseActivity;
.source "SourceFile"


# instance fields
.field a:Z

.field b:Z

.field private d:Lcom/millennialmedia/android/AdViewOverlayView;

.field private e:Lcom/millennialmedia/android/OverlaySettings;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/millennialmedia/android/MMBaseActivity;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    const-string v0, "landscape"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 120
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 123
    :cond_0
    :goto_0
    return-void

    .line 121
    :cond_1
    const-string v0, "portrait"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method private g()V
    .locals 3

    .prologue
    const/16 v2, 0x9

    const/16 v1, 0x8

    .line 142
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-nez v0, :cond_0

    .line 143
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 152
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 145
    invoke-virtual {p0, v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMActivity;->getRequestedOrientation()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 147
    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 151
    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Landroid/os/Bundle;)V
    .locals 2
    .parameter

    .prologue
    .line 296
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_0

    .line 297
    const-string v0, "adViewId"

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayView;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 300
    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->a(Landroid/os/Bundle;)V

    .line 301
    return-void
.end method

.method a(Z)V
    .locals 1
    .parameter

    .prologue
    .line 132
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean p1, v0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->n_()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->g()V

    goto :goto_0
.end method

.method b()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    const-string v1, "portrait"

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 157
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    .line 158
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 159
    return-void
.end method

.method protected b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 306
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->b(Landroid/os/Bundle;)V

    .line 307
    return-void
.end method

.method c()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 163
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    const-string v1, "landscape"

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 164
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iput-boolean v2, v0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    .line 165
    invoke-virtual {p0, v2}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 166
    return-void
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 191
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->b:Z

    .line 192
    const-string v0, "AdViewOverlayActivity"

    const-string v1, "Overlay onResume"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_1

    .line 194
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->a:Z

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->q()V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->addBlackView()V

    .line 197
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onResumeWebView()V

    .line 212
    :cond_1
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->d()V

    .line 213
    return-void
.end method

.method protected e()V
    .locals 2

    .prologue
    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->b:Z

    .line 236
    const-string v0, "AdViewOverlayActivity"

    const-string v1, "Overlay onPause"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-static {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->a(Landroid/content/Context;)Lcom/millennialmedia/android/BridgeMMMedia$Audio;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    monitor-enter p0

    .line 240
    :try_start_0
    invoke-virtual {v0}, Lcom/millennialmedia/android/BridgeMMMedia$Audio;->b()Lcom/millennialmedia/android/MMJSResponse;

    .line 241
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->p()V

    .line 247
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_1

    .line 250
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->onPauseWebView()V

    .line 262
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setResult(I)V

    .line 263
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->e()V

    .line 264
    return-void

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method protected f()V
    .locals 0

    .prologue
    .line 276
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->f()V

    .line 277
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_1

    .line 172
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->k()V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->j()V

    .line 180
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    .line 181
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

    .line 182
    return-void
.end method

.method n_()V
    .locals 1

    .prologue
    .line 127
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setRequestedOrientation(I)V

    .line 128
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 111
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->i()V

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 115
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x2

    .line 37
    const v0, 0x1030010

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setTheme(I)V

    .line 38
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0, v3}, Lcom/millennialmedia/android/AdViewOverlayActivity;->requestWindowFeature(I)Z

    .line 41
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 43
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 49
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 52
    const-string v0, "settings"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/OverlaySettings;

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    .line 55
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    if-nez v0, :cond_0

    .line 56
    new-instance v0, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v0}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->a()V

    .line 58
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v0, v0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 59
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v0, v0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->a(Ljava/lang/String;)V

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iget-boolean v0, v0, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    if-eqz v0, :cond_5

    .line 62
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->n_()V

    .line 66
    :goto_0
    if-eqz v1, :cond_2

    .line 67
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 68
    if-eqz v0, :cond_2

    .line 69
    const-string v1, "AdViewOverlayActivity"

    const-string v2, "Path: %s"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :cond_2
    new-instance v0, Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->c:Lcom/millennialmedia/android/MMActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 74
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 77
    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 78
    const v2, 0x34c60db9

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setId(I)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 81
    new-instance v1, Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v1, p0, v2}, Lcom/millennialmedia/android/AdViewOverlayView;-><init>(Lcom/millennialmedia/android/AdViewOverlayActivity;Lcom/millennialmedia/android/OverlaySettings;)V

    iput-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    .line 83
    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->setContentView(Landroid/view/View;)V

    .line 87
    invoke-virtual {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_4

    .line 88
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->b()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 89
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    if-eqz v0, :cond_3

    .line 92
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v0, v0, Lcom/millennialmedia/android/AdViewOverlayView;->h:Lcom/millennialmedia/android/MMAdImpl;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImpl;->k:Lcom/millennialmedia/android/MMAdImplController;

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdImplController;->b:Lcom/millennialmedia/android/MMWebView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->r()V

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->d()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 96
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v1, v1, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Ljava/lang/String;)V

    .line 105
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 106
    return-void

    .line 64
    :cond_5
    invoke-direct {p0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->g()V

    goto/16 :goto_0

    .line 98
    :cond_6
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    invoke-virtual {v0}, Lcom/millennialmedia/android/OverlaySettings;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    iget-object v1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v1, v1, Lcom/millennialmedia/android/OverlaySettings;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->e:Lcom/millennialmedia/android/OverlaySettings;

    iget-object v2, v2, Lcom/millennialmedia/android/OverlaySettings;->j:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 269
    invoke-super {p0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    .line 270
    const-string v0, "AdViewOverlayActivity"

    const-string v1, "Overlay onDestroy"

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 318
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->c()V

    .line 320
    const/4 v0, 0x1

    .line 322
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->a()Ljava/lang/Object;

    move-result-object v0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 221
    invoke-super {p0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    .line 222
    iput-boolean p1, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->a:Z

    .line 223
    iget-boolean v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->b:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 224
    iget-object v0, p0, Lcom/millennialmedia/android/AdViewOverlayActivity;->d:Lcom/millennialmedia/android/AdViewOverlayView;

    invoke-virtual {v0}, Lcom/millennialmedia/android/AdViewOverlayView;->q()V

    .line 226
    :cond_0
    return-void
.end method
