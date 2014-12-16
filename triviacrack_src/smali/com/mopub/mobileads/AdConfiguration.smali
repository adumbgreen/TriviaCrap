.class public Lcom/mopub/mobileads/AdConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:Ljava/lang/String;

.field private final f:I

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:J

.field private q:I

.field private r:I

.field private s:Ljava/lang/Integer;

.field private t:I

.field private u:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-direct {p0}, Lcom/mopub/mobileads/AdConfiguration;->x()V

    .line 80
    if-eqz p1, :cond_1

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_0

    :goto_0
    invoke-static {v0}, Lcom/mopub/common/util/Utils;->sha1(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->b:Ljava/lang/String;

    .line 84
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->c:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->d:Ljava/lang/String;

    .line 92
    :goto_1
    invoke-static {}, Lcom/mopub/common/util/Utils;->generateUniqueId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdConfiguration;->g:J

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->e:Ljava/lang/String;

    .line 94
    invoke-static {}, Lcom/mopub/common/util/VersionCode;->currentApiLevel()Lcom/mopub/common/util/VersionCode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mopub/common/util/VersionCode;->getApiLevel()I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdConfiguration;->f:I

    .line 95
    const-string v0, "3.2.2"

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->a:Ljava/lang/String;

    .line 96
    return-void

    .line 82
    :cond_0
    const-string v0, ""

    goto :goto_0

    .line 87
    :cond_1
    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->b:Ljava/lang/String;

    .line 88
    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->c:Ljava/lang/String;

    .line 89
    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->d:Ljava/lang/String;

    goto :goto_1
.end method

.method static a(Ljava/util/Map;)Lcom/mopub/mobileads/AdConfiguration;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/mopub/mobileads/AdConfiguration;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 64
    if-nez p0, :cond_0

    move-object v0, v1

    .line 74
    :goto_0
    return-object v0

    .line 68
    :cond_0
    const-string v0, "Ad-Configuration"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 70
    instance-of v2, v0, Lcom/mopub/mobileads/AdConfiguration;

    if-eqz v2, :cond_1

    .line 71
    check-cast v0, Lcom/mopub/mobileads/AdConfiguration;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method private x()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 271
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdConfiguration;->g:J

    .line 272
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->i:Ljava/lang/String;

    .line 273
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->h:Ljava/lang/String;

    .line 274
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->j:Ljava/lang/String;

    .line 275
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->k:Ljava/lang/String;

    .line 276
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->l:Ljava/lang/String;

    .line 277
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->m:Ljava/lang/String;

    .line 278
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->o:Ljava/lang/String;

    .line 279
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdConfiguration;->p:J

    .line 280
    iput v3, p0, Lcom/mopub/mobileads/AdConfiguration;->q:I

    .line 281
    iput v3, p0, Lcom/mopub/mobileads/AdConfiguration;->r:I

    .line 282
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->s:Ljava/lang/Integer;

    .line 283
    const v0, 0xea60

    iput v0, p0, Lcom/mopub/mobileads/AdConfiguration;->t:I

    .line 284
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->n:Ljava/lang/String;

    .line 285
    iput-object v2, p0, Lcom/mopub/mobileads/AdConfiguration;->u:Ljava/lang/String;

    .line 286
    return-void
.end method


# virtual methods
.method a()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Lcom/mopub/mobileads/AdConfiguration;->x()V

    .line 100
    return-void
.end method

.method a(I)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 227
    iput p1, p0, Lcom/mopub/mobileads/AdConfiguration;->t:I

    .line 228
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/mopub/mobileads/AdConfiguration;->i:Ljava/lang/String;

    .line 154
    return-void
.end method

.method a(Lorg/apache/http/HttpResponse;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 103
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->j:Ljava/lang/String;

    .line 106
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->NETWORK_TYPE:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->k:Ljava/lang/String;

    .line 109
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->REDIRECT_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->l:Ljava/lang/String;

    .line 112
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->CLICKTHROUGH_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->m:Ljava/lang/String;

    .line 115
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->FAIL_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->n:Ljava/lang/String;

    .line 118
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->IMPRESSION_URL:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->o:Ljava/lang/String;

    .line 121
    invoke-static {}, Lcom/mopub/common/util/DateAndTime;->now()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mopub/mobileads/AdConfiguration;->p:J

    .line 124
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->WIDTH:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0, v2}, Lcom/mopub/mobileads/util/HttpResponses;->extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;I)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdConfiguration;->q:I

    .line 125
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->HEIGHT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0, v2}, Lcom/mopub/mobileads/util/HttpResponses;->extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;I)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdConfiguration;->r:I

    .line 128
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->AD_TIMEOUT:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractIntegerHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->s:Ljava/lang/Integer;

    .line 131
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    invoke-virtual {v0}, Lcom/mopub/common/util/ResponseHeader;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/http/HttpResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    iput v2, p0, Lcom/mopub/mobileads/AdConfiguration;->t:I

    .line 141
    :goto_0
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->DSP_CREATIVE_ID:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0}, Lcom/mopub/mobileads/util/HttpResponses;->extractHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->u:Ljava/lang/String;

    .line 142
    return-void

    .line 134
    :cond_0
    sget-object v0, Lcom/mopub/common/util/ResponseHeader;->REFRESH_TIME:Lcom/mopub/common/util/ResponseHeader;

    invoke-static {p1, v0, v2}, Lcom/mopub/mobileads/util/HttpResponses;->extractIntHeader(Lorg/apache/http/HttpResponse;Lcom/mopub/common/util/ResponseHeader;I)I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/mopub/mobileads/AdConfiguration;->t:I

    .line 135
    iget v0, p0, Lcom/mopub/mobileads/AdConfiguration;->t:I

    const/16 v1, 0x2710

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/mopub/mobileads/AdConfiguration;->t:I

    goto :goto_0
