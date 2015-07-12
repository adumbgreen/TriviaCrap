.class public Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private friendsPanelChatsTTL:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fp_chats_ttl"
    .end annotation
.end field

.field private friendsPanelFriendsTTL:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fp_friends_ttl"
    .end annotation
.end field

.field private suggestedMaxSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "suggested_max_size"
    .end annotation
.end field

.field private version:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/16 v0, 0x12c

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput v0, p0, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->friendsPanelFriendsTTL:I

    .line 11
    iput v0, p0, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->friendsPanelChatsTTL:I

    .line 13
    const/16 v0, 0x258

    iput v0, p0, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->suggestedMaxSize:I

    return-void
.end method


# virtual methods
.method public getFriendsPanelChatsTTL()I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->friendsPanelChatsTTL:I

    return v0
.end method

.method public getFriendsPanelFriendsTTL()I
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->friendsPanelFriendsTTL:I

    return v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/etermax/gamescommon/datasource/dto/AppConfigDTO;->version:I

    return v0
.end method
