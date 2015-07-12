.class public Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private activeImageResourceId:I

.field private description:Ljava/lang/String;

.field private id:I

.field private imageResourceId:I

.field private max:I

.field private percent:I

.field private rewards:I

.field private status:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public getActiveImageResourceId()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->activeImageResourceId:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->id:I

    return v0
.end method

.method public getImageResourceId()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->imageResourceId:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->max:I

    return v0
.end method

.method public getPercent()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->percent:I

    return v0
.end method

.method public getRewards()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->rewards:I

    return v0
.end method

.method public getStatus()Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->status:Lcom/etermax/gamescommon/datasource/dto/AchievementDTO$Status;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->title:Ljava/lang/String;

    return-object v0
.end method

.method public setActiveImageResourceId(I)V
    .locals 0
    .parameter

    .prologue
    .line 95
    iput p1, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->activeImageResourceId:I

    .line 96
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 46
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->description:Ljava/lang/String;

    .line 47
    return-void
.end method

.method public setImageResourceId(I)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput p1, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->imageResourceId:I

    .line 102
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/etermax/gamescommon/datasource/dto/AchievementDTO;->title:Ljava/lang/String;

    .line 40
    return-void
.end method
