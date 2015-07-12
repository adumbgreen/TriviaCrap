.class public Lcom/etermax/gamescommon/b/aq;
.super Lcom/etermax/gamescommon/b/w;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/etermax/gamescommon/b/w;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 13
    const-string v0, "sent_FB_gift_notification"

    return-object v0
.end method

.method public a(I)V
    .locals 2
    .parameter

    .prologue
    .line 20
    const-string v0, "friends"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/etermax/gamescommon/b/aq;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    return-void
.end method
