.class public Lcom/inmobi/commons/internal/ApiStatCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Lcom/inmobi/commons/metric/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 16
    new-instance v0, Lcom/inmobi/commons/metric/Logger;

    const/4 v1, 0x3

    const-string v2, "apiStats"

    new-instance v3, Lcom/inmobi/commons/internal/c;

    invoke-direct {v3}, Lcom/inmobi/commons/internal/c;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/commons/metric/Logger;-><init>(ILjava/lang/String;Lcom/inmobi/commons/metric/Storage$PreProcessor;)V

    sput-object v0, Lcom/inmobi/commons/internal/ApiStatCollector;->a:Lcom/inmobi/commons/metric/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method public static getLogger()Lcom/inmobi/commons/metric/Logger;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Lcom/inmobi/commons/internal/ApiStatCollector;->a:Lcom/inmobi/commons/metric/Logger;

    return-object v0
.end method
