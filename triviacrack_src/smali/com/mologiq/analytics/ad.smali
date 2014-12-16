.class Lcom/mologiq/analytics/ad;
.super Lcom/mologiq/analytics/u;
.source "SourceFile"


# static fields
.field private static final z:Lcom/mologiq/analytics/ad;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/mologiq/analytics/af;

.field private q:D

.field private r:D

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private t:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private u:D

.field private v:J

.field private w:D

.field private x:D

.field private y:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 578
    new-instance v0, Lcom/mologiq/analytics/ad;

    const-string v1, ".567ac581-718b-42d4-82d3-0daa55e13da7"

    invoke-direct {v0, v1}, Lcom/mologiq/analytics/ad;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mologiq/analytics/ad;->z:Lcom/mologiq/analytics/ad;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 592
    invoke-direct {p0, p1}, Lcom/mologiq/analytics/u;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mologiq/analytics/ad;->c:Z

    .line 594
    return-void
.end method

.method static c()Lcom/mologiq/analytics/ad;
    .locals 1

    .prologue
    .line 582
    sget-object v0, Lcom/mologiq/analytics/ad;->z:Lcom/mologiq/analytics/ad;

    return-object v0
.end method

.method private f(Landroid/content/Context;)I
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 155
    invoke-static {p1}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/mologiq/analytics/ac;->q()Landroid/util/SparseArray;

    move-result-object v2

    .line 160
    if-eqz v2, :cond_2

    move v1, v0

    .line 162
    :goto_0
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    .line 172
    :goto_1
    return v1

    .line 164
    :cond_0
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 165
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le v4, v1, :cond_1

    .line 167
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 162
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    goto :goto_1
.end method

