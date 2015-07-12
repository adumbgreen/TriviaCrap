.class public final enum Lcom/etermax/adsinterface/a/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/etermax/adsinterface/a/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/etermax/adsinterface/a/b;

.field public static final enum b:Lcom/etermax/adsinterface/a/b;

.field private static final synthetic c:[Lcom/etermax/adsinterface/a/b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 259
    new-instance v0, Lcom/etermax/adsinterface/a/b;

    const-string v1, "RICH_MEDIA"

    invoke-direct {v0, v1, v2}, Lcom/etermax/adsinterface/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/adsinterface/a/b;->a:Lcom/etermax/adsinterface/a/b;

    new-instance v0, Lcom/etermax/adsinterface/a/b;

    const-string v1, "IMAGE"

    invoke-direct {v0, v1, v3}, Lcom/etermax/adsinterface/a/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/etermax/adsinterface/a/b;->b:Lcom/etermax/adsinterface/a/b;

    .line 258
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/etermax/adsinterface/a/b;

    sget-object v1, Lcom/etermax/adsinterface/a/b;->a:Lcom/etermax/adsinterface/a/b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/etermax/adsinterface/a/b;->b:Lcom/etermax/adsinterface/a/b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/etermax/adsinterface/a/b;->c:[Lcom/etermax/adsinterface/a/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 258
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/etermax/adsinterface/a/b;
    .locals 1
    .parameter

    .prologue
    .line 258
    const-class v0, Lcom/etermax/adsinterface/a/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/etermax/adsinterface/a/b;

    return-object v0
.end method

.method public static values()[Lcom/etermax/adsinterface/a/b;
    .locals 1

    .prologue
    .line 258
    sget-object v0, Lcom/etermax/adsinterface/a/b;->c:[Lcom/etermax/adsinterface/a/b;

    invoke-virtual {v0}, [Lcom/etermax/adsinterface/a/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/etermax/adsinterface/a/b;

    return-object v0
.end method
