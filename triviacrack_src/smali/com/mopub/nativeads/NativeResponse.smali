.class public Lcom/mopub/nativeads/NativeResponse;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

.field private final c:Lcom/mopub/nativeads/t;

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Z

.field private h:Z

.field private i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/mopub/common/DownloadResponse;Ljava/lang/String;Lcom/mopub/nativeads/t;Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->a:Landroid/content/Context;

    .line 105
    iput-object p3, p0, Lcom/mopub/nativeads/NativeResponse;->f:Ljava/lang/String;

    .line 106
    iput-object p5, p0, Lcom/mopub/nativeads/NativeResponse;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 107
    iput-object p4, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    .line 108
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    new-instance v1, Lcom/mopub/nativeads/NativeResponse$1;

    invoke-direct {v1, p0}, Lcom/mopub/nativeads/NativeResponse$1;-><init>(Lcom/mopub/nativeads/NativeResponse;)V

    invoke-interface {v0, v1}, Lcom/mopub/nativeads/t;->setNativeEventListener(Lcom/mopub/nativeads/b;)V

    .line 120
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->d:Ljava/util/Set;

    .line 121
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->d:Ljava/util/Set;

    sget-object v1, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {p2, v1}, Lcom/mopub/common/DownloadResponse;->getFirstHeader(Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->CLICKTHROUGH_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {p2, v0}, Lcom/mopub/common/DownloadResponse;->getFirstHeader(Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->e:Ljava/lang/String;

    .line 123
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 4
    .parameter

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 327
    :goto_0
    return-void

    .line 313
    :cond_0
    const/4 v0, 0x0

    .line 314
    if-eqz p1, :cond_1

    .line 315
    new-instance v0, Lcom/mopub/nativeads/ag;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mopub/nativeads/ag;-><init>(Landroid/content/Context;)V

    .line 316
    invoke-virtual {v0, p1}, Lcom/mopub/nativeads/ag;->a(Landroid/view/View;)Z

    .line 319
    :cond_1
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 320
    new-instance v2, Lcom/mopub/nativeads/x;

    iget-object v3, p0, Lcom/mopub/nativeads/NativeResponse;->a:Landroid/content/Context;

    invoke-direct {v2, v3, v1, v0}, Lcom/mopub/nativeads/x;-><init>(Landroid/content/Context;Ljava/util/Iterator;Lcom/mopub/nativeads/ag;)V

    .line 326
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/mopub/nativeads/ak;->getResolvedUrl(Ljava/lang/String;Lcom/mopub/nativeads/al;)V

    goto :goto_0
.end method

.method private a(Landroid/view/View;Landroid/view/View$OnClickListener;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 331
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 332
    check-cast p1, Landroid/view/ViewGroup;

    .line 333
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 334
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/mopub/nativeads/NativeResponse;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 333
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 336
    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 305
    invoke-static {p1, p2}, Lcom/mopub/nativeads/m;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 306
    return-void
.end method


# virtual methods
.method public clear(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 259
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeResponse;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 261
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/t;->clear(Landroid/view/View;)V

    .line 262
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    :goto_0
    return-void

    .line 269
    :cond_0
    sget-object v0, Lcom/mopub/nativeads/MoPubNative;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    iput-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    .line 271
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->destroy()V

    .line 272
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->i:Z

    goto :goto_0
.end method

.method public getAdUnitId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getCallToAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getCallToAction()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickDestinationUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClickTracker()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/t;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getExtras()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIconImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImpressionMinPercentageViewed()I
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getImpressionMinPercentageViewed()I

    move-result v0

    return v0
.end method

.method public getImpressionMinTimeViewed()I
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getImpressionMinTimeViewed()I

    move-result v0

    return v0
.end method

.method public getImpressionTrackers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 175
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 176
    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->d:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v1}, Lcom/mopub/nativeads/t;->getImpressionTrackers()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 178
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method public getMainImageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordedImpression()Z
    .locals 1

    .prologue
    .line 292
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->g:Z

    return v0
.end method

.method public getStarRating()Ljava/lang/Double;
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 397
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getText()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isClicked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 248
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->e:Ljava/lang/String;

    iget-object v1, p0, Lcom/mopub/nativeads/NativeResponse;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/mopub/common/HttpClient;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    .line 251
    :cond_1
    invoke-direct {p0, p1}, Lcom/mopub/nativeads/NativeResponse;->a(Landroid/view/View;)V

    .line 252
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/t;->handleClick(Landroid/view/View;)V

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->h:Z

    .line 255
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;->onNativeClick(Landroid/view/View;)V

    goto :goto_0
.end method

.method public isClicked()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->h:Z

    return v0
.end method

.method public isDestroyed()Z
    .locals 1

    .prologue
    .line 300
    iget-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->i:Z

    return v0
.end method

.method public isOverridingClickTracker()Z
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->isOverridingClickTracker()Z

    move-result v0

    return v0
.end method

.method public isOverridingImpressionTracker()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->isOverridingImpressionTracker()Z

    move-result v0

    return v0
.end method

.method public loadExtrasImage(Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 285
    invoke-virtual {p0, p1}, Lcom/mopub/nativeads/NativeResponse;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_0

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 287
    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/mopub/nativeads/NativeResponse;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 289
    :cond_0
    return-void
.end method

.method public loadIconImage(Landroid/widget/ImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getIconImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mopub/nativeads/NativeResponse;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 282
    return-void
.end method

.method public loadMainImage(Landroid/widget/ImageView;)V
    .locals 1
    .parameter

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getMainImageUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/mopub/nativeads/NativeResponse;->a(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 278
    return-void
.end method

.method public prepare(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    :goto_0
    return-void

    .line 220
    :cond_0
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isOverridingClickTracker()Z

    move-result v0

    if-nez v0, :cond_1

    .line 221
    new-instance v0, Lcom/mopub/nativeads/y;

    invoke-direct {v0, p0}, Lcom/mopub/nativeads/y;-><init>(Lcom/mopub/nativeads/NativeResponse;)V

    invoke-direct {p0, p1, v0}, Lcom/mopub/nativeads/NativeResponse;->a(Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 224
    :cond_1
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/t;->prepare(Landroid/view/View;)V

    goto :goto_0
.end method

.method public recordImpression(Landroid/view/View;)V
    .locals 3
    .parameter

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getRecordedImpression()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 232
    :cond_1
    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 233
    iget-object v2, p0, Lcom/mopub/nativeads/NativeResponse;->a:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/mopub/common/HttpClient;->makeTrackingHttpRequest(Ljava/lang/String;Landroid/content/Context;)V

    goto :goto_1

    .line 236
    :cond_2
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->c:Lcom/mopub/nativeads/t;

    invoke-interface {v0}, Lcom/mopub/nativeads/t;->recordImpression()V

    .line 237
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mopub/nativeads/NativeResponse;->g:Z

    .line 239
    iget-object v0, p0, Lcom/mopub/nativeads/NativeResponse;->b:Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;

    invoke-interface {v0, p1}, Lcom/mopub/nativeads/MoPubNative$MoPubNativeEventListener;->onNativeImpression(Landroid/view/View;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 127
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    sget-object v1, Lcom/mopub/nativeads/z;->TITLE:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v1, Lcom/mopub/nativeads/z;->TEXT:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget-object v1, Lcom/mopub/nativeads/z;->ICON_IMAGE:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getIconImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v1, Lcom/mopub/nativeads/z;->MAIN_IMAGE:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getMainImageUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-object v1, Lcom/mopub/nativeads/z;->STAR_RATING:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getStarRating()Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    sget-object v1, Lcom/mopub/nativeads/z;->IMPRESSION_TRACKER:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getImpressionTrackers()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-object v1, Lcom/mopub/nativeads/z;->CLICK_TRACKER:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mopub/nativeads/NativeResponse;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    sget-object v1, Lcom/mopub/nativeads/z;->CLICK_DESTINATION:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getClickDestinationUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v1, Lcom/mopub/nativeads/z;->CALL_TO_ACTION:Lcom/mopub/nativeads/z;

    iget-object v1, v1, Lcom/mopub/nativeads/z;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getCallToAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    const-string v1, "recordedImpression"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mopub/nativeads/NativeResponse;->g:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v1, "extras"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/mopub/nativeads/NativeResponse;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
