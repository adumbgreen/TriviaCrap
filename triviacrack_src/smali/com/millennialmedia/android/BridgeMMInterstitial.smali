.class Lcom/millennialmedia/android/BridgeMMInterstitial;
.super Lcom/millennialmedia/android/MMJSObject;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/millennialmedia/android/BridgeMMInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/android/BridgeMMInterstitial;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/millennialmedia/android/MMJSObject;-><init>()V

    .line 26
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    if-eqz p1, :cond_0

    .line 168
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 170
    :cond_0
    const-string v1, "settings"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 171
    const-string v1, "internalId"

    iget-wide v2, p2, Lcom/millennialmedia/android/OverlaySettings;->n:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 172
    return-object v0
.end method

.method private a(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 217
    const-string v0, "allowOrientationChange"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 219
    if-eqz v0, :cond_0

    .line 221
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->d()Lcom/millennialmedia/android/AdViewOverlayActivity;

    move-result-object v1

    .line 222
    if-eqz v1, :cond_0

    .line 223
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 225
    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->a(Z)V

    .line 226
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Lcom/millennialmedia/android/MMJSResponse;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 207
    iget v0, p1, Lcom/millennialmedia/android/MMJSResponse;->c:I

    if-ne v0, v2, :cond_2

    iget-object v0, p1, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 209
    iget-object v0, p1, Lcom/millennialmedia/android/MMJSResponse;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 210
    const-string v3, "portrait"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "landscape"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    .line 212
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 210
    goto :goto_0

    :cond_2
    move v0, v1

    .line 212
    goto :goto_0
.end method

.method private b(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 234
    const-string v0, "forceOrientation"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 237
    invoke-virtual {p0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->d()Lcom/millennialmedia/android/AdViewOverlayActivity;

    move-result-object v1

    .line 238
    if-eqz v1, :cond_2

    .line 239
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 240
    const-string v2, "portrait"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->b()V

    .line 242
    const-string v0, "portrait"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 255
    :goto_0
    return-object v0

    .line 244
    :cond_0
    const-string v2, "landscape"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 245
    invoke-virtual {v1}, Lcom/millennialmedia/android/AdViewOverlayActivity;->c()V

    .line 246
    const-string v0, "landscape"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 248
    :cond_1
    const-string v2, "none"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 250
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/millennialmedia/android/AdViewOverlayActivity;->a(Z)V

    .line 251
    const-string v0, "none"

    invoke-static {v0}, Lcom/millennialmedia/android/MMJSResponse;->a(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 255
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 263
    const-string v1, "close"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 264
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInterstitial;->close(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 277
    :cond_0
    :goto_0
    return-object v0

    .line 265
    :cond_1
    const-string v1, "expandToExternalBrowser"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 266
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInterstitial;->expandToExternalBrowser(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 267
    :cond_2
    const-string v1, "expandWithProperties"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 268
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInterstitial;->expandWithProperties(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 269
    :cond_3
    const-string v1, "open"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 270
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInterstitial;->open(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 271
    :cond_4
    const-string v1, "setOrientation"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInterstitial;->setOrientation(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0

    .line 273
    :cond_5
    const-string v1, "useCustomClose"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    invoke-virtual {p0, p2}, Lcom/millennialmedia/android/BridgeMMInterstitial;->useCustomClose(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    goto :goto_0
.end method

.method public close(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 37
    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->h()Lcom/millennialmedia/android/MMLayout;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMLayout;->b()V

    .line 40
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 42
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public expandToExternalBrowser(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->open(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    return-object v0
.end method

.method public expandWithProperties(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 16
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 82
    const-string v1, "PROPERTY_BANNER_TYPE"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 83
    if-eqz v1, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 84
    const-string v1, "Cannot expand a non banner ad"

    invoke-static {v1}, Lcom/millennialmedia/android/MMJSResponse;->b(Ljava/lang/String;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    .line 161
    :goto_0
    return-object v1

    .line 88
    :cond_0
    const-string v1, "url"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 89
    const-string v2, "transparent"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 91
    const-string v3, "useCustomClose"

    move-object/from16 v0, p1

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 93
    const-string v4, "transition"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 95
    const-string v5, "orientation"

    move-object/from16 v0, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 97
    const-string v6, "transitionDuration"

    move-object/from16 v0, p1

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 99
    const-string v7, "height"

    move-object/from16 v0, p1

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 100
    const-string v8, "width"

    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 101
    const-string v9, "modal"

    move-object/from16 v0, p1

    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 102
    const-string v10, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 103
    const-string v11, "allowOrientationChange"

    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 105
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/millennialmedia/android/BridgeMMInterstitial;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/Context;

    .line 106
    if-eqz v12, :cond_c

    .line 107
    new-instance v13, Lcom/millennialmedia/android/OverlaySettings;

    invoke-direct {v13}, Lcom/millennialmedia/android/OverlaySettings;-><init>()V

    .line 108
    if-eqz v1, :cond_1

    .line 109
    iput-object v1, v13, Lcom/millennialmedia/android/OverlaySettings;->d:Ljava/lang/String;

    .line 111
    :cond_1
    if-eqz v10, :cond_2

    .line 112
    invoke-static {v10}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v10

    float-to-int v10, v10

    int-to-long v14, v10

    iput-wide v14, v13, Lcom/millennialmedia/android/OverlaySettings;->n:J

    .line 115
    :cond_2
    if-eqz v2, :cond_3

    .line 116
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v13, v2}, Lcom/millennialmedia/android/OverlaySettings;->b(Z)V

    .line 118
    :cond_3
    if-eqz v3, :cond_4

    .line 119
    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v13, v2}, Lcom/millennialmedia/android/OverlaySettings;->a(Z)V

    .line 122
    :cond_4
    if-eqz v4, :cond_5

    .line 123
    invoke-virtual {v13, v4}, Lcom/millennialmedia/android/OverlaySettings;->a(Ljava/lang/String;)V

    .line 125
    :cond_5
    if-eqz v11, :cond_6

    .line 126
    invoke-static {v11}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v13, Lcom/millennialmedia/android/OverlaySettings;->h:Z

    .line 129
    :cond_6
    if-nez v5, :cond_d

    .line 130
    const-string v2, "forceOrientation"

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 133
    :goto_1
    if-eqz v2, :cond_7

    .line 134
    iput-object v2, v13, Lcom/millennialmedia/android/OverlaySettings;->c:Ljava/lang/String;

    .line 136
    :cond_7
    if-eqz v7, :cond_8

    .line 137
    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v13, Lcom/millennialmedia/android/OverlaySettings;->e:I

    .line 139
    :cond_8
    if-eqz v8, :cond_9

    .line 140
    invoke-static {v8}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v13, Lcom/millennialmedia/android/OverlaySettings;->f:I

    .line 142
    :cond_9
    if-eqz v9, :cond_a

    .line 143
    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v13, Lcom/millennialmedia/android/OverlaySettings;->g:Z

    .line 145
    :cond_a
    if-eqz v6, :cond_b

    .line 147
    :try_start_0
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    .line 148
    invoke-virtual {v13, v2, v3}, Lcom/millennialmedia/android/OverlaySettings;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 153
    :cond_b
    :goto_2
    move-object/from16 v0, p0

    invoke-direct {v0, v1, v13}, Lcom/millennialmedia/android/BridgeMMInterstitial;->a(Ljava/lang/String;Lcom/millennialmedia/android/OverlaySettings;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/millennialmedia/android/Utils$IntentUtils;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 156
    const-string v1, "PROPERTY_EXPANDING"

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->b(Ljava/lang/String;)J

    move-result-wide v1

    .line 158
    invoke-static {v12, v1, v2}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;J)V

    .line 159
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v1

    goto/16 :goto_0

    .line 149
    :catch_0
    move-exception v2

    .line 150
    sget-object v3, Lcom/millennialmedia/android/BridgeMMInterstitial;->a:Ljava/lang/String;

    const-string v4, "Problem converting transitionDuration"

    invoke-static {v3, v4, v2}, Lcom/millennialmedia/android/MMLog;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 161
    :cond_c
    const/4 v1, 0x0

    goto/16 :goto_0

    :cond_d
    move-object v2, v5

    goto :goto_1
.end method

.method public open(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "url"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 54
    iget-object v1, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    .line 55
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 56
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 58
    const-string v0, "PROPERTY_EXPANDING"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->b(Ljava/lang/String;)J

    move-result-wide v3

    .line 60
    const-string v0, "browser"

    invoke-static {v1, v0, v3, v4}, Lcom/millennialmedia/android/MMSDK$Event;->a(Landroid/content/Context;Ljava/lang/String;J)V

    .line 62
    invoke-static {v1, v2}, Lcom/millennialmedia/android/Utils$IntentUtils;->c(Landroid/content/Context;Landroid/content/Intent;)V

    .line 63
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOrientation(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->b(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/millennialmedia/android/BridgeMMInterstitial;->a(Lcom/millennialmedia/android/MMJSResponse;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 200
    :cond_0
    invoke-direct {p0, p1}, Lcom/millennialmedia/android/BridgeMMInterstitial;->a(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 202
    :cond_1
    return-object v0
.end method

.method public useCustomClose(Ljava/util/Map;)Lcom/millennialmedia/android/MMJSResponse;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/millennialmedia/android/MMJSResponse;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/millennialmedia/android/BridgeMMInterstitial;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMWebView;

    .line 180
    const-string v1, "useCustomClose"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 182
    if-eqz v1, :cond_0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {v0}, Lcom/millennialmedia/android/MMWebView;->j()Lcom/millennialmedia/android/AdViewOverlayView;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    .line 187
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/millennialmedia/android/AdViewOverlayView;->a(Z)V

    .line 189
    invoke-static {}, Lcom/millennialmedia/android/MMJSResponse;->a()Lcom/millennialmedia/android/MMJSResponse;

    move-result-object v0

    .line 193
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
