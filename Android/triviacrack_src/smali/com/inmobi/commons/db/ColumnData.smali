.class public Lcom/inmobi/commons/db/ColumnData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/inmobi/commons/db/ColumnData$ColumnType;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean v0, p0, Lcom/inmobi/commons/db/ColumnData;->a:Z

    .line 8
    iput-boolean v0, p0, Lcom/inmobi/commons/db/ColumnData;->b:Z

    .line 9
    iput-boolean v0, p0, Lcom/inmobi/commons/db/ColumnData;->c:Z

    return-void
.end method


# virtual methods
.method public getDataType()Lcom/inmobi/commons/db/ColumnData$ColumnType;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lcom/inmobi/commons/db/ColumnData;->d:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    return-object v0
.end method

.method public isAutoIncrement()Z
    .locals 1

    .prologue
    .line 24
    iget-boolean v0, p0, Lcom/inmobi/commons/db/ColumnData;->b:Z

    return v0
.end method

.method public isMandatory()Z
    .locals 1

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/inmobi/commons/db/ColumnData;->c:Z

    return v0
.end method

.method public isPrimaryKey()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/inmobi/commons/db/ColumnData;->a:Z

    return v0
.end method

.method public setAutoIncrement(Z)V
    .locals 0
    .parameter

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/inmobi/commons/db/ColumnData;->b:Z

    .line 28
    return-void
.end method

.method public setDataType(Lcom/inmobi/commons/db/ColumnData$ColumnType;)V
    .locals 0
    .parameter

    .prologue
    .line 15
    iput-object p1, p0, Lcom/inmobi/commons/db/ColumnData;->d:Lcom/inmobi/commons/db/ColumnData$ColumnType;

    .line 16
    return-void
.end method

.method public setMandatory(Z)V
    .locals 0
    .parameter

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/inmobi/commons/db/ColumnData;->c:Z

    .line 34
    return-void
.end method

.method public setPrimaryKey(Z)V
    .locals 0
    .parameter

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/inmobi/commons/db/ColumnData;->a:Z

    .line 22
    return-void
.end method
