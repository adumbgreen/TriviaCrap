.class Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Ltwitter4j/HttpClientConfiguration;


# static fields
.field private static final serialVersionUID:J = 0x722bb3271b80bc82L


# instance fields
.field private gzipEnabled:Z

.field private httpConnectionTimeout:I

.field private httpProxyHost:Ljava/lang/String;

.field private httpProxyPassword:Ljava/lang/String;

.field private httpProxyPort:I

.field private httpProxyUser:Ljava/lang/String;

.field private httpReadTimeout:I

.field private prettyDebug:Z

.field final synthetic this$0:Ltwitter4j/conf/ConfigurationBase;


# direct methods
.method constructor <init>(Ltwitter4j/conf/ConfigurationBase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZZ)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 113
    iput-object p1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->this$0:Ltwitter4j/conf/ConfigurationBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    .line 105
    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    .line 106
    iput-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    .line 107
    const/4 v0, -0x1

    iput v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    .line 108
    const/16 v0, 0x4e20

    iput v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    .line 109
    const v0, 0x1d4c0

    iput v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    .line 110
    const/4 v0, 0x0

    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    .line 111
    const/4 v0, 0x1

    iput-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    .line 114
    iput-object p2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    .line 115
    iput-object p3, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    .line 116
    iput-object p4, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    .line 117
    iput p5, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    .line 118
    iput p6, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    .line 119
    iput p7, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    .line 120
    iput-boolean p8, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    .line 121
    iput-boolean p9, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    .line 122
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 176
    if-ne p0, p1, :cond_1

    .line 193
    :cond_0
    :goto_0
    return v0

    .line 177
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 179
    :cond_3
    check-cast p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;

    .line 181
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 182
    :cond_4
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 183
    :cond_5
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 184
    :cond_6
    iget v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    iget v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 185
    :cond_7
    iget-boolean v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    iget-boolean v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    if-eq v2, v3, :cond_8

    move v0, v1

    goto :goto_0

    .line 186
    :cond_8
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    if-eqz v2, :cond_a

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    :cond_9
    move v0, v1

    .line 187
    goto :goto_0

    .line 186
    :cond_a
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    if-nez v2, :cond_9

    .line 188
    :cond_b
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_c
    move v0, v1

    .line 189
    goto :goto_0

    .line 188
    :cond_d
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    if-nez v2, :cond_c

    .line 190
    :cond_e
    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    if-eqz v2, :cond_f

    iget-object v2, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 191
    goto :goto_0

    .line 190
    :cond_f
    iget-object v2, p1, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public getHttpConnectionTimeout()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    return v0
.end method

.method public getHttpProxyHost()Ljava/lang/String;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxyPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpProxyPort()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    return v0
.end method

.method public getHttpProxyUser()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpReadTimeout()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    return v0
.end method

.method public getHttpRetryCount()I
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->this$0:Ltwitter4j/conf/ConfigurationBase;

    #getter for: Ltwitter4j/conf/ConfigurationBase;->httpRetryCount:I
    invoke-static {v0}, Ltwitter4j/conf/ConfigurationBase;->access$000(Ltwitter4j/conf/ConfigurationBase;)I

    move-result v0

    return v0
.end method

.method public getHttpRetryIntervalSeconds()I
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->this$0:Ltwitter4j/conf/ConfigurationBase;

    #getter for: Ltwitter4j/conf/ConfigurationBase;->httpRetryIntervalSeconds:I
    invoke-static {v0}, Ltwitter4j/conf/ConfigurationBase;->access$100(Ltwitter4j/conf/ConfigurationBase;)I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 198
    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 199
    :goto_0
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    .line 200
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v3

    .line 201
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    add-int/2addr v0, v3

    .line 202
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    add-int/2addr v0, v3

    .line 203
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    add-int/2addr v0, v3

    .line 204
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    add-int/2addr v0, v3

    .line 205
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    if-eqz v3, :cond_4

    :goto_4
    add-int/2addr v0, v2

    .line 206
    return v0

    :cond_0
    move v0, v1

    .line 198
    goto :goto_0

    :cond_1
    move v0, v1

    .line 199
    goto :goto_1

    :cond_2
    move v0, v1

    .line 200
    goto :goto_2

    :cond_3
    move v0, v1

    .line 204
    goto :goto_3

    :cond_4
    move v2, v1

    .line 205
    goto :goto_4
.end method

.method public isGZIPEnabled()Z
    .locals 1

    .prologue
    .line 171
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    return v0
.end method

.method public isPrettyDebugEnabled()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x27

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MyHttpClientConfiguration{httpProxyHost=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyHost:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpProxyUser=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyUser:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpProxyPassword=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpProxyPort="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpProxyPort:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpConnectionTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpConnectionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", httpReadTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->httpReadTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", prettyDebug="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->prettyDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gzipEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/conf/ConfigurationBase$MyHttpClientConfiguration;->gzipEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
