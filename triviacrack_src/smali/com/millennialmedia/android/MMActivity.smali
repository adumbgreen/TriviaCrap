.class public Lcom/millennialmedia/android/MMActivity;
.super Landroid/app/Activity;
.source "SourceFile"


# instance fields
.field a:J

.field b:Landroid/view/GestureDetector;

.field private c:Lcom/millennialmedia/android/MMBaseActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 62
    return-void
.end method

.method a(IILandroid/content/Intent;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 215
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 216
    return-void
.end method

.method a(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 174
    return-void
.end method

.method a(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    return-void
.end method

.method a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 188
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method a(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 289
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 76
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 145
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    return-void
.end method

.method c()V
    .locals 0

    .prologue
    .line 89
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 90
    return-void
.end method

.method c(Landroid/os/Bundle;)V
    .locals 0
    .parameter

    .prologue
    .line 159
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 160
    return-void
.end method

.method d()V
    .locals 0

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 104
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 235
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->b:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->b:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_1

    .line 238
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method e()V
    .locals 0

    .prologue
    .line 117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 118
    return-void
.end method

.method f()V
    .locals 0

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    return-void
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->finish()V

    .line 278
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->a:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdImplController;->a(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->e(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 276
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public finishSuper()V
    .locals 2

    .prologue
    .line 282
    iget-wide v0, p0, Lcom/millennialmedia/android/MMActivity;->a:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdImplController;->a(J)Lcom/millennialmedia/android/MMAdImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/MMSDK$Event;->e(Lcom/millennialmedia/android/MMAdImpl;)V

    .line 284
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 285
    return-void
.end method

.method g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected h()Lcom/millennialmedia/android/MMBaseActivity;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 207
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1, p2, p3}, Lcom/millennialmedia/android/MMBaseActivity;->a(IILandroid/content/Intent;)V

    .line 211
    :goto_0
    return-void

    .line 210
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter

    .prologue
    .line 179
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 183
    :goto_0
    return-void

    .line 182
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 27
    const-string v2, "internalId"

    const-wide/16 v3, -0x4

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/millennialmedia/android/MMActivity;->a:J

    .line 30
    :try_start_0
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "class"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 31
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 32
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMBaseActivity;

    iput-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    .line 33
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    iput-object p0, v0, Lcom/millennialmedia/android/MMBaseActivity;->c:Lcom/millennialmedia/android/MMActivity;

    .line 34
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;

    invoke-direct {v3, p0}, Lcom/millennialmedia/android/MMActivity$InterstitialGestureListener;-><init>(Lcom/millennialmedia/android/MMActivity;)V

    invoke-direct {v0, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/millennialmedia/android/MMActivity;->b:Landroid/view/GestureDetector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v2, "MMActivity"

    const-string v3, "Could not start activity for %s. "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1, v0}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    invoke-virtual {p0}, Lcom/millennialmedia/android/MMActivity;->finish()V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onDestroy()V

    .line 57
    :goto_0
    return-void

    .line 56
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 221
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/android/MMBaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 224
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->e()V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    goto :goto_0
.end method

.method protected onRestart()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->k()V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 151
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->b(Landroid/os/Bundle;)V

    .line 155
    :goto_0
    return-void

    .line 154
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->d()V

    .line 113
    :goto_0
    return-void

    .line 112
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    .line 196
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onRetainNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 137
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->a(Landroid/os/Bundle;)V

    .line 141
    :goto_0
    return-void

    .line 140
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->a()V

    .line 71
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0}, Lcom/millennialmedia/android/MMBaseActivity;->f()V

    .line 85
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .parameter

    .prologue
    .line 165
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/millennialmedia/android/MMActivity;->c:Lcom/millennialmedia/android/MMBaseActivity;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/android/MMBaseActivity;->onWindowFocusChanged(Z)V

    .line 169
    :goto_0
    return-void

    .line 168
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    goto :goto_0
.end method
