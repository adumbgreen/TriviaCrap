.class public Lcom/etermax/gamescommon/f/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/j256/ormlite/table/DatabaseTable;
    tableName = "NotificationsCache"
.end annotation


# instance fields
.field private a:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        allowGeneratedIdInsert = true
        columnName = "_id"
        generatedId = true
    .end annotation
.end field

.field private b:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        canBeNull = false
        columnName = "notificationId"
        uniqueCombo = true
    .end annotation
.end field

.field private c:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "gameId"
        uniqueCombo = true
    .end annotation
.end field

.field private d:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "userId"
        uniqueCombo = true
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "username"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "bigPictureUrl"
    .end annotation
.end field

.field private g:Ljava/lang/Integer;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "messageId"
        uniqueCombo = true
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "message"
    .end annotation
.end field

.field private i:Ljava/lang/String;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "stackedMessage"
    .end annotation
.end field

.field private j:Ljava/lang/Long;
    .annotation runtime Lcom/j256/ormlite/field/DatabaseField;
        columnName = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    return-void
.end method


# virtual methods
.method public a(Landroid/text/SpannableString;)Lcom/etermax/gamescommon/f/b/b;
    .locals 1
    .parameter

    .prologue
    .line 144
    if-eqz p1, :cond_0

    .line 145
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->h:Ljava/lang/String;

    .line 149
    :goto_0
    return-object p0

    .line 147
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->h:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/lang/Integer;)Lcom/etermax/gamescommon/f/b/b;
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/b;->b:Ljava/lang/Integer;

    .line 83
    return-object p0
.end method

.method public a(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/b;->c:Ljava/lang/Long;

    .line 92
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/etermax/gamescommon/f/b/b;
    .locals 0
    .parameter

    .prologue
    .line 109
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/b;->e:Ljava/lang/String;

    .line 110
    return-object p0
.end method

.method public a()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->b:Ljava/lang/Integer;

    return-object v0
.end method

.method public a(Lcom/etermax/gamescommon/f/b/b;)V
    .locals 1
    .parameter

    .prologue
    .line 57
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->b:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->b:Ljava/lang/Integer;

    .line 58
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->c:Ljava/lang/Long;

    .line 59
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->d:Ljava/lang/Long;

    .line 60
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->e:Ljava/lang/String;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->e:Ljava/lang/String;

    .line 61
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->f:Ljava/lang/String;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->f:Ljava/lang/String;

    .line 62
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->g:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->g:Ljava/lang/Integer;

    .line 63
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->h:Ljava/lang/String;

    .line 64
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->i:Ljava/lang/String;

    .line 65
    iget-object v0, p1, Lcom/etermax/gamescommon/f/b/b;->j:Ljava/lang/Long;

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->j:Ljava/lang/Long;

    .line 66
    return-void
.end method

.method public b(Landroid/text/SpannableString;)Lcom/etermax/gamescommon/f/b/b;
    .locals 1
    .parameter

    .prologue
    .line 160
    if-eqz p1, :cond_0

    .line 161
    invoke-static {p1}, Landroid/text/Html;->toHtml(Landroid/text/Spanned;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->i:Ljava/lang/String;

    .line 165
    :goto_0
    return-object p0

    .line 163
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method public b(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;
    .locals 0
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/b;->d:Ljava/lang/Long;

    .line 101
    return-object p0
.end method

.method public b(Ljava/lang/String;)Lcom/etermax/gamescommon/f/b/b;
    .locals 0
    .parameter

    .prologue
    .line 124
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/b;->f:Ljava/lang/String;

    .line 125
    return-object p0
.end method

.method public b()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->c:Ljava/lang/Long;

    return-object v0
.end method

.method public b(Ljava/lang/Integer;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/b;->g:Ljava/lang/Integer;

    .line 134
    return-void
.end method

.method public c(Ljava/lang/Long;)Lcom/etermax/gamescommon/f/b/b;
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/etermax/gamescommon/f/b/b;->j:Ljava/lang/Long;

    .line 174
    return-object p0
.end method

.method public c()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->d:Ljava/lang/Long;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->g:Ljava/lang/Integer;

    return-object v0
.end method

.method public g()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->h:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 140
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Landroid/text/SpannableString;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-static {v0}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 156
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/etermax/gamescommon/f/b/b;->j:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NotificationsCache [id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", notificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", gameId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->d:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", username="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", bigPictureUrl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", messageId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->g:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stackedMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/etermax/gamescommon/f/b/b;->j:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
