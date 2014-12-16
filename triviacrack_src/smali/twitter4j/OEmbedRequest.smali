.class public final Ltwitter4j/OEmbedRequest;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x677263dd4692eabdL


# instance fields
.field private align:Ltwitter4j/OEmbedRequest$Align;

.field private hideMedia:Z

.field private hideThread:Z

.field private lang:Ljava/lang/String;

.field private maxWidth:I

.field private omitScript:Z

.field private related:[Ljava/lang/String;

.field private final statusId:J

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    .line 33
    iput-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    .line 34
    iput-boolean v1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    .line 35
    sget-object v0, Ltwitter4j/OEmbedRequest$Align;->NONE:Ltwitter4j/OEmbedRequest$Align;

    iput-object v0, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    .line 36
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 40
    iput-wide p1, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    .line 41
    iput-object p3, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    .line 42
    return-void
.end method

.method private appendParameter(Ljava/lang/String;JLjava/util/List;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    const-wide/16 v0, 0x0

    cmp-long v0, v0, p2

    if-gtz v0, :cond_0

    .line 139
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_0
    return-void
.end method

.method private appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ltwitter4j/HttpParameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 132
    if-eqz p2, :cond_0

    .line 133
    new-instance v0, Ltwitter4j/HttpParameter;

    invoke-direct {v0, p1, p2}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    :cond_0
    return-void
.end method


# virtual methods
.method public HideMedia(Z)Ltwitter4j/OEmbedRequest;
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    .line 59
    return-object p0
.end method

.method public HideThread(Z)Ltwitter4j/OEmbedRequest;
    .locals 0
    .parameter

    .prologue
    .line 67
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    .line 68
    return-object p0
.end method

.method public MaxWidth(I)Ltwitter4j/OEmbedRequest;
    .locals 0
    .parameter

    .prologue
    .line 49
    iput p1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    .line 50
    return-object p0
.end method

.method public align(Ltwitter4j/OEmbedRequest$Align;)Ltwitter4j/OEmbedRequest;
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    .line 86
    return-object p0
.end method

.method asHttpParameterArray()[Ltwitter4j/HttpParameter;
    .locals 4

    .prologue
    .line 115
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 116
    const-string v1, "id"

    iget-wide v2, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 117
    const-string v1, "url"

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 118
    const-string v1, "maxwidth"

    iget v2, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;JLjava/util/List;)V

    .line 119
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "hide_media"

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "hide_thread"

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "omit_script"

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v1, Ltwitter4j/HttpParameter;

    const-string v2, "align"

    iget-object v3, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v3}, Ltwitter4j/OEmbedRequest$Align;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ltwitter4j/HttpParameter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_0

    .line 124
    const-string v1, "related"

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v2}, Ltwitter4j/StringUtil;->join([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 126
    :cond_0
    const-string v1, "lang"

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v0}, Ltwitter4j/OEmbedRequest;->appendParameter(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 127
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ltwitter4j/HttpParameter;

    .line 128
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ltwitter4j/HttpParameter;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 145
    if-ne p0, p1, :cond_1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 146
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

    .line 148
    :cond_3
    check-cast p1, Ltwitter4j/OEmbedRequest;

    .line 150
    iget-boolean v2, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    iget-boolean v3, p1, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    if-eq v2, v3, :cond_4

    move v0, v1

    goto :goto_0

    .line 151
    :cond_4
    iget-boolean v2, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    iget-boolean v3, p1, Ltwitter4j/OEmbedRequest;->hideThread:Z

    if-eq v2, v3, :cond_5

    move v0, v1

    goto :goto_0

    .line 152
    :cond_5
    iget v2, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    iget v3, p1, Ltwitter4j/OEmbedRequest;->maxWidth:I

    if-eq v2, v3, :cond_6

    move v0, v1

    goto :goto_0

    .line 153
    :cond_6
    iget-boolean v2, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    iget-boolean v3, p1, Ltwitter4j/OEmbedRequest;->omitScript:Z

    if-eq v2, v3, :cond_7

    move v0, v1

    goto :goto_0

    .line 154
    :cond_7
    iget-wide v2, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    iget-wide v4, p1, Ltwitter4j/OEmbedRequest;->statusId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    move v0, v1

    goto :goto_0

    .line 155
    :cond_8
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    if-eq v2, v3, :cond_9

    move v0, v1

    goto :goto_0

    .line 156
    :cond_9
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-eqz v2, :cond_b

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_c

    :cond_a
    move v0, v1

    goto :goto_0

    :cond_b
    iget-object v2, p1, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-nez v2, :cond_a

    .line 157
    :cond_c
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    move v0, v1

    goto :goto_0

    .line 158
    :cond_d
    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    iget-object v3, p1, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_e
    iget-object v2, p1, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 165
    iget-wide v3, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    iget-wide v5, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    const/16 v0, 0x20

    ushr-long/2addr v5, v0

    xor-long/2addr v3, v5

    long-to-int v0, v3

    .line 166
    mul-int/lit8 v3, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    add-int/2addr v0, v3

    .line 167
    mul-int/lit8 v0, v0, 0x1f

    iget v3, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    add-int/2addr v0, v3

    .line 168
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_1
    add-int/2addr v0, v3

    .line 169
    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_2
    add-int/2addr v0, v3

    .line 170
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    if-eqz v3, :cond_4

    :goto_3
    add-int/2addr v0, v2

    .line 171
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    if-eqz v0, :cond_5

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v0}, Ltwitter4j/OEmbedRequest$Align;->hashCode()I

    move-result v0

    :goto_4
    add-int/2addr v0, v2

    .line 172
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    if-eqz v0, :cond_6

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    :goto_5
    add-int/2addr v0, v2

    .line 173
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    .line 174
    return v0

    :cond_1
    move v0, v1

    .line 166
    goto :goto_0

    :cond_2
    move v0, v1

    .line 168
    goto :goto_1

    :cond_3
    move v0, v1

    .line 169
    goto :goto_2

    :cond_4
    move v2, v1

    .line 170
    goto :goto_3

    :cond_5
    move v0, v1

    .line 171
    goto :goto_4

    :cond_6
    move v0, v1

    .line 172
    goto :goto_5
.end method

.method public lang(Ljava/lang/String;)Ltwitter4j/OEmbedRequest;
    .locals 0
    .parameter

    .prologue
    .line 103
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    .line 104
    return-object p0
.end method

.method public omitScript(Z)Ltwitter4j/OEmbedRequest;
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    .line 77
    return-object p0
.end method

.method public related([Ljava/lang/String;)Ltwitter4j/OEmbedRequest;
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 95
    return-object p0
.end method

.method public setAlign(Ltwitter4j/OEmbedRequest$Align;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    .line 82
    return-void
.end method

.method public setHideMedia(Z)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    .line 55
    return-void
.end method

.method public setHideThread(Z)V
    .locals 0
    .parameter

    .prologue
    .line 63
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    .line 64
    return-void
.end method

.method public setLang(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter

    .prologue
    .line 45
    iput p1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    .line 46
    return-void
.end method

.method public setOmitScript(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    iput-boolean p1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    .line 73
    return-void
.end method

.method public setRelated([Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    .line 91
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/16 v3, 0x27

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OEmbedRequest{statusId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Ltwitter4j/OEmbedRequest;->statusId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", maxWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Ltwitter4j/OEmbedRequest;->maxWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideMedia="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideMedia:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", hideThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->hideThread:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", omitScript="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Ltwitter4j/OEmbedRequest;->omitScript:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", align="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->align:Ltwitter4j/OEmbedRequest$Align;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", related="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", lang=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/OEmbedRequest;->lang:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Ltwitter4j/OEmbedRequest;->related:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method
