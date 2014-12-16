.class public Lcom/etermax/adsinterface/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Lcom/etermax/adsinterface/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/adsinterface/f;->a:Lcom/etermax/adsinterface/d;

    return-void
.end method

.method public static a()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/adsinterface/f;->a:Lcom/etermax/adsinterface/d;

    .line 19
    return-void
.end method

.method public static a(Lcom/etermax/adsinterface/d;)V
    .locals 0
    .parameter

    .prologue
    .line 14
    sput-object p0, Lcom/etermax/adsinterface/f;->a:Lcom/etermax/adsinterface/d;

    .line 15
    return-void
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/etermax/adsinterface/f;->a:Lcom/etermax/adsinterface/d;

    if-eqz v0, :cond_0

    .line 23
    sget-object v0, Lcom/etermax/adsinterface/f;->a:Lcom/etermax/adsinterface/d;

    invoke-interface {v0}, Lcom/etermax/adsinterface/d;->a()V

    .line 25
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/etermax/adsinterface/f;->a:Lcom/etermax/adsinterface/d;

    .line 26
    return-void
.end method
