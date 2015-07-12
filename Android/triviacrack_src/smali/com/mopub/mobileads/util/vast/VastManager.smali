.class public Lcom/mopub/mobileads/util/vast/VastManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mopub/mobileads/util/vast/d;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

.field private d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

.field private e:D

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "video/mp4"

    aput-object v1, v0, v2

    const-string v1, "video/3gpp"

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/util/vast/VastManager;->a:Ljava/util/List;

    .line 25
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "image/jpeg"

    aput-object v1, v0, v2

    const-string v1, "image/png"

    aput-object v1, v0, v3

    const-string v1, "image/bmp"

    aput-object v1, v0, v4

    const/4 v1, 0x3

    const-string v2, "image/gif"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/mopub/mobileads/util/vast/VastManager;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Landroid/content/Context;)V

    .line 36
    return-void
.end method

.method private a(II)D
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 249
    int-to-double v0, p1

    int-to-double v2, p2

    div-double/2addr v0, v2

    .line 250
    mul-int v2, p1, p2

    .line 251
    iget-wide v3, p0, Lcom/mopub/mobileads/util/vast/VastManager;->e:D

    div-double/2addr v0, v3

    .line 252
    int-to-double v2, v2

    iget v4, p0, Lcom/mopub/mobileads/util/vast/VastManager;->f:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    .line 253
    const-wide/high16 v4, 0x4044

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    const-wide/high16 v4, 0x404e

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method static synthetic a(Lcom/mopub/mobileads/util/vast/VastManager;)Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;
    .locals 1
    .parameter

    .prologue
    .line 16
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    return-object v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 7
    .parameter

    .prologue
    .line 125
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 127
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 130
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 131
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 132
    int-to-double v3, v2

    int-to-double v5, v0

    div-double/2addr v3, v5

    iput-wide v3, p0, Lcom/mopub/mobileads/util/vast/VastManager;->e:D

    .line 133
    mul-int/2addr v0, v2

    iput v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->f:I

    .line 134
    return-void
.end method

