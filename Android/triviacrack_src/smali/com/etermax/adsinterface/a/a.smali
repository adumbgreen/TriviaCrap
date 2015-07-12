.class public Lcom/etermax/adsinterface/a/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final A:Ljava/lang/String;

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:I

.field a:Landroid/content/SharedPreferences;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Lcom/etermax/adsinterface/a/b;

.field private e:Landroid/os/Bundle;

.field private f:Z

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:[Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Z

.field private m:[Ljava/lang/String;

.field private n:I

.field private final o:Ljava/lang/String;

.field private final p:Ljava/lang/String;

.field private final q:Ljava/lang/String;

.field private final r:Ljava/lang/String;

.field private final s:Ljava/lang/String;

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private final v:Ljava/lang/String;

.field private final w:Ljava/lang/String;

.field private final x:Ljava/lang/String;

.field private final y:Ljava/lang/String;

.field private final z:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v0, "name"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->o:Ljava/lang/String;

    .line 45
    const-string v0, "version"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->p:Ljava/lang/String;

    .line 46
    const-string v0, "type"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->q:Ljava/lang/String;

    .line 47
    const-string v0, "view_to_open"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->r:Ljava/lang/String;

    .line 48
    const-string v0, "package_name"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->s:Ljava/lang/String;

    .line 49
    const-string v0, "link"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->t:Ljava/lang/String;

    .line 50
    const-string v0, "if_not_installed"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->u:Ljava/lang/String;

    .line 51
    const-string v0, "content"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->v:Ljava/lang/String;

    .line 52
    const-string v0, "force_wait"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->w:Ljava/lang/String;

    .line 53
    const-string v0, "track_link"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->x:Ljava/lang/String;

    .line 54
    const-string v0, "session"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->y:Ljava/lang/String;

    .line 55
    const-string v0, "lang"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->z:Ljava/lang/String;

    .line 56
    const-string v0, "freq_cap"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->A:Ljava/lang/String;

    .line 57
    const-string v0, "min_memory"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->B:Ljava/lang/String;

    .line 58
    const-string v0, "min_sdk"

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->C:Ljava/lang/String;

    .line 61
    const/4 v0, -0x1

    iput v0, p0, Lcom/etermax/adsinterface/a/a;->D:I

    .line 114
    const-string v0, "min_sdk"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    const-string v0, "min_sdk"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 116
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v0, :cond_0

    .line 117
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Customads sdk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - Minimo soportado: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 121
    :cond_0
    const-string v0, "min_memory"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 122
    const-string v0, "min_memory"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 124
    invoke-virtual {p0, p1}, Lcom/etermax/adsinterface/a/a;->b(Landroid/content/Context;)J

    move-result-wide v4

    const-wide/32 v6, 0xf4240

    div-long/2addr v4, v6

    .line 125
    cmp-long v0, v4, v2

    if-gez v0, :cond_1

    .line 126
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Customads total_memory: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " - Minimo soportado: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_1
    const-string v0, "com.etermax.customads.showtime"

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->a:Landroid/content/SharedPreferences;

    .line 132
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->b:Ljava/lang/String;

    .line 133
    const-string v0, "version"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/adsinterface/a/a;->c:I

    .line 134
    const-string v0, "type"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/etermax/adsinterface/a/b;->valueOf(Ljava/lang/String;)Lcom/etermax/adsinterface/a/b;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->d:Lcom/etermax/adsinterface/a/b;

    .line 136
    const-string v0, "freq_cap"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 137
    const-string v0, "freq_cap"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/etermax/adsinterface/a/a;->n:I

    .line 140
    :cond_2
    const-string v0, "track_link"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 141
    const-string v0, "track_link"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    .line 144
    :cond_3
    const-string v0, "link"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 145
    const-string v0, "link"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    .line 148
    :cond_4
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    const-string v2, "{unique_id}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    const-string v2, "{limit_tracking}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    const-string v2, "{unique_id}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    const-string v2, "{limit_tracking}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_6
    const/4 v0, 0x1

    .line 151
    :goto_0
    if-eqz v0, :cond_8

    .line 154
    invoke-static {p1}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-virtual {v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    if-eqz v0, :cond_c

    const-string v0, "true"

    .line 158
    :goto_1
    iget-object v3, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    if-eqz v3, :cond_7

    .line 159
    iget-object v3, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    const-string v4, "{unique_id}"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    .line 160
    iget-object v3, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    const-string v4, "{limit_tracking}"

    invoke-virtual {v3, v4, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    .line 163
    :cond_7
    iget-object v3, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 164
    iget-object v3, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    const-string v4, "{unique_id}"

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    .line 165
    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    const-string v3, "{limit_tracking}"

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    .line 169
    :cond_8
    const-string v0, "package_name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 170
    const-string v0, "package_name"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->j:Ljava/lang/String;

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/a/l;

    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/etermax/adsinterface/a/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    .line 174
    :cond_9
    const-string v0, "view_to_open"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 175
    const-string v0, "view_to_open"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->k:Ljava/lang/String;

    .line 178
    :cond_a
    const-string v0, "if_not_installed"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 179
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_d

    .line 180
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->i:[Ljava/lang/String;

    move v0, v1

    .line 181
    :goto_2
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_d

    .line 182
    iget-object v3, p0, Lcom/etermax/adsinterface/a/a;->i:[Ljava/lang/String;

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    .line 181
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_b
    move v0, v1

    .line 148
    goto/16 :goto_0

    .line 156
    :cond_c
    const-string v0, "false"

    goto/16 :goto_1

    .line 186
    :cond_d
    const-string v0, "content"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 187
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/etermax/adsinterface/a/a;->e:Landroid/os/Bundle;

    .line 189
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 190
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 191
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 192
    iget-object v4, p0, Lcom/etermax/adsinterface/a/a;->e:Landroid/os/Bundle;

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 195
    :cond_e
    const-string v0, "force_wait"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 196
    const-string v0, "force_wait"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/adsinterface/a/a;->f:Z

    .line 199
    :cond_f
    const-string v0, "session"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 200
    const-string v0, "session"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/etermax/adsinterface/a/a;->l:Z

    .line 203
    :cond_10
    const-string v0, "lang"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_11

    .line 205
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/etermax/adsinterface/a/a;->m:[Ljava/lang/String;

    .line 206
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_11

    .line 207
    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->m:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 210
    :cond_11
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/a$1;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/etermax/adsinterface/a/a;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 69
    if-nez p2, :cond_0

    .line 106
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/etermax/adsinterface/a/a$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/etermax/adsinterface/a/a$1;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/etermax/adsinterface/a/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 317
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 320
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    return v0

    .line 322
    :catch_0
    move-exception v0

    .line 323
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private n()Ljava/lang/String;
    .locals 2

    .prologue
    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/etermax/adsinterface/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/etermax/adsinterface/a/a;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private o()J
    .locals 7

    .prologue
    .line 369
    const-string v0, "/proc/meminfo"

    .line 374
    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 375
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v0, 0x2000

    invoke-direct {v2, v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 376
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .line 377
    const-string v0, "\\s+"

    invoke-virtual {v1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 378
    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_0

    aget-object v5, v3, v0

    .line 379
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/etermax/a/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 382
    :cond_0
    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    .line 383
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 388
    :goto_1
    return-wide v0

    .line 386
    :catch_0
    move-exception v0

    .line 388
    const-wide/16 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 2
    .parameter

    .prologue
    .line 281
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->a:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-direct {p0}, Lcom/etermax/adsinterface/a/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 282
    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 290
    const/4 v0, 0x1

    .line 292
    iget v2, p0, Lcom/etermax/adsinterface/a/a;->n:I

    if-lez v2, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/a;->j()J

    move-result-wide v2

    .line 294
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    iget v4, p0, Lcom/etermax/adsinterface/a/a;->n:I

    const v5, 0x36ee80

    mul-int/2addr v4, v5

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    move v0, v1

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 297
    :cond_1
    iget v2, p0, Lcom/etermax/adsinterface/a/a;->n:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 298
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/a;->i()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 299
    goto :goto_0

    .line 303
    :cond_2
    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->j:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 304
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/a/l;

    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->j:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/etermax/adsinterface/a/l;->b(Ljava/lang/String;)Z

    move-result v0

    .line 306
    :cond_3
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->i:[Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 307
    iget-object v3, p0, Lcom/etermax/adsinterface/a/a;->i:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_0

    aget-object v5, v3, v2

    .line 308
    invoke-direct {p0, v5, p1}, Lcom/etermax/adsinterface/a/a;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v0, v1

    .line 309
    goto :goto_0

    .line 307
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public b()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/etermax/adsinterface/a/a;->c:I

    return v0
.end method

.method public b(Landroid/content/Context;)J
    .locals 2
    .parameter
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 357
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 358
    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 359
    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 360
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 361
    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 364
    :goto_0
    return-wide v0

    :cond_0
    invoke-direct {p0}, Lcom/etermax/adsinterface/a/a;->o()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method public e()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->e:Landroid/os/Bundle;

    return-object v0
.end method

.method public f()Lcom/etermax/adsinterface/a/b;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->d:Lcom/etermax/adsinterface/a/b;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->k:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 255
    iget-boolean v0, p0, Lcom/etermax/adsinterface/a/a;->f:Z

    return v0
.end method

.method public i()Z
    .locals 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/etermax/adsinterface/a/a;->n()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 274
    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/etermax/adsinterface/a/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 275
    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->a:Landroid/content/SharedPreferences;

    invoke-direct {p0}, Lcom/etermax/adsinterface/a/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0, v1}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 277
    :cond_0
    return-wide v0
.end method

.method public k()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Lcom/etermax/adsinterface/a/a;->l:Z

    return v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    .prologue
    .line 340
    iget-object v0, p0, Lcom/etermax/adsinterface/a/a;->m:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 341
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 342
    iget-object v2, p0, Lcom/etermax/adsinterface/a/a;->m:[Ljava/lang/String;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 343
    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 348
    :goto_1
    return-object v0

    .line 342
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 348
    :cond_1
    invoke-virtual {p0}, Lcom/etermax/adsinterface/a/a;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 352
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
