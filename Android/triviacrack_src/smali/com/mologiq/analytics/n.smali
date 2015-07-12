.class public Lcom/mologiq/analytics/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/mologiq/analytics/ad;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    .line 61
    invoke-static {p1}, Lcom/mologiq/analytics/ac;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ac;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lcom/mologiq/analytics/ac;->t()I

    move-result v0

    if-nez v0, :cond_0

    .line 65
    const-string v0, ""

    .line 177
    :goto_0
    return-object v0

    .line 69
    :cond_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 70
    const-string v0, "timestamp"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 71
    const-string v0, "product"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 72
    const-string v0, "p"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->c:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string v0, "v"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string v0, "d"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string v0, "androidadvertiserid"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string v0, "androidadvertiseridoptout"

    .line 77
    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->o()Z

    move-result v3

    .line 76
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 78
    const-string v0, "androidid"

    .line 79
    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->p()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 80
    const-string v0, "os"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    const-string v0, "model"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 82
    const-string v0, "location"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 83
    const-string v0, "locationAltitude"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->w()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 84
    const-string v0, "locationTimestamp"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->x()J

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 85
    const-string v0, "locationAccuracy"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->y()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 86
    const-string v0, "locationSpeed"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->z()D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 88
    const-string v0, "device"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    iget-object v0, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v0}, Lcom/mologiq/analytics/ad;->v()Lcom/mologiq/analytics/af;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 91
    iget-object v0, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v0}, Lcom/mologiq/analytics/ad;->v()Lcom/mologiq/analytics/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/af;->b()Lcom/mologiq/analytics/aj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 94
    const-string v3, "ssid"

    iget-object v4, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v4}, Lcom/mologiq/analytics/ad;->v()Lcom/mologiq/analytics/af;

    move-result-object v4

    .line 95
    invoke-virtual {v4}, Lcom/mologiq/analytics/af;->b()Lcom/mologiq/analytics/aj;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mologiq/analytics/aj;->a()Ljava/lang/String;

    move-result-object v4

    .line 94
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 96
    const-string v3, "wificurrent"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    :cond_1
    iget-object v0, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v0}, Lcom/mologiq/analytics/ad;->v()Lcom/mologiq/analytics/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/af;->a()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 100
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 101
    iget-object v0, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v0}, Lcom/mologiq/analytics/ad;->v()Lcom/mologiq/analytics/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mologiq/analytics/af;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    .line 107
    const-string v0, "wifilist"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    :cond_2
    const-string v0, "api"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v0, "brand"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v0, "language"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->k()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v0, "countryCode"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->t()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v0, "timezone"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->r()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    const-string v0, "carrier"

    iget-object v3, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v3}, Lcom/mologiq/analytics/ad;->B()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    invoke-virtual {v1}, Lcom/mologiq/analytics/ac;->i()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    invoke-virtual {v0, p1}, Lcom/mologiq/analytics/ad;->d(Landroid/content/Context;)Lcom/mologiq/analytics/ae;

    move-result-object v1

    .line 124
    if-eqz v1, :cond_6

    .line 127
    const-string v0, "policy"

    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->a()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 128
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 129
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 131
    new-instance v0, Lorg/json/JSONArray;

    .line 132
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->b()Ljava/util/List;

    move-result-object v3

    .line 131
    invoke-direct {v0, v3}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 133
    const-string v3, "audience"

    invoke-virtual {v2, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    :cond_3
    const-string v0, "appcount"

    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->c()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 137
    const-string v0, "meanversion"

    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->e()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 139
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 141
    const-string v0, "campaigns"

    .line 142
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->e()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 141
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 145
    :cond_4
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->g()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 146
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_5

    .line 149
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 151
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 150
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_8

    .line 162
    const-string v0, "classifications"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    :cond_5
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 169
    const-string v0, "appids"

    .line 170
    new-instance v3, Lorg/json/JSONArray;

    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->f()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 169
    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 101
    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/aj;

    .line 103
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 104
    const-string v6, "ssid"

    invoke-virtual {v0}, Lcom/mologiq/analytics/aj;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_1

    .line 151
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 153
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 154
    const-string v6, "classificationid"

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    const-string v6, "count"

    .line 157
    invoke-virtual {v1}, Lcom/mologiq/analytics/ae;->g()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 156
    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2
.end method

.method public a(Lcom/mologiq/analytics/ad;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/mologiq/analytics/n;->d:Lcom/mologiq/analytics/ad;

    .line 56
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    iput-object p1, p0, Lcom/mologiq/analytics/n;->a:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 35
    iput-object p1, p0, Lcom/mologiq/analytics/n;->b:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput-object p1, p0, Lcom/mologiq/analytics/n;->c:Ljava/lang/String;

    .line 46
    return-void
.end method