.end method

.method b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->i:Ljava/lang/String;

    return-object v0
.end method

.method b(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 161
    iput-object p1, p0, Lcom/mopub/mobileads/AdConfiguration;->h:Ljava/lang/String;

    .line 162
    return-void
.end method

.method c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->h:Ljava/lang/String;

    return-object v0
.end method

.method c(Ljava/lang/String;)V
    .locals 0
    .parameter
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 190
    iput-object p1, p0, Lcom/mopub/mobileads/AdConfiguration;->m:Ljava/lang/String;

    .line 191
    return-void
.end method

.method d()J
    .locals 2

    .prologue
    .line 165
    iget-wide v0, p0, Lcom/mopub/mobileads/AdConfiguration;->g:J

    return-wide v0
.end method

.method d(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/mopub/mobileads/AdConfiguration;->n:Ljava/lang/String;

    .line 199
    return-void
.end method

.method e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->j:Ljava/lang/String;

    return-object v0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 177
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->k:Ljava/lang/String;

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->l:Ljava/lang/String;

    return-object v0
.end method

.method h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->m:Ljava/lang/String;

    return-object v0
.end method

.method i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->n:Ljava/lang/String;

    return-object v0
.end method

.method j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->o:Ljava/lang/String;

    return-object v0
.end method

.method k()J
    .locals 2

    .prologue
    .line 206
    iget-wide v0, p0, Lcom/mopub/mobileads/AdConfiguration;->p:J

    return-wide v0
.end method

.method l()I
    .locals 1

    .prologue
    .line 210
    iget v0, p0, Lcom/mopub/mobileads/AdConfiguration;->q:I

    return v0
.end method

.method m()I
    .locals 1

    .prologue
    .line 214
    iget v0, p0, Lcom/mopub/mobileads/AdConfiguration;->r:I

    return v0
.end method

.method n()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->s:Ljava/lang/Integer;

    return-object v0
.end method

.method o()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lcom/mopub/mobileads/AdConfiguration;->t:I

    return v0
.end method

.method p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->u:Ljava/lang/String;

    return-object v0
.end method

.method q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->b:Ljava/lang/String;

    return-object v0
.end method

.method r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->c:Ljava/lang/String;

    return-object v0
.end method

.method s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->d:Ljava/lang/String;

    return-object v0
.end method

.method t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->e:Ljava/lang/String;

    return-object v0
.end method

.method u()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, Lcom/mopub/mobileads/AdConfiguration;->f:I

    return v0
.end method

.method v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 259
    const-string v0, "Android"

    return-object v0
.end method

.method w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/mopub/mobileads/AdConfiguration;->a:Ljava/lang/String;

    return-object v0
.end method
