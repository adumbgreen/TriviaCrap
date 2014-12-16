.class public Lcom/inmobi/commons/uid/UID;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FACEBOOK_ID:Ljava/lang/String; = "FBA"

.field public static final FBA_DEF:Z = false

.field public static final LID_DEF:Z = true

.field public static final LOGIN_ID:Ljava/lang/String; = "LID"

.field public static final LTVE_DEF:Z = true

.field public static final LTV_ID:Ljava/lang/String; = "LTVID"

.field public static final LTV_ID_ENABLE:Ljava/lang/String; = "LTVID"

.field public static final O1_DEF:Z = true

.field public static final ODIN1:Ljava/lang/String; = "O1"

.field public static final SESSION_ID:Ljava/lang/String; = "SID"

.field public static final SID_DEF:Z = true

.field public static final UM5_DEF:Z = true

.field public static final UM5_ID:Ljava/lang/String; = "UM5"

.field private static a:Lcom/inmobi/commons/uid/UID;


# instance fields
.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/inmobi/commons/uid/UID;

    invoke-direct {v0}, Lcom/inmobi/commons/uid/UID;-><init>()V

    sput-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 280
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 288
    invoke-static {p1}, Lcom/inmobi/commons/internal/InternalSDKUtil;->setContext(Landroid/content/Context;)V

    .line 289
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Map;)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 283
    invoke-direct {p0, p1}, Lcom/inmobi/commons/uid/UID;-><init>(Landroid/content/Context;)V

    .line 284
    invoke-virtual {p0, p2}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    .line 285
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 26
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 27
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 29
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 30
    iput-boolean v1, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 292
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/uid/UID;->setFromMap(Ljava/util/Map;)V

    .line 293
    return-void
.end method

.method private a(ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    .line 125
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 126
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 128
    if-gtz v0, :cond_6

    .line 129
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_0

    .line 130
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_1

    .line 137
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 138
    if-eqz v0, :cond_1

    .line 140
    const-string v3, "FBA"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    .line 144
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 147
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_3

    .line 176
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_3

    .line 179
    const-string v1, "LID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :cond_3
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_4

    .line 183
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 184
    if-eqz v0, :cond_4

    .line 186
    const-string v1, "SID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_5

    .line 192
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v0

    .line 193
    if-eqz v0, :cond_5

    .line 195
    const-string v1, "LTVID"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    :cond_5
    return-object v2

    .line 150
    :cond_6
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_7

    .line 152
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    const-string v4, "O1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    :cond_7
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_8

    .line 160
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 161
    if-eqz v3, :cond_8

    .line 163
    const-string v4, "FBA"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    :cond_8
    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    .line 168
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method private b(ILjava/lang/String;)Ljava/util/Map;
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/data/UserInfo;->getDeviceIDMask()I

    move-result v0

    .line 204
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 205
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 207
    if-gtz v0, :cond_6

    .line 208
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v0, :cond_0

    .line 209
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    const-string v3, "O1"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    :cond_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v0, :cond_1

    .line 216
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 217
    if-eqz v0, :cond_1

    .line 218
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 219
    const-string v3, "FBA"

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    .line 223
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 225
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->d:Z

    if-eqz v0, :cond_3

    .line 255
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_LOGIN:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 256
    if-eqz v0, :cond_3

    .line 257
    const-string v1, "LID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_3
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_4

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->c:Z

    if-eqz v0, :cond_4

    .line 261
    invoke-static {}, Lcom/inmobi/commons/data/UserInfo;->getInstance()Lcom/inmobi/commons/data/UserInfo;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/IMIDType;->ID_SESSION:Lcom/inmobi/commons/IMIDType;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/data/UserInfo;->getIDType(Lcom/inmobi/commons/IMIDType;)Ljava/lang/String;

    move-result-object v0

    .line 262
    if-eqz v0, :cond_4

    .line 263
    const-string v1, "SID"

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_4
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_5

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->g:Z

    if-eqz v0, :cond_5

    .line 269
    invoke-static {}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsInitializer;->getRawConfigParams()Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/bootstrapper/AnalyticsConfigParams;->getLTVId()Ljava/lang/Long;

    move-result-object v0

    .line 270
    if-eqz v0, :cond_5

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 272
    const-string v1, "LTVID"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    :cond_5
    return-object v2

    .line 229
    :cond_6
    and-int/lit8 v3, v0, 0x2

    const/4 v4, 0x2

    if-eq v3, v4, :cond_7

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->b:Z

    if-eqz v3, :cond_7

    .line 231
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/commons/uid/UIDHelper;->getODIN1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 233
    invoke-static {v3, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 235
    const-string v4, "O1"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    :cond_7
    and-int/lit8 v3, v0, 0x4

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    iget-boolean v3, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_8

    sget-object v3, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v3, v3, Lcom/inmobi/commons/uid/UID;->e:Z

    if-eqz v3, :cond_8

    .line 239
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getFBId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 240
    if-eqz v3, :cond_8

    .line 241
    invoke-static {v3, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 242
    const-string v4, "FBA"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_8
    and-int/lit8 v0, v0, 0x8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    iget-boolean v0, v0, Lcom/inmobi/commons/uid/UID;->f:Z

    if-eqz v0, :cond_2

    .line 247
    invoke-static {v1}, Lcom/inmobi/commons/uid/UIDHelper;->getAndroidId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/uid/UIDHelper;->getUM5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 249
    invoke-static {v0, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    const-string v1, "UM5"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public static getCommonsUid()Lcom/inmobi/commons/uid/UID;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/commons/uid/UID;->a:Lcom/inmobi/commons/uid/UID;

    return-object v0
.end method


# virtual methods
.method public getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/uid/UID;->b(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 94
    if-eqz p3, :cond_1

    .line 96
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 97
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 98
    if-eqz v1, :cond_0

    .line 99
    invoke-static {v1, p2}, Lcom/inmobi/commons/uid/UIDHelper;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 103
    :cond_1
    invoke-static {v2}, Lcom/inmobi/commons/uid/UIDUtil;->getEncryptedJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultUidMapWithoutXor(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 108
    invoke-direct {p0, p1, p2}, Lcom/inmobi/commons/uid/UID;->a(ILjava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 109
    if-eqz p3, :cond_1

    .line 111
    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 112
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    if-eqz v1, :cond_0

    .line 115
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 119
    :cond_1
    invoke-static {v2}, Lcom/inmobi/commons/uid/UIDUtil;->getJSON(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 71
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/commons/uid/UID;->getDefaultUidMap(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    const-string v0, "commons"

    const-string v1, "Unable to initialize commons."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUidMapWitoutXOR(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 83
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->initialize(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/commons/uid/UID;->getDefaultUidMapWithoutXor(ILjava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string v0, "commons"

    const-string v1, "Unable to initialize commons."

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public isFba()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    return v0
.end method

.method public isLid()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    return v0
.end method

.method public isLtve()Z
    .locals 1

    .prologue
    .line 65
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    return v0
.end method

.method public isO1()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    return v0
.end method

.method public isSid()Z
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    return v0
.end method

.method public isUm5()Z
    .locals 1

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    return v0
.end method

.method public final setFromMap(Ljava/util/Map;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 296
    const-string v0, "O1"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->b:Z

    .line 297
    const-string v0, "SID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->c:Z

    .line 298
    const-string v0, "LID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->d:Z

    .line 299
    const-string v0, "FBA"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->e:Z

    .line 300
    const-string v0, "UM5"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->f:Z

    .line 301
    const-string v0, "LTVID"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getBooleanFromMap(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/commons/uid/UID;->g:Z

    .line 302
    return-void
.end method
