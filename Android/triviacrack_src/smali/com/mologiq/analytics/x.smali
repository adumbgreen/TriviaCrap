.class final enum Lcom/mologiq/analytics/x;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mologiq/analytics/x;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/mologiq/analytics/x;

.field public static final enum b:Lcom/mologiq/analytics/x;

.field public static final enum c:Lcom/mologiq/analytics/x;

.field private static final synthetic d:[Lcom/mologiq/analytics/x;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/mologiq/analytics/x;

    const-string v1, "REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/mologiq/analytics/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mologiq/analytics/x;->a:Lcom/mologiq/analytics/x;

    new-instance v0, Lcom/mologiq/analytics/x;

    const-string v1, "IMPRESSION"

    invoke-direct {v0, v1, v3}, Lcom/mologiq/analytics/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mologiq/analytics/x;->b:Lcom/mologiq/analytics/x;

    new-instance v0, Lcom/mologiq/analytics/x;

    const-string v1, "CLICK"

    invoke-direct {v0, v1, v4}, Lcom/mologiq/analytics/x;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/mologiq/analytics/x;->c:Lcom/mologiq/analytics/x;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mologiq/analytics/x;

    sget-object v1, Lcom/mologiq/analytics/x;->a:Lcom/mologiq/analytics/x;

    aput-object v1, v0, v2

    sget-object v1, Lcom/mologiq/analytics/x;->b:Lcom/mologiq/analytics/x;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mologiq/analytics/x;->c:Lcom/mologiq/analytics/x;

    aput-object v1, v0, v4

    sput-object v0, Lcom/mologiq/analytics/x;->d:[Lcom/mologiq/analytics/x;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mologiq/analytics/x;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/mologiq/analytics/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mologiq/analytics/x;

    return-object v0
.end method

.method public static values()[Lcom/mologiq/analytics/x;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/mologiq/analytics/x;->d:[Lcom/mologiq/analytics/x;

    array-length v1, v0

    new-array v2, v1, [Lcom/mologiq/analytics/x;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
