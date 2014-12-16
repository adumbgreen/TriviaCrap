.class public Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/inmobi/re/container/IMWebView;

.field private b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/inmobi/re/container/IMWebView;Landroid/app/Activity;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    .line 32
    iput-object p2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b:Landroid/app/Activity;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Landroid/app/Activity;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;)Lcom/inmobi/re/container/IMWebView;
    .locals 1
    .parameter

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    return-object v0
.end method


# virtual methods
.method public getCurrentPosition()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 103
    const-string v1, "[InMobi]-[RE]-4.3.0"

    const-string v2, "IMWebView-> getCurrentPosition"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 105
    const/4 v5, 0x0

    .line 107
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 109
    iget-object v2, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v2, v1}, Lcom/inmobi/re/container/IMWebView;->getLocationOnScreen([I)V

    .line 110
    const/4 v2, 0x0

    aget v2, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    const/4 v3, 0x1

    :try_start_1
    aget v1, v1, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 112
    :try_start_2
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v0

    div-float v0, v3, v0

    float-to-int v0, v0

    .line 113
    iget-object v3, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v3}, Lcom/inmobi/re/container/IMWebView;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    div-float/2addr v3, v5

    float-to-int v3, v3

    move v7, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move v0, v7

    .line 119
    :goto_0
    :try_start_3
    const-string v5, "x"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v3, "y"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v2, "width"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "height"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 128
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iput-object v4, v0, Lcom/inmobi/re/container/IMWebView;->curPosition:Lorg/json/JSONObject;

    .line 130
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->acqMutexcPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 131
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutexcPos:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    return-void

    .line 115
    :catch_0
    move-exception v1

    move v1, v0

    move v2, v0

    .line 116
    :goto_2
    :try_start_5
    const-string v3, "[InMobi]-[RE]-4.3.0"

    const-string v6, "Failed to get current position"

    invoke-static {v3, v6}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 119
    :try_start_6
    const-string v3, "x"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v2, "y"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v1, "width"

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v0, "height"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    goto :goto_1

    .line 118
    :catchall_0
    move-exception v1

    move v2, v0

    move v3, v0

    move-object v7, v1

    move v1, v0

    move-object v0, v7

    .line 119
    :goto_3
    :try_start_7
    const-string v6, "x"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 120
    const-string v3, "y"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 121
    const-string v2, "width"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 122
    const-string v1, "height"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 124
    :goto_4
    throw v0

    .line 132
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 123
    :catch_2
    move-exception v1

    goto :goto_4

    .line 118
    :catchall_2
    move-exception v1

    move v3, v2

    move v2, v0

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_3

    :catchall_3
    move-exception v3

    move-object v7, v3

    move v3, v2

    move v2, v1

    move v1, v0

    move-object v0, v7

    goto :goto_3

    .line 115
    :catch_3
    move-exception v1

    move v1, v0

    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_2

    .line 123
    :catch_5
    move-exception v0

    goto :goto_1

    :cond_0
    move v1, v0

    move v2, v0

    move v3, v0

    goto/16 :goto_0
.end method