.method private g(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Lcom/mologiq/analytics/ac;->s()Ljava/util/List;

    move-result-object v0

    .line 182
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 183
    if-eqz v0, :cond_0

    .line 185
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 190
    :cond_0
    return-object v1

    .line 185
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/k;

    .line 187
    invoke-virtual {v0}, Lcom/mologiq/analytics/k;->b()Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 819
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->s:Ljava/util/List;

    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .prologue
    .line 840
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected a()Ljava/lang/String;
    .locals 8

    .prologue
    .line 233
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 236
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 237
    const-string v0, "product"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v0, "androidadvertiserid"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v0, "androidadvertiseridoptout"

    .line 240
    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->o()Z

    move-result v3

    .line 239
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 241
    const-string v0, "androidid"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->p()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->s:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mologiq/analytics/ad;->s:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 245
    const-string v0, "installedapps"

    new-instance v3, Lorg/json/JSONArray;

    .line 246
    iget-object v4, p0, Lcom/mologiq/analytics/ad;->s:Ljava/util/List;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 245
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 252
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 253
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    const-string v0, "classifications"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 269
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 270
    const-string v3, "os"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 271
    const-string v3, "model"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 272
    const-string v3, "device"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    const-string v3, "manufacturer"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->q()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 274
    const-string v3, "brand"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->j()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 275
    const-string v3, "timezone"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->r()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 276
    const-string v3, "timezoneId"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->s()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v3, "country_code"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v3, "device_resolution"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    const-string v3, "language"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    const-string v3, "carrier"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->B()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    const-string v3, "DeviceInfo"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 283
    const-string v0, "DeviceEvent"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 286
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 287
    const-string v3, "latitude"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->l()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 288
    const-string v3, "longitude"

    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->m()D

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 289
    const-string v3, "LocationInfo"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 253
    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 255
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 256
    const-string v6, "classificationid"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 258
    const-string v6, "count"

    .line 259
    iget-object v7, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 258
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 261
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0
.end method

.method a(D)V
    .locals 0
    .parameter

    .prologue
    .line 673
    iput-wide p1, p0, Lcom/mologiq/analytics/ad;->q:D

    .line 674
    return-void
.end method

.method public a(J)V
    .locals 0
    .parameter

    .prologue
    .line 794
    iput-wide p1, p0, Lcom/mologiq/analytics/ad;->v:J

    .line 795
    return-void
.end method

.method public a(Lcom/mologiq/analytics/af;)V
    .locals 0
    .parameter

    .prologue
    .line 774
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->p:Lcom/mologiq/analytics/af;

    .line 775
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 8
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 304
    if-eqz p1, :cond_19

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_19

    .line 306
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 307
    const-string v2, "core"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 310
    const-string v2, "core"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 311
    const-string v2, "DeviceEvent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_19

    .line 314
    const-string v2, "DeviceEvent"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 317
    const-string v0, "product"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 320
    const-string v0, "product"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-virtual {p0, v0}, Lcom/mologiq/analytics/ad;->b(Ljava/lang/String;)V

    .line 323
    :cond_0
    const-string v0, "androidadvertiserid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 326
    const-string v0, "androidadvertiserid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 325
    invoke-virtual {p0, v0}, Lcom/mologiq/analytics/ad;->i(Ljava/lang/String;)V

    .line 329
    :cond_1
    const-string v0, "androidadvertiseridout"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 332
    const-string v0, "androidadvertiseridoptout"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 331
    invoke-virtual {p0, v0}, Lcom/mologiq/analytics/ad;->a(Z)V

    .line 336
    :cond_2
    const-string v0, "androidid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 339
    const-string v0, "androidid"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    invoke-virtual {p0, v0}, Lcom/mologiq/analytics/ad;->j(Ljava/lang/String;)V

    .line 343
    :cond_3
    const-string v0, "installedapps"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 346
    const-string v0, "installedapps"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 347
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v0, v1

    .line 349
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 348
    if-lt v0, v5, :cond_1a

    .line 355
    iput-object v4, p0, Lcom/mologiq/analytics/ad;->s:Ljava/util/List;

    .line 359
    :cond_4
    const-string v0, "classifications"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 362
    const-string v0, "classifications"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 363
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    move v0, v1

    .line 365
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    .line 364
    if-lt v0, v5, :cond_1b

    .line 375
    iput-object v4, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    .line 379
    :cond_5
    const-string v0, "DeviceInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 382
    const-string v0, "DeviceInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 385
    const-string v3, "os"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 388
    const-string v3, "os"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 387
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->c(Ljava/lang/String;)V

    .line 391
    :cond_6
    const-string v3, "model"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 394
    const-string v3, "model"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->d(Ljava/lang/String;)V

    .line 397
    :cond_7
    const-string v3, "device"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 400
    const-string v3, "device"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 399
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->e(Ljava/lang/String;)V

    .line 403
    :cond_8
    const-string v3, "manufacturer"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    .line 406
    const-string v3, "manufacturer"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 405
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->k(Ljava/lang/String;)V

    .line 409
    :cond_9
    const-string v3, "brand"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 412
    const-string v3, "brand"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->g(Ljava/lang/String;)V

    .line 415
    :cond_a
    const-string v3, "timezone"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    .line 418
    const-string v3, "timezone"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 417
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->l(Ljava/lang/String;)V

    .line 421
    :cond_b
    const-string v3, "timezoneId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 424
    const-string v3, "timezoneId"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->m(Ljava/lang/String;)V

    .line 427
    :cond_c
    const-string v3, "country_code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    .line 430
    const-string v3, "country_code"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 429
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->n(Ljava/lang/String;)V

    .line 433
    :cond_d
    const-string v3, "device_resolution"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e

    .line 436
    const-string v3, "device_resolution"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 435
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->o(Ljava/lang/String;)V

    .line 439
    :cond_e
    const-string v3, "language"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 442
    const-string v3, "language"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 441
    invoke-virtual {p0, v3}, Lcom/mologiq/analytics/ad;->h(Ljava/lang/String;)V

    .line 445
    :cond_f
    const-string v3, "carrier"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 448
    const-string v3, "carrier"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    invoke-virtual {p0, v0}, Lcom/mologiq/analytics/ad;->p(Ljava/lang/String;)V

    .line 454
    :cond_10
    const-string v0, "LocationInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 457
    const-string v0, "LocationInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 460
    const-string v3, "latitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 463
    const-string v3, "latitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 462
    invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/ad;->a(D)V

    .line 467
    :cond_11
    const-string v3, "longitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 470
    const-string v3, "longitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 469
    invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/ad;->b(D)V

    .line 475
    :cond_12
    const-string v3, "locationAltitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 478
    const-string v3, "locationAltitude"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 477
    invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/ad;->c(D)V

    .line 481
    :cond_13
    const-string v3, "locationTimestamp"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    .line 484
    const-string v3, "locationTimestamp"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 483
    invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/ad;->a(J)V

    .line 487
    :cond_14
    const-string v3, "locationAccuracy"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_15

    .line 490
    const-string v3, "locationAccuracy"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 489
    invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/ad;->d(D)V

    .line 493
    :cond_15
    const-string v3, "locationSpeed"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_16

    .line 496
    const-string v3, "locationSpeed"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 495
    invoke-virtual {p0, v3, v4}, Lcom/mologiq/analytics/ad;->e(D)V

    .line 501
    :cond_16
    const-string v0, "NetworkInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 504
    const-string v0, "NetworkInfo"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 505
    new-instance v2, Lcom/mologiq/analytics/af;

    invoke-direct {v2, p0}, Lcom/mologiq/analytics/af;-><init>(Lcom/mologiq/analytics/ad;)V

    .line 507
    const-string v3, "wificurrent"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_17

    .line 510
    const-string v3, "wificurrent"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 512
    new-instance v4, Lcom/mologiq/analytics/aj;

    invoke-direct {v4}, Lcom/mologiq/analytics/aj;-><init>()V

    .line 515
    const-string v5, "ssid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 514
    invoke-virtual {v4, v3}, Lcom/mologiq/analytics/aj;->a(Ljava/lang/String;)V

    .line 517
    invoke-virtual {v2, v4}, Lcom/mologiq/analytics/af;->a(Lcom/mologiq/analytics/aj;)V

    .line 521
    :cond_17
    const-string v3, "wifilist"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 524
    const-string v3, "wifilist"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 525
    if-eqz v0, :cond_18

    .line 527
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_18

    .line 529
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 531
    :goto_2
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 530
    if-lt v1, v4, :cond_1c

    .line 543
    invoke-virtual {v2, v3}, Lcom/mologiq/analytics/af;->a(Ljava/util/List;)V

    .line 547
    :cond_18
    invoke-virtual {p0, v2}, Lcom/mologiq/analytics/ad;->a(Lcom/mologiq/analytics/af;)V

    .line 555
    :cond_19
    return-void

    .line 352
    :cond_1a
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 351
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 349
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 368
    :cond_1b
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 370
    const-string v6, "classificationid"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 371
    const-string v7, "count"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 369
    invoke-interface {v4, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 534
    :cond_1c
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 535
    new-instance v5, Lcom/mologiq/analytics/aj;

    invoke-direct {v5}, Lcom/mologiq/analytics/aj;-><init>()V

    .line 538
    const-string v6, "ssid"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 537
    invoke-virtual {v5, v4}, Lcom/mologiq/analytics/aj;->a(Ljava/lang/String;)V

    .line 539
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 531
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 824
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->s:Ljava/util/List;

    .line 825
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 835
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    .line 836
    return-void
.end method

.method public a(Z)V
    .locals 0
    .parameter

    .prologue
    .line 704
    iput-boolean p1, p0, Lcom/mologiq/analytics/ad;->c:Z

    .line 705
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 195
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 198
    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->v()Lcom/mologiq/analytics/af;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->v()Lcom/mologiq/analytics/af;

    move-result-object v0

    .line 201
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 203
    invoke-virtual {v0}, Lcom/mologiq/analytics/af;->b()Lcom/mologiq/analytics/aj;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 205
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 206
    const-string v4, "ssid"

    .line 207
    invoke-virtual {v0}, Lcom/mologiq/analytics/af;->b()Lcom/mologiq/analytics/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mologiq/analytics/aj;->a()Ljava/lang/String;

    move-result-object v5

    .line 206
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 208
    const-string v4, "wificurrent"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    :cond_0
    invoke-virtual {v0}, Lcom/mologiq/analytics/af;->a()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 213
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 215
    invoke-virtual {v0}, Lcom/mologiq/analytics/af;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 214
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 222
    const-string v0, "wifilist"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 225
    :cond_1
    const-string v0, "NetworkInfo"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 228
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 215
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/aj;

    .line 217
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 218
    const-string v6, "ssid"

    .line 219
    invoke-virtual {v0}, Lcom/mologiq/analytics/aj;->a()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 220
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0
.end method

.method b(D)V
    .locals 0
    .parameter

    .prologue
    .line 683
    iput-wide p1, p0, Lcom/mologiq/analytics/ad;->r:D

    .line 684
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->a:Ljava/lang/String;

    .line 604
    return-void
.end method

.method public c(D)V
    .locals 0
    .parameter

    .prologue
    .line 784
    iput-wide p1, p0, Lcom/mologiq/analytics/ad;->u:D

    .line 785
    return-void
.end method

.method public c(Landroid/content/Context;)V
    .locals 5
    .parameter

    .prologue
    .line 560
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcom/mologiq/analytics/ag;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 561
    const-string v1, "line.separator"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".567ac581-718b-42d4-82d3-0daa55e13da7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 560
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 563
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 564
    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->a()Ljava/lang/String;

    move-result-object v2

    .line 565
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 567
    const-string v3, "core"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 569
    :cond_0
    invoke-virtual {p0}, Lcom/mologiq/analytics/ad;->b()Ljava/lang/String;

    move-result-object v2

    .line 570
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 572
    const-string v3, "extra"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 575
    :cond_1
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mologiq/analytics/ag;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 613
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->e:Ljava/lang/String;

    .line 614
    return-void
.end method

.method public d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;
    .locals 8
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p1}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v2

    .line 67
    new-instance v3, Lcom/mologiq/analytics/ae;

    invoke-direct {v3, p0}, Lcom/mologiq/analytics/ae;-><init>(Lcom/mologiq/analytics/ad;)V

    .line 69
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->t()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ae;->a(I)V

    .line 71
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->t()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 73
    invoke-direct {p0, p1}, Lcom/mologiq/analytics/ad;->g(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ae;->b(Ljava/util/List;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/mologiq/analytics/ad;->f(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ae;->b(I)V

    .line 75
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->r()Lcom/mologiq/analytics/r;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 80
    invoke-virtual {v0}, Lcom/mologiq/analytics/r;->a()Ljava/lang/String;

    move-result-object v1

    .line 79
    invoke-virtual {v3, v1}, Lcom/mologiq/analytics/ae;->a(Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 84
    invoke-virtual {v0}, Lcom/mologiq/analytics/r;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 83
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    .line 101
    sget-boolean v0, Lcom/mologiq/analytics/ag;->b:Z

    .line 100
    invoke-static {v4, v0}, Lcom/mologiq/analytics/ag;->a(Ljava/util/Map;Z)Ljava/util/Map;

    move-result-object v0

    .line 103
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 105
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 111
    invoke-virtual {v3, v1}, Lcom/mologiq/analytics/ae;->a(Ljava/util/List;)V

    .line 116
    :cond_1
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->t()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 118
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ae;->a(Ljava/util/Map;)V

    .line 121
    :cond_2
    invoke-virtual {v2}, Lcom/mologiq/analytics/ac;->t()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_3

    .line 123
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->s:Ljava/util/List;

    invoke-virtual {v3, v0}, Lcom/mologiq/analytics/ae;->c(Ljava/util/List;)V

    .line 126
    :cond_3
    return-object v3

    .line 84
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/q;

    .line 86
    invoke-virtual {v0}, Lcom/mologiq/analytics/q;->a()I

    move-result v6

    .line 87
    iget-object v1, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    .line 88
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    iget-object v1, p0, Lcom/mologiq/analytics/ad;->t:Ljava/util/Map;

    .line 91
    invoke-virtual {v0}, Lcom/mologiq/analytics/q;->a()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 90
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 92
    invoke-virtual {v0}, Lcom/mologiq/analytics/q;->b()I

    move-result v0

    .line 93
    sub-int v0, v1, v0

    .line 95
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 96
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 95
    invoke-interface {v4, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 106
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 587
    new-instance v0, Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/mologiq/analytics/ad;->q:D

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/mologiq/analytics/ad;->r:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d(D)V
    .locals 0
    .parameter

    .prologue
    .line 804
    iput-wide p1, p0, Lcom/mologiq/analytics/ad;->w:D

    .line 805
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 623
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->f:Ljava/lang/String;

    .line 624
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 598
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->a:Ljava/lang/String;

    return-object v0
.end method

.method e(Landroid/content/Context;)Ljava/util/Map;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/mologiq/analytics/j;",
            ">;"
        }
    .end annotation

    .prologue
    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 135
    invoke-static {p1}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lcom/mologiq/analytics/ac;->q()Landroid/util/SparseArray;

    move-result-object v3

    .line 139
    if-eqz v3, :cond_0

    .line 141
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 149
    :cond_0
    return-object v2

    .line 143
    :cond_1
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/j;

    .line 144
    invoke-virtual {v0}, Lcom/mologiq/analytics/j;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public e(D)V
    .locals 0
    .parameter

    .prologue
    .line 814
    iput-wide p1, p0, Lcom/mologiq/analytics/ad;->x:D

    .line 815
    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 633
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->g:Ljava/lang/String;

    .line 634
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 643
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->y:Ljava/lang/String;

    .line 644
    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->i:Ljava/lang/String;

    .line 654
    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 628
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 663
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->n:Ljava/lang/String;

    .line 664
    return-void
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 638
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->y:Ljava/lang/String;

    return-object v0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 693
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->b:Ljava/lang/String;

    .line 694
    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->i:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 714
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->d:Ljava/lang/String;

    .line 715
    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    .prologue
    .line 658
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->n:Ljava/lang/String;

    return-object v0
.end method

.method public k(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 724
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->h:Ljava/lang/String;

    .line 725
    return-void
.end method

.method l()D
    .locals 2

    .prologue
    .line 668
    iget-wide v0, p0, Lcom/mologiq/analytics/ad;->q:D

    return-wide v0
.end method

.method public l(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 734
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->j:Ljava/lang/String;

    .line 735
    return-void
.end method

.method m()D
    .locals 2

    .prologue
    .line 678
    iget-wide v0, p0, Lcom/mologiq/analytics/ad;->r:D

    return-wide v0
.end method

.method public m(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 744
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->k:Ljava/lang/String;

    .line 745
    return-void
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->b:Ljava/lang/String;

    return-object v0
.end method

.method public n(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 754
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->l:Ljava/lang/String;

    .line 755
    return-void
.end method

.method public o(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 764
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->m:Ljava/lang/String;

    .line 765
    return-void
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 698
    iget-boolean v0, p0, Lcom/mologiq/analytics/ad;->c:Z

    return v0
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 709
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->d:Ljava/lang/String;

    return-object v0
.end method

.method public p(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/mologiq/analytics/ad;->o:Ljava/lang/String;

    .line 846
    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->h:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 729
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->j:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 739
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->k:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 749
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->l:Ljava/lang/String;

    return-object v0
.end method

.method public u()Ljava/lang/String;
    .locals 1

    .prologue
    .line 759
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->m:Ljava/lang/String;

    return-object v0
.end method

.method public v()Lcom/mologiq/analytics/af;
    .locals 1

    .prologue
    .line 769
    iget-object v0, p0, Lcom/mologiq/analytics/ad;->p:Lcom/mologiq/analytics/af;

    return-object v0
.end method

.method public w()D
    .locals 2

    .prologue
    .line 779
    iget-wide v0, p0, Lcom/mologiq/analytics/ad;->u:D

    return-wide v0
.end method

.method public x()J
    .locals 2

    .prologue
    .line 789
    iget-wide v0, p0, Lcom/mologiq/analytics/ad;->v:J

    return-wide v0
.end method

.method public y()D
    .locals 2

    .prologue
    .line 799
    iget-wide v0, p0, Lcom/mologiq/analytics/ad;->w:D

    return-wide v0
.end method

.method public z()D
    .locals 2

    .prologue
    .line 809
    iget-wide v0, p0, Lcom/mologiq/analytics/ad;->x:D

    return-wide v0
.end method
