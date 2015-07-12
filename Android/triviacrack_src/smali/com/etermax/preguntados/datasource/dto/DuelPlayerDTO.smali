.class public Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;
.super Lcom/etermax/preguntados/datasource/dto/PregUserDTO;
.source "SourceFile"


# instance fields
.field private correct_answers:I

.field private finish_time:J

.field private me:Z

.field private rewards:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/RewardDTO;",
            ">;"
        }
    .end annotation
.end field

.field private status:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/etermax/preguntados/datasource/dto/PregUserDTO;-><init>()V

    return-void
.end method


# virtual methods
.method public getCorrectAnswers()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->correct_answers:I

    return v0
.end method

.method public getFinishTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->finish_time:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getFacebook_name()Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getVisibleUsername()Ljava/lang/String;

    move-result-object v0

    .line 50
    :cond_0
    return-object v0
.end method

.method public getRewards()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/etermax/preguntados/datasource/dto/RewardDTO;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->rewards:Ljava/util/List;

    return-object v0
.end method

.method public getStatus()Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->status:Lcom/etermax/preguntados/datasource/dto/enums/DuelGamePlayerStatus;

    return-object v0
.end method

.method public isFbShowPicture()Z
    .locals 1

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->getFacebook_id()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMe()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/etermax/preguntados/datasource/dto/DuelPlayerDTO;->me:Z

    return v0
.end method