.method static synthetic a(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z

    move-result v0

    return v0
.end method

.method private a(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z
    .locals 2
    .parameter

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Lcom/mopub/common/CacheService;->containsKeyDiskCache(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 116
    invoke-static {v0}, Lcom/mopub/common/CacheService;->getFilePathDiskCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {p1, v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setDiskMediaFileUrl(Ljava/lang/String;)V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/a;",
            ">;)",
            "Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;"
        }
    .end annotation

    .prologue
    .line 137
    new-instance v1, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    invoke-direct {v1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;-><init>()V

    .line 139
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 141
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/util/vast/a;

    .line 142
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->b()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addImpressionTrackers(Ljava/util/List;)V

    .line 144
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->c()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addStartTrackers(Ljava/util/List;)V

    .line 145
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->d()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addFirstQuartileTrackers(Ljava/util/List;)V

    .line 146
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->e()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addMidpointTrackers(Ljava/util/List;)V

    .line 147
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->f()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addThirdQuartileTrackers(Ljava/util/List;)V

    .line 148
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->g()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addCompleteTrackers(Ljava/util/List;)V

    .line 150
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->i()Ljava/util/List;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->addClickTrackers(Ljava/util/List;)V

    .line 152
    invoke-virtual {v1}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getClickThroughUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_0

    .line 153
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->h()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setClickThroughUrl(Ljava/lang/String;)V

    .line 156
    :cond_0
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->j()Ljava/util/List;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 157
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/a;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0, v2}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setNetworkMediaFileUrl(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0, v3}, Lcom/mopub/mobileads/util/vast/VastManager;->b(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->setVastCompanionAd(Lcom/mopub/mobileads/util/vast/VastCompanionAd;)V

    .line 163
    return-object v1
.end method


# virtual methods
.method a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 167
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 168
    const-wide/high16 v5, 0x7ff0

    .line 169
    const/4 v2, 0x0

    .line 171
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 172
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 173
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/util/vast/c;

    .line 175
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/c;->c()Ljava/lang/String;

    move-result-object v3

    .line 176
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/c;->d()Ljava/lang/String;

    move-result-object v1

    .line 177
    sget-object v4, Lcom/mopub/mobileads/util/vast/VastManager;->a:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v1, :cond_2

    .line 178
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 182
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/c;->a()Ljava/lang/Integer;

    move-result-object v3

    .line 183
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/c;->b()Ljava/lang/Integer;

    move-result-object v0

    .line 184
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_0

    .line 188
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v3, v0}, Lcom/mopub/mobileads/util/vast/VastManager;->a(II)D

    move-result-wide v3

    .line 189
    cmpg-double v0, v3, v5

    if-gez v0, :cond_5

    move-object v0, v1

    move-wide v1, v3

    :goto_1
    move-wide v5, v1

    move-object v2, v0

    .line 193
    goto :goto_0

    .line 195
    :cond_3
    if-nez v2, :cond_4

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 196
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/util/vast/c;

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/c;->d()Ljava/lang/String;

    move-result-object v2

    .line 199
    :cond_4
    return-object v2

    :cond_5
    move-object v0, v2

    move-wide v1, v5

    goto :goto_1
.end method

.method b(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastCompanionAd;
    .locals 10
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/b;",
            ">;)",
            "Lcom/mopub/mobileads/util/vast/VastCompanionAd;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 203
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 205
    const-wide/high16 v4, 0x7ff0

    .line 208
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v1, v6

    .line 209
    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 210
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/util/vast/b;

    .line 212
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/b;->c()Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/b;->d()Ljava/lang/String;

    move-result-object v3

    .line 214
    sget-object v9, Lcom/mopub/mobileads/util/vast/VastManager;->b:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    .line 215
    :cond_1
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 219
    :cond_2
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/b;->a()Ljava/lang/Integer;

    move-result-object v2

    .line 220
    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/b;->b()Ljava/lang/Integer;

    move-result-object v3

    .line 221
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-lez v9, :cond_0

    .line 225
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/mopub/mobileads/util/vast/VastManager;->a(II)D

    move-result-wide v2

    .line 226
    cmpg-double v9, v2, v4

    if-gez v9, :cond_6

    move-wide v1, v2

    :goto_1
    move-wide v4, v1

    move-object v1, v0

    .line 230
    goto :goto_0

    .line 232
    :cond_3
    if-nez v1, :cond_5

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 233
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mopub/mobileads/util/vast/b;

    move-object v7, v0

    .line 236
    :goto_2
    if-eqz v7, :cond_4

    .line 237
    new-instance v0, Lcom/mopub/mobileads/util/vast/VastCompanionAd;

    invoke-virtual {v7}, Lcom/mopub/mobileads/util/vast/b;->a()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7}, Lcom/mopub/mobileads/util/vast/b;->b()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7}, Lcom/mopub/mobileads/util/vast/b;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/mopub/mobileads/util/vast/b;->e()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lcom/mopub/mobileads/util/vast/b;->f()Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct/range {v0 .. v5}, Lcom/mopub/mobileads/util/vast/VastCompanionAd;-><init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 245
    :goto_3
    return-object v0

    :cond_4
    move-object v0, v6

    goto :goto_3

    :cond_5
    move-object v7, v1

    goto :goto_2

    :cond_6
    move-object v0, v1

    move-wide v1, v4

    goto :goto_1
.end method

.method public cancel()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;->cancel(Z)Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    .line 60
    :cond_0
    return-void
.end method

.method public onAggregationComplete(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/mopub/mobileads/util/vast/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 64
    iput-object v4, p0, Lcom/mopub/mobileads/util/vast/VastManager;->d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    .line 65
    if-nez p1, :cond_1

    .line 66
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    invoke-interface {v0, v4}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    .line 111
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    invoke-direct {p0, p1}, Lcom/mopub/mobileads/util/vast/VastManager;->c(Ljava/util/List;)Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lcom/mopub/mobileads/util/vast/VastManager;->a(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    if-eqz v1, :cond_0

    .line 77
    iget-object v1, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    invoke-interface {v1, v0}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0

    .line 82
    :cond_2
    new-instance v1, Lcom/mopub/mobileads/VastVideoDownloadTask;

    new-instance v2, Lcom/mopub/mobileads/util/vast/VastManager$1;

    invoke-direct {v2, p0, v0}, Lcom/mopub/mobileads/util/vast/VastManager$1;-><init>(Lcom/mopub/mobileads/util/vast/VastManager;Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    invoke-direct {v1, v2}, Lcom/mopub/mobileads/VastVideoDownloadTask;-><init>(Lcom/mopub/mobileads/VastVideoDownloadTask$VastVideoDownloadTaskListener;)V

    .line 100
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;->getNetworkMediaFileUrl()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 104
    :catch_0
    move-exception v0

    .line 105
    const-string v1, "Failed to download vast video"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    invoke-interface {v0, v4}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0
.end method

.method public prepareVastVideoConfiguration(Ljava/lang/String;Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 39
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    if-nez v0, :cond_0

    .line 40
    iput-object p2, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    .line 41
    new-instance v0, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    invoke-direct {v0, p0}, Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;-><init>(Lcom/mopub/mobileads/util/vast/d;)V

    iput-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->d:Lcom/mopub/mobileads/util/vast/VastXmlManagerAggregator;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/mopub/common/util/AsyncTasks;->safeExecuteOnExecutor(Landroid/os/AsyncTask;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "Failed to aggregate vast xml"

    invoke-static {v1, v0}, Lcom/mopub/common/logging/MoPubLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 48
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/mopub/mobileads/util/vast/VastManager;->c:Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/mopub/mobileads/util/vast/VastManager$VastManagerListener;->onVastVideoConfigurationPrepared(Lcom/mopub/mobileads/util/vast/VastVideoConfiguration;)V

    goto :goto_0
.end method
