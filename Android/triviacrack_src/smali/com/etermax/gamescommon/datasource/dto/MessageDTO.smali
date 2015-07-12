.class public Lcom/etermax/gamescommon/datasource/dto/MessageDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field date:Ljava/util/Date;

.field message:Ljava/lang/String;

.field reason:Ljava/lang/String;

.field source_application:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

.field type:Ljava/lang/String;

.field user_id:Ljava/lang/Long;

.field user_to_mention:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getParsedDate()Ljava/util/Date;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->date:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 97
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->date:Ljava/util/Date;

    goto :goto_0
.end method

.method public getReason()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->reason:Ljava/lang/String;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EndedReason;

    move-result-object v0

    return-object v0
.end method

.method public getSourceApplication()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->source_application:Lcom/etermax/gamescommon/datasource/dto/MessageDTO$Application;

    return-object v0
.end method

.method public getType()Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->type:Ljava/lang/String;

    invoke-static {v0}, Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;->get(Ljava/lang/String;)Lcom/etermax/gamescommon/datasource/dto/MessageDTO$EventType;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->user_id:Ljava/lang/Long;

    if-nez v0, :cond_0

    .line 113
    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->user_id:Ljava/lang/Long;

    goto :goto_0
.end method

.method public getUser_to_mention()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->user_to_mention:Ljava/lang/Long;

    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 78
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/MessageDTO;->message:Ljava/lang/String;

    .line 79
    return-void
.end method