.method public getDefaultPosition()V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 139
    const-string v0, "[InMobi]-[RE]-4.3.0"

    const-string v2, "IMWebView-> getDefaultPosition"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 141
    const/4 v5, 0x0

    .line 143
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->isViewable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 144
    const/4 v0, 0x2

    new-array v2, v0, [I

    .line 145
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 146
    const/4 v0, 0x0

    aget v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    const/4 v0, 0x1

    :try_start_1
    aget v2, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 148
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v1, v0

    .line 149
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->getOriginalParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v6, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v6}, Lcom/inmobi/re/container/IMWebView;->getDensity()F
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    move-result v5

    div-float/2addr v0, v5

    float-to-int v0, v0

    move v9, v0

    move v0, v1

    move v1, v9

    .line 156
    :goto_0
    :try_start_3
    const-string v5, "x"

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v3, "y"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v2, "width"

    invoke-virtual {v4, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v0, "height"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_5

    .line 164
    :goto_1
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iput-object v4, v0, Lcom/inmobi/re/container/IMWebView;->defPosition:Lorg/json/JSONObject;

    .line 166
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->acqMutexdPos:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 167
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v0, v0, Lcom/inmobi/re/container/IMWebView;->mutexdPos:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 168
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 169
    return-void

    .line 151
    :catch_0
    move-exception v0

    move v2, v1

    move v3, v1

    .line 152
    :goto_2
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    const-string v6, "[InMobi]-[RE]-4.3.0"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to get default position"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 156
    :try_start_6
    const-string v0, "x"

    invoke-virtual {v4, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v0, "y"

    invoke-virtual {v4, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v0, "width"

    invoke-virtual {v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v0, "height"

    invoke-virtual {v4, v0, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    goto :goto_1

    .line 155
    :catchall_0
    move-exception v0

    move v2, v1

    move v3, v1

    .line 156
    :goto_3
    :try_start_7
    const-string v6, "x"

    invoke-virtual {v4, v6, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 157
    const-string v3, "y"

    invoke-virtual {v4, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 158
    const-string v2, "width"

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 159
    const-string v1, "height"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_2

    .line 161
    :goto_4
    throw v0

    .line 168
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw v0

    .line 160
    :catch_2
    move-exception v1

    goto :goto_4

    .line 155
    :catchall_2
    move-exception v0

    move v2, v1

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_3

    .line 151
    :catch_3
    move-exception v0

    move v2, v1

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_2

    .line 160
    :catch_5
    move-exception v0

    goto :goto_1

    :cond_0
    move v0, v1

    move v2, v1

    move v3, v1

    goto/16 :goto_0
.end method

.method public open(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 42
    :try_start_0
    const-string v0, "http://"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "https"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "play.google.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "market.android.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "market%3A%2F%2F"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 47
    :cond_0
    invoke-static {p1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    :cond_1
    :goto_0
    return-void

    .line 52
    :cond_2
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b:Landroid/app/Activity;

    const-class v2, Lcom/inmobi/androidsdk/IMBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 53
    const-string v1, "[InMobi]-[RE]-4.3.0"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IMWebView-> open:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string v1, "extra_url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v1}, Lcom/inmobi/re/container/IMWebView;->getStateVariable()Lcom/inmobi/re/container/IMWebView$ViewState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/re/container/IMWebView$ViewState;->DEFAULT:Lcom/inmobi/re/container/IMWebView$ViewState;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v1, v1, Lcom/inmobi/re/container/IMWebView;->mIsInterstitialAd:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v1, v1, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-nez v1, :cond_3

    .line 56
    const-string v1, "FIRST_INSTANCE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 58
    :cond_3
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-object v1, v1, Lcom/inmobi/re/container/IMWebView;->mListener:Lcom/inmobi/re/container/IMWebView$IMWebViewListener;

    invoke-static {v1}, Lcom/inmobi/androidsdk/IMBrowserActivity;->setWebViewListener(Lcom/inmobi/re/container/IMWebView$IMWebViewListener;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 60
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->b:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    :try_start_2
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    iget-boolean v0, v0, Lcom/inmobi/re/container/IMWebView;->mWebViewIsBrowserActivity:Z

    if-nez v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    invoke-virtual {v0}, Lcom/inmobi/re/container/IMWebView;->fireOnShowAdScreen()V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    const-string v0, "[InMobi]-[RE]-4.3.0"

    const-string v1, "Failed to perform mraid Open"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    :catch_1
    move-exception v0

    .line 63
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 94
    :catch_2
    move-exception v0

    .line 95
    iget-object v0, p0, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;->a:Lcom/inmobi/re/container/IMWebView;

    const-string v1, "Invalid url"

    const-string v2, "open"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/re/container/IMWebView;->raiseError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 69
    :cond_4
    :try_start_4
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/re/container/mraidimpl/MRAIDBasic$a;-><init>(Lcom/inmobi/re/container/mraidimpl/MRAIDBasic;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0
.end method
